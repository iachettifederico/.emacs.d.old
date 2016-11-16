;;;###autoload
(defun lucid/update_course ()
  "Update course."
  (interactive)
  (async-shell-command (concat "lucid_course " (buffer-file-name))))
