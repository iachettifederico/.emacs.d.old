;;;###autoload
(defun erb-to-haml ()
  "run html2haml on current buffer"
  (interactive)
  (save-excursion
    (save-buffer)
    (shell-command (concat "html2haml --html-attributes --erb " (buffer-file-name) " 2> /dev/null")
                   (current-buffer)
                   )))

;; Pipe string into html2haml
;; Find a way to insert it in its place
;; echo "<h1>hola</h1>" | html2haml -s

;;;###autoload
(defun erb-to-haml-and-change-file-extension ()
  "run html2haml on current buffer"
  (interactive)
  (save-excursion
    (save-buffer)
    (shell-command (concat "html2haml --html-attributes --erb " (buffer-file-name) " 2> /dev/null")
                   (current-buffer)
                   )
    (let ((new-name (replace-regexp-in-string "erb" "haml" (buffer-file-name))))
      (rename-file (buffer-file-name) new-name)
      (rename-buffer new-name)
      (set-visited-file-name new-name)
      (set-buffer-modified-p nil)
      )))
