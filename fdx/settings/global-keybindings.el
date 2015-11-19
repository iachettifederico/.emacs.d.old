;; Menu
(fdx/global-set-key (kbd "M-x") 'smex)

;; Magit
(fdx/global-set-key (kbd "C-c g") 'magit-status)

;; Yasnippet
(fdx/global-set-key (kbd "<f7>") 'fdx/recompile-snippets)

;; Text
(fdx/global-set-key (kbd "M--") 'kill-whole-line)
(fdx/global-set-key (kbd "M-d") 'fdx/duplicate-line)

(fdx/global-set-key (kbd "<M-down>") 'fdx/move-line-down)
(fdx/global-set-key (kbd "<M-up>") 'fdx/move-line-up)

(fdx/global-set-key (kbd "C-c i") 'align-regexp)

;; Buffers
(fdx/global-set-key (kbd "C-x C-r") 'fdx/rename-current-buffer-file)
(fdx/global-set-key (kbd "C-x C-k") 'fdx/delete-current-buffer-file)

(fdx/global-set-key (kbd "C-c k") 'fdx/kill-other-buffers)
(fdx/global-set-key (kbd "C-x C-w") (lambda () (interactive) (switch-to-buffer "*scratch*")))

;; Multiple cursors
(fdx/global-set-key (kbd "C-M-<return>") 'mc/edit-lines)
(fdx/global-set-key (kbd "C-c C-a") 'mc/edit-lines)
(fdx/global-set-key (kbd "C-c a") 'mc/mark-all-like-this)

(fdx/global-set-key (kbd "C->") 'mc/mark-next-like-this)
(fdx/global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

(fdx/global-set-key (kbd "C-c C-<") 'mc/mark-previous-like-this)
(fdx/global-set-key (kbd "C-c C->") 'mc/mark-next-like-this)
(fdx/global-set-key (kbd "C-x /") 'toggle-window-split)

(fdx/global-set-key (kbd "M-p") 'ace-window)

;; Navigation
(fdx/global-set-key (kbd "M-j") 'ace-jump-word-mode)
(fdx/global-set-key (kbd "M-J") 'ace-jump-char-mode)
(fdx/global-set-key (kbd "M-K") 'ace-jump-line-mode)

;; Appearence

(fdx/global-set-key (kbd "C-{") 'fdx/increase-font-size)
(fdx/global-set-key (kbd "C-}") 'fdx/decrease-font-size)
