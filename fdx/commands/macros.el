;;;###autoload
(defun fdx/kmacro-name-and-assign (char)
  "Name last macro and assign a key combination"
  (interactive "c")
  (let (
        (char-s (char-to-string char))
        (macro-name (concat "fdx/last-macro-" (char-to-string char)))
        (key (concat "H-" (char-to-string char)))
        )
    (kmacro-name-last-macro (intern macro-name))
    (global-set-key (kbd key) (intern  macro-name))
    (message key)))
