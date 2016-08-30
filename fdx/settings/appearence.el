(setq fdx/current-font-size 120)

;; (custom-set-faces
;;  '(default ((t (:family "Monaco"
;;                         :foundry "unknown"
;;                         :slant normal
;;                         :weight normal
;;                         :height 125
;;                         :width normal)))))

;; (custom-set-faces
;;  '(default ((t (:family "Source Code Pro"
;;                         :foundry "unknown"
;;                         :slant normal
;;                         :weight normal
;;                         :height 120
;;                         :width normal)))))

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

;;(require 'color-theme-ir-black)
;;(color-theme-ir-black)
