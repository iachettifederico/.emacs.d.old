(fdx/local-set-key (kbd "C-c C-a") 'org-agenda)

(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)

(whitespace-cleanup-mode)

(fdx/local-set-key (kbd "C-c t t") 'tapas/populate-tapas-shots)
(fdx/local-set-key (kbd "C-c t r") 'tapas/tapas-shots)
(fdx/local-set-key (kbd "C-c t e") 'tapas/insert-episode-link)
