;;; livemarkup.el --- Live asciidoc, org preview -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2016 Mola-T, 2019 dawsers
;; Authors: Mola-T <Mola@molamola.xyz>, dawsers
;; URL: https://github.com/dawsers/livemarkup
;; Version: 1.0.0
;; Keywords: asciidoc, org-mode, convenience
;;
;;; License:
;; This file is NOT part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.
;;
;;; Commentary:
;;
;; livemarkup is a on the fly preview package for asciidoc and org
;; markup formats.
;; It is super, super, super easy to use.
;; Open an asciidoc or org-mode file, M-x livemarkup-track-{org,asciidoc}
;; The markup file opens in your favorite browser.
;; When you finish, close the browser page and kill the markup buffer.
;; If you want to untrack a buffer without killing it, M-x livemarkup-untrack
;;
;; Please go https://github.com/dawsers/livemarkup for more info
;;
;;; code:
(require 'browse-url)
(require 'ox)
(require 'ox-html)

(defgroup livemarkup nil
  "Group for livemarkup"
  :group 'asciidoc
  :group 'org-mode
  :group 'convenience)

(defcustom livemarkup-refresh-interval 1.5
  "Time to refresh the output."
  :group 'livemarkup
  :type 'number)

(defcustom livemarkup-browser-open-function nil
  "Function used to open the browser.
It needs to accept one string argument which is the url.
If it is not defined, `browse-url-default-browser' is used."
  :group 'livemarkup
  :type 'function)

(defcustom livemarkup-output-directory nil
  "The directory where livemarkup output files will be stored.
If nil, the working directory of the tracked file is used."
  :group 'livemarkup
  :type 'directory)

(defcustom livemarkup-close-buffer-delete-temp-files nil
  "If this is non-nil, livemarkup.html will be deleted upon tracked buffer killed."
  :group 'livemarkup
  :type 'boolean)

(defconst livemarkup-preview-html-filename "livemarkup.html"
  "File name for livemarkup html.")

(defconst livemarkup-html-buffer " livemarkup-html-buffer"
  "Buffer name for livemarkup html buffer.")

(defconst livemarkup-point-identifier "lIvEmArKUp-mAkEr"
  "Insert this at point to help auto scroll.")

(defvar livemarkup-timer nil
  "Store the livemarkup timer.")

(defvar livemarkup-buffer-list nil
  "Store the tracked documents.")

;;;###autoload
(defun livemarkup-track-org ()
  "Enable realtime org preview on the current buffer."
  (interactive)
  (livemarkup-track 'org))

(defun livemarkup-track-asciidoc ()
  "Enable realtime asciidoc preview on the current buffer."
  (interactive)
  (livemarkup-track 'asciidoc))

(defun livemarkup-untrack ()
  "Untrack a livemarkup buffer in `livemarkup-buffer-list'."
  (interactive)
  (when (buffer-file-name)
    (setq livemarkup-buffer-list (remq (current-buffer) livemarkup-buffer-list))
    (livemarkup-delete-file-maybe (livemarkup-get-output-directory (current-buffer)))
    (unless livemarkup-buffer-list
      (when (timerp livemarkup-timer)
        (cancel-timer livemarkup-timer))
      (setq livemarkup-timer nil))))

(defun livemarkup-track (language)
  "Enable realtime preview on the current markup LANGUAGE buffer."
  (let ((working-buffer (current-buffer))
        (working-point (point)))
    (livemarkup-generate-data language working-buffer working-point)
    (livemarkup-open-browser working-buffer)
    (unless livemarkup-timer
      (setq livemarkup-timer (run-with-idle-timer livemarkup-refresh-interval t 'livemarkup-generate-data language)))
    (cl-pushnew working-buffer livemarkup-buffer-list :test 'eq)
    (add-hook 'kill-buffer-hook #'livemarkup-untrack t)))

(defun livemarkup-generate-data (language &optional buffer point)
  "Save working LANGUAGE file from BUFFER to livemarkup-data.html and add identifier to POINT."
  (when (or buffer (memq (current-buffer) livemarkup-buffer-list))
    (setq buffer (or buffer (current-buffer)))
    (setq point (or point (point)))
    (with-temp-buffer
      (insert-buffer-substring-no-properties buffer)
      (goto-char point)
      (when (string-match-p "\\````" (or (thing-at-point 'line t) ""))
        (forward-line))
      (end-of-line)
      (insert livemarkup-point-identifier)
      ;; Convert to HTML
      (let ((livemarkup-export (generate-new-buffer livemarkup-html-buffer)))
        (pcase language
          ('org
           (setq org-export-show-temporary-export-buffer nil)
           (org-export-to-buffer 'html livemarkup-export))

          ('asciidoc
           (call-shell-region (point-min) (point-max) "asciidoctor - " nil livemarkup-export)))

        (with-current-buffer livemarkup-export
          ;; Replace marker for cursor position
          (goto-char (point-min))
          (while (re-search-forward livemarkup-point-identifier nil t)
            (replace-match  "<span id=\"livemarkup-marker\"></span>"))
          ;; Insert livemark.js
          (goto-char (point-min))
          (while (re-search-forward "</head>" nil t)
            (replace-match (format "<script>window.onload = function() { var marker = document.getElementById(\"livemarkup-marker\"); if (marker != null && marker.length != 0) { window.scrollTo(0, marker.offsetTop - window.innerHeight / 2); } setTimeout(function(){ window.location.reload(); }, %d); };</script>\n</head>" (* 1000 livemarkup-refresh-interval))))
          (write-region (point-min) (point-max)
                        (concat (livemarkup-get-output-directory buffer)
                                livemarkup-preview-html-filename)))
        (kill-buffer livemarkup-export)))))


(defun livemarkup-open-browser (&optional buffer)
  "Open the browser with the livemarkup.html if BUFFER succeeded converting to livemarkup-data.html."
  (let ((livemarkup-preview-file
         (concat (livemarkup-get-output-directory buffer)
                 livemarkup-preview-html-filename)))
    (if (file-readable-p livemarkup-preview-file)
        (if livemarkup-browser-open-function
            (funcall livemarkup-browser-open-function livemarkup-preview-file)
          (browse-url livemarkup-preview-file))
      (error "Oops! livemarkup cannot create preview livemarkup.html"))))


(defun livemarkup-delete-file-maybe (path)
  "Delete livemarkup temp files under PATH if they exist."
  (when livemarkup-close-buffer-delete-temp-files
    (when (file-exists-p (concat path livemarkup-preview-html-filename))
      (delete-file (concat path livemarkup-preview-html-filename)))))

(defun livemarkup-get-output-directory (buffer)
  "Gets the correct output directory for livemarkup preview files of BUFFER."
  (if livemarkup-output-directory
      (let ((output-dir (file-name-as-directory
                         (concat (file-name-as-directory livemarkup-output-directory)
                                 (secure-hash 'md5 (buffer-file-name buffer))))))
        (make-directory output-dir t)
        output-dir)
    (file-name-directory (buffer-file-name buffer))))

(provide 'livemarkup)
;;; livemarkup.el ends here
