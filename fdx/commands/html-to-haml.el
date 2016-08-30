;;;###autoload
(defun fdx/erb-to-haml-current-buffer ()
  "run html2haml on current buffer"
  (interactive)
  (save-excursion
    (save-buffer)
    (shell-command (concat "html2haml --html-attributes --erb " (buffer-file-name)) ; " 2> /dev/null")
                   (current-buffer)
                   )))

;;;###autoload
(defun fdx/erb-to-haml-on-region (start end)
  "run html2haml on current region"
  (interactive "r")
  (save-excursion
    (let ((erb-string (concat
                       "\n<!-- FROM HERE -->\n"
                       (buffer-substring start end)
                       "\n<!-- UPTO HERE -->\n")))
      (let (
            (haml-string (shell-command-to-string (concat "echo \"" erb-string"\" |" "html2haml -s --html-attributes --erb"); " 2> /dev/null")
                                                  )))
        (delete-region start end)
        (insert haml-string)
        ) ; let 2
      ) ; let 1
    )
  )

;;;###autoload
(defun fdx/erb-to-haml ()
  "run html2haml on current region"
  (interactive)
  (message (number-to-string (region-beginning)))
  (message (number-to-string (region-end)))
  (save-excursion
    (if (region-active-p)
        (fdx/erb-to-haml-on-region (region-beginning) (region-end))
      (fdx/erb-to-haml-current-buffer))))

;; Pipe string into html2haml
;; Find a way to insert it in its place
;; echo "<h1>hola</h1>" | html2haml -s

;;;###autoload
(defun fdx/erb-to-haml-and-change-file-extension ()
  "run html2haml on current buffer"
  (interactive)
  (save-excursion
    (save-buffer)
    (shell-command (concat "html2haml --html-attributes --erb " (buffer-file-name)); " 2> /dev/null")
                   (current-buffer)
                   )
    (let ((new-name (replace-regexp-in-string "erb" "haml" (buffer-file-name))))
      (rename-file (buffer-file-name) new-name)
      (rename-buffer new-name)
      (set-visited-file-name new-name)
      (set-buffer-modified-p nil)
      )))
