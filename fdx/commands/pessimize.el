;;;###autoload
(defun fdx/bundle ()
  "Run Pessimize."
  (interactive)
  (compile "bundle install"))

;;;###autoload
(defun fdx/bundle-update ()
  "Run Pessimize."
  (interactive)
  (compile "bundle update"))

;;;###autoload
(defun fdx/pessimize ()
  "Run Pessimize."
  (interactive)
  (compile "pessimize -c patch --no-backup"))

;;;###autoload
(defun fdx/bp ()
  "Run bundel install and pessimize."
  (interactive)
  (compile "bundle install && pessimize -c patch --no-backup"))

;;;###autoload
(defun fdx/burp ()
  "Run bundle update and pessimize."
  (interactive)
  (compile "bundle update && pessimize -c patch --no-backup"))


