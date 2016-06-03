;;;###autoload
(defun fdx/bundle ()
  "Run Pessimize."
  (interactive)
  (async-shell-command "bundle install" "*Pessimize*"))

;;;###autoload
(defun fdx/bundle-update ()
  "Run Pessimize."
  (interactive)
  (async-shell-command "bundle update" "*Pessimize*"))

;;;###autoload
(defun fdx/pessimize ()
  "Run Pessimize."
  (interactive)
  (async-shell-command "pessimize -c patch --no-backup" "*Pessimize*"))

;;;###autoload
(defun fdx/bp ()
  "Run bundel install and pessimize."
  (interactive)
  (async-shell-command "bundle install && pessimize -c patch --no-backup" "*Pessimize*"))

;;;###autoload
(defun fdx/burp ()
  "Run bundle update and pessimize."
  (interactive)
  (async-shell-command "bundle update && pessimize -c patch --no-backup" "*Pessimize*"))


