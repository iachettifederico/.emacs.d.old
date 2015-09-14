(require 'yasnippet)
(setq yas-snippet-dirs
      (list (expand-file-name "fdx/snippets" user-emacs-directory)))

(yas-global-mode)

(setq yas-prompt-functions '(yas/ido-prompt))

(defvar adhoc-snippet-last nil)

(defun adhoc-snippet-create (begin end)
  (interactive "r")
  (let* ((text (concat
                (buffer-substring-no-properties begin end)
                ;; "$0" is required as an exit marker
                "$0")))
    (setq adhoc-snippet-last text)
    ;; a lot of crazy things break if we don't turn this on
    (yas-minor-mode 1)
    (yas-expand-snippet text begin end)))

(defun adhoc-snippet-insert ()
  (interactive)
  ;; a lot of crazy things break if we don't turn this on
  (yas-minor-mode 1)
  (yas-expand-snippet adhoc-snippet-last))

(provide 'jasper-snippet)
