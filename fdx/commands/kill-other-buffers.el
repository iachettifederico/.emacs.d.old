;;;###autoload
(defun fdx/kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (progn
        (kill-buffer buffer)
        ))
    (delete-other-windows)))
