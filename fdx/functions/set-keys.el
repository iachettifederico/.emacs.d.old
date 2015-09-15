;;;###autoload
(defun fdx/global-set-key (key command)
  "Unset and re-set a keybinding"
  (global-unset-key key)
  (global-set-key key command))

;;;###autoload
(defun fdx/local-set-key (key command)
  "Unset and re-set a keybinding"
  (local-unset-key key)
  (local-set-key key command))
