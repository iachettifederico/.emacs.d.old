;;;###autoload
(defun fdx/flatten (x)
  "Flatten a list."
  (cond ((null x) nil)
	((listp x) (append (fdx/flatten (car x)) (fdx/flatten (cdr x))))
	(t (list x))))
