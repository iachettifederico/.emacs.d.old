;; Idea from Ryan Davis:
;; http://blog.zenspider.com/blog/2013/06/my-emacs-setup-osx.html

;; load OS specific settings
(fdx/load-init-file (concat "fdx/system/" (symbol-name system-type)) t)

;; load system specific settings
(fdx/load-init-file (concat "fdx/system/" 
                             (car (split-string (system-name) "\\."))) t)

;; load minimal early system settings
(fdx/load-init-file "fdx/system/minimal.el")

;; load minimal early system settings
(fdx/load-init-file "fdx/system/emacs-configurations.el")
