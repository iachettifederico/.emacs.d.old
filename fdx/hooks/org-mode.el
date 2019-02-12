(local-set-key (kbd "C-c C-a") 'org-agenda)

(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)

(whitespace-cleanup-mode)

(local-set-key (kbd "C-c t t") 'tapas/populate-tapas-shots)
(local-set-key (kbd "C-c t r") 'tapas/tapas-shots)
(local-set-key (kbd "C-c t e") 'tapas/insert-episode-link)

(local-set-key (kbd "H-=") 'fdx/reindent-buffer)

(toggle-word-wrap t)
(flyspell-mode t)
(flyspell-buffer)

(org-bullets-mode 1)

(hl-line-mode t)
