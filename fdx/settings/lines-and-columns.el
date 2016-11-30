;;;; Show line Numbers

;; (global-linum-mode t)
;; (set-face-attribute 'linum nil :background "#191919")

(require 'nlinum)
(global-nlinum-mode t)

(setq nlinum-relative-redisplay-delay 0)        ;; delay
;; (setq nlinum-relative-current-symbol "->")   ;; or "" for display current line number
(setq nlinum-relative-offset 0)                 ;; 1 if you want 0, 2, 3...

(column-number-mode)

(global-hl-line-mode t)

(setq-default fill-column 80)
