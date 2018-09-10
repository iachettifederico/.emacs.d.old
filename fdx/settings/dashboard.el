(require 'dashboard)

(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;; show Dashboard in frames created with emacsclient -c
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

;; Set the title
(setq dashboard-banner-logo-title "Emacs Dashboard")
;; Set the banner
(setq dashboard-startup-banner 'logo)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" which displays whatever image you would prefer

(setq dashboard-items '(
                        (recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        ;; (agenda . 5)
                        (registers . 5)
                        ))
