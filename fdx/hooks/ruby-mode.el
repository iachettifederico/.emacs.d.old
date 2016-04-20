(require 'ruby-electric)
(electric-pair-mode t)

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

(require 'seeing-is-believing)
(seeing-is-believing)

(fdx/local-set-key (kbd "C-c C-c") 'xmp)
(fdx/local-set-key (kbd "C-c c") 'xmp)
(fdx/local-set-key (kbd "C-c l") 'seeing-is-believing-clear)
(fdx/local-set-key (kbd "C-;") 'comment-dwim)

(whitespace-cleanup-mode)

;; ;; Refactorings
(fdx/local-set-key (kbd "M-r l") 'fdx/refactoring/extract-let)
(fdx/local-set-key (kbd "M-r m") 'rrf-extract-method)
(fdx/local-set-key (kbd "M-r t") 'rrf-extract-temporary)
(fdx/local-set-key (kbd "M-r c") 'rrf-extract-constant)
(fdx/local-set-key (kbd "M-r i") 'fdx/refactoring/interpolate-string)
