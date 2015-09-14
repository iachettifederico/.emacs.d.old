;;;###autoload
(defun fdx/recompile-snippets ()
  (interactive)
  (shell-command 
   (concat "rm -rf " 
	   user-emacs-directory 
	   "fdx/snippets/**/.yas-compiled-snippets.el*"))
  (yas/recompile-all)
  (yas/reload-all))
