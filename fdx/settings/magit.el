;; full screen magit-status
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(custom-set-variables
'(git-commit-fill-column 1000)
'(git-commit-finish-query-functions nil)
'(git-commit-summary-max-length 1000))

(setq magit-completing-read-function 'magit-ido-completing-read)
