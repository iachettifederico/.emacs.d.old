;; Menu
(fdx/global-set-key (kbd "M-x") 'smex)

;; Magit
(fdx/global-set-key (kbd "C-c g") 'magit-status)

;; Yasnippet
(fdx/global-set-key (kbd "<f7>") 'fdx/recompile-snippets)

;; Text
(fdx/global-set-key (kbd "M--") 'kill-whole-line)
(fdx/global-set-key (kbd "M-d") 'fdx/duplicate-line)


;; Buffers
(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

;; Multiple cursors
(fdx/global-set-key (kbd "C-M-<return>") 'mc/edit-lines)
(fdx/global-set-key (kbd "C-c C-a") 'mc/edit-lines)
(fdx/global-set-key (kbd "C-c a") 'mc/mark-all-like-this)

(fdx/global-set-key (kbd "C->") 'mc/mark-next-like-this)
(fdx/global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

(fdx/global-set-key (kbd "C-c C-<") 'mc/mark-previous-like-this)
(fdx/global-set-key (kbd "C-c C->") 'mc/mark-next-like-this)
