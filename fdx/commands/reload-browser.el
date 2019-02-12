;;;###autoload
(defun fdx/reload-browser (&optional by)
  "Reload web browser"
  (interactive)
  (save-some-buffers)
  (save-window-excursion (async-shell-command "~/bin/reload-browser"))
  ;; (kill-buffer "*Async Shell Command*")
  )

;;;###autoload
(defun fdx/send-up-enter-to-current-window (&optional list)
  "Reload web browser"
  (interactive)
  (save-some-buffers)
  (save-window-excursion (async-shell-command "~/bin/send_to_current_window \"<Up>\" \"<Return>\""))
  ;; (kill-buffer "*Async Shell Command*")
  )

;;;###autoload
(defun fdx/set-current-window (&optional by)
  "Reload web browser"
  (interactive)
  (save-some-buffers)
  (save-window-excursion (async-shell-command "~/bin/set_current_window"))
  ;; (kill-buffer "*Async Shell Command*")
  )
