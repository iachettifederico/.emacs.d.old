;;;###autoload
(defun fdx/vm/current-file-spec ()
  (concat "spec/" (first (cdr (split-string (buffer-file-name) "\\/spec\\/")))))

;;;###autoload
(defun fdx/vm/rspec-verify-all ()
  (interactive)
  (compile
   (concat "vmexec api hotel_expedia 'be rspec spec' --no-rerun")))

;;;###autoload
(defun fdx/vm/rspec-verify ()
  (interactive)
  (compile
   (concat "vmexec api hotel_expedia 'be rspec " (fdx/vm/current-file-spec) "' --no-rerun")))

;;;###autoload
(defun fdx/vm/rspec-verify-single ()
  (interactive)
  (compile
   (concat "vmexec api hotel_expedia 'be rspec " (fdx/vm/current-file-spec) ":" (number-to-string (line-number-at-pos)) "' --no-rerun")))

