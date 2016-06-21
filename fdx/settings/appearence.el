(setq fdx/current-font-size 120)

(custom-set-faces
 '(default ((t (:family "Inconsolata"
                        :foundry "unknown"
                        :slant normal
                        :weight normal
                        :height 120
                        :width normal)))))

(show-paren-mode t)

(require 'color-theme)
(color-theme-initialize)

(color-theme-sanityinc-tomorrow-bright)
