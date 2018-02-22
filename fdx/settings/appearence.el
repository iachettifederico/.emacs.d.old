(setq fdx/current-font-size 120)

(custom-set-faces
 `(default ((t (:family "Inconsolata"
                        :foundry "unknown"
                        :slant normal
                        :weight normal
                        :height ,fdx/current-font-size
                        :width normal)))))

(show-paren-mode t)


;;(require 'color-theme)
;;(color-theme-initialize)

;;(require 'color-theme-sanityinc-tomorrow-bright)
(color-theme-sanityinc-tomorrow-bright)
