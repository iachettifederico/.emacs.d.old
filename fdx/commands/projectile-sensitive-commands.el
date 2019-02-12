;;;###autoload
(defun fdx/ag-or-projectile-ag (&optional a b)
  (interactive)
  (if (projectile-project-p)
      (call-interactively #'projectile-ag)
    (call-interactively #'ag)))

;;;###autoload
(defun fdx/visit-or-projectile-visit (&optional a b)
  (interactive)
  (if (projectile-project-p)
      (call-interactively #'counsel-projectile-find-file)
    (call-interactively #'counsel-find-file)))
