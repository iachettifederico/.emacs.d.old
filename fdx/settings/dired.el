;; Use the same buffer when enter a new directory on dired
;;(toggle-diredp-find-file-reuse-dir 1)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

(defun dired-back-to-top ()
  (interactive)
  (beginning-of-buffer)
  (dired-next-line 1))

(define-key dired-mode-map
  (vector 'remap 'beginning-of-buffer) 'dired-back-to-top)

(defun dired-jump-to-bottom ()
  (interactive)
  (end-of-buffer)
  (dired-next-line -1))

(define-key dired-mode-map
  (vector 'remap 'end-of-buffer) 'dired-jump-to-bottom)

;;(setq dired-listing-switches "-la --group-directories-first")
(setq dired-listing-switches "-aBhl  --group-directories-first")


(require 'dired-x)
(setq-default dired-omit-files-p t) ; Buffer-local variable
(setq dired-omit-files "^\\.?#\\|^\\.$\\|^\\.[^\\.]")
(setq dired-omit-mode t) ; Turn on Omit mode.
(setq dired-omit-verbose nil) ; Turn off Omit mode messages.
