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

(local-set-key (kbd "C-c C-c") 'xmp)
(local-set-key (kbd "C-c c") 'xmp)
(local-set-key (kbd "C-;") 'comment-dwim)

(whitespace-cleanup-mode)

;; ;; Refactorings
(local-set-key (kbd "M-r l") 'fdx/refactoring/extract-let)
(local-set-key (kbd "M-r m") 'rrf-extract-method)
(local-set-key (kbd "M-r t") 'rrf-extract-temporary)
(local-set-key (kbd "M-r c") 'rrf-extract-constant)
(local-set-key (kbd "M-r i") 'fdx/refactoring/interpolate-string)
