;;;###autoload
(defun fdx/ag-or-projectile-ag (&optional a b)
  (interactive)
  (if (projectile-project-p)
      (call-interactively #'projectile-ag)
    (call-interactively #'ag)))
