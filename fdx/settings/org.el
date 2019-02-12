(flyspell-mode 1)

(require 'htmlize)
(setq org-src-fontify-natively t)

;; Make babel results blocks lowercase
(setq org-babel-results-keyword "results")

(setq org-export-html-postamble nil)

(setq org-html-checkbox-type 'html)

(defvar youtube-iframe-format
  ;; You may want to change your width and height.
  (concat "<iframe width=\"440\""
          " height=\"335\""
          " src=\"https://www.youtube.com/embed/%s\""
          " frameborder=\"0\""
          " allowfullscreen>%s</iframe>"))

;;; Add YouTube Video links
;;   Usage: [[youtube:video_id]]
(org-add-link-type
 "youtube"
 (lambda (handle)
   (browse-url
    (concat "https://www.youtube.com/embed/"
            handle)))
 (lambda (path desc backend)
   (cl-case backend
     (html (format youtube-iframe-format
                   path (or desc "")))
     (latex (format "\href{%s}{%s}"
                    path (or desc "video"))))))

;;; Add Vimeo Video links
;;   Usage: [[vimeo:video_id]]
(defvar vimeo-iframe-format
  ;; You may want to change your width and height.
  (concat "<iframe src=\"https://player.vimeo.com/video/%s?title=0&byline=0&portrait=0&badge=0\" width=\"640\" height=\"360\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>"))


(org-add-link-type
 "vimeo"
 (lambda (handle)
   (browse-url
    (concat "https://www.vimeo.com/video/"
            handle)))
 (lambda (path desc backend)
   (cl-case backend
     (html (format vimeo-iframe-format
                   path (or desc "")))
     (latex (format "\href{%s}{%s}"
                    path (or desc "video"))))))

(require 'org-bullets)

'(org-clock-into-drawer "CLOCKING")

(setq org-duration-format (quote h:mm))
