;; Change scratch buffer to ruby-mode
(setq initial-major-mode 'enh-ruby-mode)
;(setq initial-scratch-message )

(with-current-buffer "*scratch*"
  (insert "RUBY_VERSION  # =>\n")
  (if (fboundp 'xmp)
      (xmp)))
