;;;###autoload
(defun fdx/tapas-shots ()
  "Show RubyTapas shots for current file."
  (interactive)
  
  (async-shell-command
   (concat "extract_shots_from_tapas "
           (buffer-file-name))
   "*TapasShots*")
  
  (pop-to-buffer "*TapasShots*")
  (goto-char (point-min)))
