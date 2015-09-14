;;;###autoload
(defun fdx/global-set-key (key command)
  "Unset and re-set a keybinding"
  (global-unset-key key)
  (global-set-key key command))
