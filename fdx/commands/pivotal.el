;;;###autoload
(defun fdx/pivotal-show ()
  "Show/hide story detail."
  (interactive)
  (pivotal-show)
  (force-window-update (current-buffer)))
