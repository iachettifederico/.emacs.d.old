(setq fdx/current-font-size 160)

(custom-set-faces
 `(default ((t (:family "Inconsolata"
                        :foundry "unknown"
                        :slant normal
                        :weight normal
                        :height ,fdx/current-font-size
                        :width normal)))))

(show-paren-mode t)

(require 'color-theme)
(color-theme-initialize)

(color-theme-sanityinc-tomorrow-bright)

;;(require 'color-theme-ir-black)
;;(color-theme-ir-black)
