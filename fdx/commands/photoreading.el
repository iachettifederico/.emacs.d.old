;;;###autoload
(defun pr/photoread-project (project-name project-path)
  "Clear {{{shot(n)}}} macros on current buffer"
  (interactive
   (list
    (read-string "Project name: " )
    (read-file-name "Project path: ")
    ))
  (save-excursion
    (shell-command (concat "photoreading_project_to_org " project-path " > /tmp/" project-name ".org"))
    (progn
      (let (oldbuf (current-buffer))
        (find-file (concat "/tmp/" project-name ".org"))
        (with-current-buffer (concat project-name ".org")
          (org-odt-export-to-odt))
        (switch-to-buffer oldbuf)
        (shell-command (concat "unoconv -f pdf /tmp/" project-name ".odt"))
        (find-file (concat "/tmp/" project-name ".pdf"))
        ;; (shell-command (concat "mv /tmp/" project-name ".pdf " destination-dir "/" project-name ".pdf ."))
        ;; (shell-command (concat "rm /tmp/" project-name ".*"))
        (message "")))))
