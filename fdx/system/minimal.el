;; Idea from Ryan Davis:
;; http://blog.zenspider.com/blog/2013/06/my-emacs-setup-sanity.html

;; This file is also loaded very early in the Emacs boot sequence, so it's
;; the right place to make changes that need to be in effect even during
;; the boot sequence.

;; Set emacs configurations file
(setq custom-file (concat user-emacs-directory "fdx/system/emacs-configurations.el"))
(load custom-file)

;; move backups into .emacs.d/backups
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backups" user-emacs-directory))))

;; windmove keybindings
(windmove-default-keybindings)

;; easier confirmations
(defalias 'yes-or-no-p 'y-or-n-p)
;; hide the menu bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;; disable the splash screen
(setq inhibit-splash-screen t)
