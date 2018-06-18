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
      (call-interactively #'projectile-find-file)
    (call-interactively #'ido-find-file)))
