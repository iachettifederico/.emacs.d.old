;;;###autoload
(defun tapas/tapas-shots ()
  "Show RubyTapas shots for current file."
  (interactive)

  (async-shell-command
   (concat "extract_shots_from_tapas "
           (buffer-file-name))
   "*TapasShots*")

  (pop-to-buffer "*TapasShots*")
  (goto-char (point-min)))

;;;###autoload
(defun tapas/populate-tapas-shots (ARG)
  "Populate {{{shot(n)}}} macros on current buffer"
  (interactive "p")
  (save-excursion
    (beginning-of-buffer)
    (kmacro-set-counter 1)
    (while (search-forward "{{{shot(" nil nil)
      (let ((start (point)))
        (search-forward ")}}}" nil nil)
        (left-char 4)
        (delete-region start (point)))
      (kmacro-insert-counter ARG))))

;;;###autoload
(defun tapas/clear-tapas-shots ()
  "Clear {{{shot(n)}}} macros on current buffer"
  (interactive)
  (save-excursion
    (beginning-of-buffer)
    (while (search-forward "{{{shot(" nil nil)
      (let ((start (point)))
        (search-forward ")}}}" nil nil)
        (left-char 4)
        (delete-region start (point))))))

;;;###autoload
(defun tapas/insert-episode-link (episode-number)
  "Clear {{{shot(n)}}} macros on current buffer"
  (interactive "sEpisode number: ")
  (insert (concat
           "[["
           (shell-command-to-string (concat "tapas_episode_list " episode-number))
           "][episode #" episode-number "]]")))
