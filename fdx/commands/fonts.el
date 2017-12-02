;;;###autoload
(defun fdx/increase-font-size (&optional by)
  "Increase Emacs font size"
  (interactive)
  (setq fdx/current-font-size (+ fdx/current-font-size (or by 5)))
  (set-face-attribute 'default nil :height fdx/current-font-size))

;;;###autoload
(defun fdx/decrease-font-size (&optional by)
  "Increase Emacs font size"
  (interactive)
  (setq fdx/current-font-size (- fdx/current-font-size (or by 5)))
  (set-face-attribute 'default nil :height fdx/current-font-size))
