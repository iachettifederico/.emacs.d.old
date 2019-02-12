(global-display-line-numbers-mode 1)

(column-number-mode)

(setq-default fill-column 80)
(setq highlight-indent-guides-method 'fill)

(require 'fill-column-indicator)

(setq fci-rule-width 1)
(setq fci-rule-color "grey8")

(fci-mode t)
