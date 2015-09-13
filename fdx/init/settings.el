(defun fdx/load-settings ()
  "Loads all Lisp files in the settings subdirectory of the init directory."
  (dolist (file (directory-files (concat user-emacs-directory "fdx/settings")
                                 nil
                                 "\\.el$"))
    (fdx/load-init-file (concat "fdx/settings/" file))))

(fdx/load-settings)
