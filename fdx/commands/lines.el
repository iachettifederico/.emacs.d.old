;;;###autoload
(defun fdx/open-line-below ()
  "Open an empty line above the current one and move."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

;;;###autoload
(defun fdx/open-line-above ()
  "Open an empty line above the current one and move."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))
