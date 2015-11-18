(require 'smartparens)
(smartparens-mode)

(fdx/local-set-key (kbd "C-c C-c") 'xmp)
(fdx/local-set-key (kbd "C-;") 'comment-dwim)

;; ;; Compilation
(fdx/local-set-key (kbd "C-\\") 'recompile)
(fdx/local-set-key (kbd "M-\\") 'compile)

(defadvice comment-dwim (around rct-hack activate)
  "If comment-dwim is successively called, add => mark."
  (if (and (eq major-mode 'enh-ruby-mode)
           (eq last-command 'comment-dwim)
           ;; TODO =>check
           )
      (insert "=>")
    ad-do-it))

(setq xmpfilter-command-name "ruby -S xmpfilter --no-warnings --dev --fork --detect-rbtest")
