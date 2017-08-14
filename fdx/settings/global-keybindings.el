;; Menu
(fdx/global-set-key (kbd "M-x") 'smex)

;; Magit
(fdx/global-set-key (kbd "C-c g") 'magit-status)

;; Yasnippet
(fdx/global-set-key (kbd "<f7>") 'fdx/recompile-snippets)

;; Text
(fdx/global-set-key (kbd "H--") 'kill-whole-line)
(fdx/global-set-key (kbd "H-d") 'fdx/duplicate-line)

(fdx/global-set-key (kbd "<H-down>") 'fdx/move-line-down)
(fdx/global-set-key (kbd "<H-up>") 'fdx/move-line-up)

(fdx/global-set-key (kbd "C-c i") 'align-regexp)

(fdx/global-set-key (kbd "C-<return>") 'fdx/open-line-below)
(fdx/global-set-key (kbd "C-S-<return>") 'fdx/open-line-above)

;; Buffers
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

(fdx/global-set-key (kbd "C-a") 'crux-move-beginning-of-line)
;; Appearence
(fdx/global-set-key (kbd "M-{") 'fdx/increase-font-size)
(fdx/global-set-key (kbd "M-}") 'fdx/decrease-font-size)

(fdx/global-set-key (kbd "M-[") 'fdx/increase-font-size)
(fdx/global-set-key (kbd "M-]") 'fdx/decrease-font-size)

;; Files and directories
(fdx/global-set-key (kbd "C-x C-r") 'fdx/rename-current-buffer-file)
(fdx/global-set-key (kbd "C-x C-k") 'fdx/delete-current-buffer-file)

(fdx/global-set-key (kbd "<f8>") 'neotree-toggle)

;; Compilation
(fdx/global-set-key (kbd "H-m") 'recompile)
(fdx/global-set-key (kbd "H-b") 'compile)

;; Shells
(fdx/global-set-key (kbd "C-x m") 'eshell)

(fdx/global-set-key (kbd "H-e") 'er/expand-region)
(fdx/global-set-key (kbd "H-s") 'save-buffer)
(fdx/global-set-key (kbd "H-f") 'ido-find-file)

(fdx/global-set-key (kbd "H-g") 'ag)

(fdx/global-set-key (kbd "H-<tab>") 'yafolding-toggle-element)
(fdx/global-set-key (kbd "H-S-<tab>") 'yafolding-toggle-all)
; (fdx/global-set-key (kbd "H-iso-lefttab") 'yafolding-toggle-all)

(fdx/global-set-key (kbd "H-<left>")  'windmove-left)
(fdx/global-set-key (kbd "H-<right>") 'windmove-right)
(fdx/global-set-key (kbd "H-<up>")    'windmove-up)
(fdx/global-set-key (kbd "H-<down>")  'windmove-down)
