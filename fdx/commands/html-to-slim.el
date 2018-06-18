;;;###autoload
(defun fdx/erb-to-slim-current-buffer ()
  "run erb2slim on current buffer"
  (interactive)
  (save-excursion
    (save-buffer)
    (shell-command (concat "erb2slim " (buffer-file-name)) ; " 2> /dev/null")
                   (current-buffer)
                   )))

;;;###autoload
(defun fdx/erb-to-slim-on-region (start end)
  "run erb2slim on current region"
  (interactive "r")
  (save-excursion
    (let ((erb-string (concat
                       "\n<!-- FROM HERE -->\n"
                       (buffer-substring start end)
                       "\n<!-- UPTO HERE -->\n")))
      (let (
            (slim-string (shell-command-to-string (concat "echo \"" erb-string"\" |" "erb2slim -s "); " 2> /dev/null")
                                                  )))
        (delete-region start end)
        (insert slim-string)
        ) ; let 2
      ) ; let 1
    )
  )

;;;###autoload
(defun fdx/erb-to-slim ()
  "run erb2slim on current region"
  (interactive)
  (message (number-to-string (region-beginning)))
  (message (number-to-string (region-end)))
  (save-excursion
    (if (region-active-p)
        (fdx/erb-to-slim-on-region (region-beginning) (region-end))
      (fdx/erb-to-slim-current-buffer))))

;; Pipe string into erb2slim
;; Find a way to insert it in its place
;; echo "<h1>hola</h1>" | erb2slim -s

;;;###autoload
(defun fdx/erb-to-slim-and-change-file-extension ()
  "run erb2slim on current buffer"
  (interactive)
  (save-excursion
    (save-buffer)
    (shell-command (concat "erb2slim " (buffer-file-name)); " 2> /dev/null")
                   (current-buffer)
                   )
    (let ((new-name (replace-regexp-in-string "erb" "slim" (buffer-file-name))))
      (rename-file (buffer-file-name) new-name)
      (rename-buffer new-name)
      (set-visited-file-name new-name)
      (set-buffer-modified-p nil)
      )))
