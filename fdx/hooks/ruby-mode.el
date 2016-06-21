(require 'ruby-electric)
(electric-pair-mode t)

(defadvice comment-dwim (around rct-hack activate)
  "If comment-dwim is successively called, add => mark."
  (if (and (eq major-mode 'enh-ruby-mode)
           (eq last-command 'comment-dwim))
      (if (string= (string (preceding-char)) "#")
          (insert " =>")
        (insert "=>"))
    ad-do-it))

(setq xmpfilter-command-name
      "ruby -S seeing_is_believing --xmpfilter-style")

(fdx/local-set-key (kbd "C-c C-c") 'xmp)
(fdx/local-set-key (kbd "C-c c") 'xmp)
(fdx/local-set-key (kbd "C-;") 'comment-dwim)

(whitespace-cleanup-mode)

;; ;; Refactorings
(fdx/local-set-key (kbd "M-r l") 'fdx/refactoring/extract-let)
(fdx/local-set-key (kbd "M-r m") 'rrf-extract-method)
(fdx/local-set-key (kbd "M-r t") 'rrf-extract-temporary)
(fdx/local-set-key (kbd "M-r c") 'rrf-extract-constant)
(fdx/local-set-key (kbd "M-r i") 'fdx/refactoring/interpolate-string)
