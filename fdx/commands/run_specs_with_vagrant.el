;;;###autoload
(defun fdx/vm/split-regex ()
  "Regex used to split the spec path."
  "\\(\\/spec\\/\\|\\/lib\\/one_view\\/service\\/hotel\\/expedia\\/\\)")


;;;###autoload
(defun fdx/vm/current-file-spec ()
  (concat "spec/" (first (cdr (split-string (buffer-file-name) (fdx/vm/split-regex))))))

;;;###autoload
(defun fdx/vm/current-dir-spec ()
  (concat "spec/" (first (cdr (split-string (file-name-directory (buffer-file-name)) (fdx/vm/split-regex))))))

;;;###autoload
(defun fdx/vm/current-application ()
  "Returns the current application"
  (first (cdr (split-string
               (first (cdr (split-string (file-name-directory (buffer-file-name)) "\\/iSeatz\\/")))
              "\\/"))))


;;;###autoload
(defun fdx/vm/current-vm ()
  "Returns the current VM"
  (car (split-string
               (first (cdr (split-string (file-name-directory (buffer-file-name)) "\\/iSeatz\\/")))
              "\\/")))

;;;###autoload
(defun fdx/vm/execute (command)
  "Execute a command in the current application in the current VM"
  (compile
   (concat "vmexec " (fdx/vm/current-vm) " " (fdx/vm/current-application) " '" command "'")))

;;;###autoload
(defun fdx/vm/rspec-verify-all ()
  (interactive)
  (fdx/vm/execute "be rspec spec"))

;;;###autoload
(defun fdx/vm/rspec-verify-dir ()
  (interactive)
  (fdx/vm/execute (concat "be rspec " (fdx/vm/current-dir-spec))))

;;;###autoload
(defun fdx/vm/rspec-verify ()
  (interactive)
  (fdx/vm/execute (concat "be rspec " (fdx/vm/current-file-spec) )))

;;;###autoload
(defun fdx/vm/rspec-verify-single ()
  (interactive)
  (fdx/vm/execute
   (concat "be rspec " (fdx/vm/current-file-spec) ":" (number-to-string (line-number-at-pos)) )))
