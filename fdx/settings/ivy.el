(require 'ivy)
(require 'flx)

(ivy-mode 1)

(setq ivy-use-virtual-buffers t)

;; intentional space before end of string
(setq ivy-count-format "(%d/%d) ")
(setq ivy-initial-inputs-alist nil)

(setq ivy-re-builders-alist
      '((swiper . ivy--regex-plus)
        (t      . ivy--regex-fuzzy)))

;; Use C-j for immediate termination with the current value, and RET
;; for continuing completion for that directory. This is the ido
;; behaviour.
(define-key ivy-minibuffer-map (kbd "C-j") #'ivy-immediate-done)
(define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)
