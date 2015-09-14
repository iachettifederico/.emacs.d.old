;; Change scratch buffer to ruby-mode
(setq initial-major-mode 'enh-ruby-mode)
(setq initial-scratch-message )

(with-current-buffer "*scratch*"
  (interactive)
  (insert "RUBY_VERSION  # =>")
  (enh-ruby-mode)
  (if (fboundp 'xmp)
      (xmp)))
