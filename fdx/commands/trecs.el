;; RECORDING
;;;###autoload
(defun trecs/start-recording ()
  "Start recording"
  (interactive)
  (trecs/start-trecs-timer)
  (trecs/start-trecs-record-command))

;;;###autoload
(defun trecs/start-trecs-record-command ()
  "Launch the trecs_record external command"
  ;; (start-process "trecs-recording" "trecs-recording" "loop")
  )

;;;###autoload
(defun trecs/start-trecs-timer ()
  "Set the trecs-timer to start htmlizing regularly"
  (setq trecs-timer
        (run-with-timer 0 0.08 'trecs/htmlize-current-buffer)))

;;;###autoload
(defadvice trecs/htmlize-current-buffer (around trecs/htmlize-around)
  "Advice"
  (trecs/temporary-invisible-change
   (if (looking-at "$")
       (progn
         (insert " ")
         (backward-char)
         ad-do-it
         (delete-char 1))
     ad-do-it)))

;;;###autoload
(defun trecs/htmlize-current-buffer ()
  "htmlize the current section of the current buffer"
  (interactive)
  (if (not (string-match "\\*Minibuf.*\\*" (buffer-name (current-buffer))))
      (progn
        (widen)
        (save-excursion
          (save-restriction
            (trecs/show-cursor)
            (let
                ((html (htmlize-region (trecs/buff-top) (trecs/buff-bottom))))
              (with-current-buffer html (write-region
                                         (point-max) (point-min)
                                         "/tmp/emacs-session-recording.html" nil 'nodisp))
              (trecs/hide-cursor)
              (kill-buffer html)))))))

;;;###autoload
(defun trecs/buff-top ()
  "Returns the buffer top"
  (interactive)
  (save-excursion
    (move-to-window-line 0)
    (window-point)))

;;;###autoload
(defun trecs/buff-bottom ()
  "Returns the buffer bottom"
  (interactive)
  (save-excursion
    (move-to-window-line -1)
    (forward-line)
    (window-point)))

;; STOPPING

;;;###autoload
(defun trecs/stop-recording ()
  (interactive)
  "Stop recording"
  (trecs/hide-cursor)
  (trecs/stop-trecs-record-command)
  (trecs/stop-trecs-timer))

;;;###autoload
(defun trecs/stop-trecs-record-command ()
  "Launch the trecs_record external command"
  ;; (delete-process "trecs-recording")
  )

;;;###autoload
(defun trecs/stop-trecs-timer ()
  "Set the trecs-timer to start htmlizing regularly"
  (cancel-timer trecs-timer))

;;;###autoload
(defun trecs/show-cursor ()
  (interactive)
  (setq trecs/cursor-overlay (make-overlay
                              (point)
                              (+ (point) 1)))
  (overlay-put
   trecs/cursor-overlay
   'face 'cursor))

;;;###autoload
(defun trecs/hide-cursor ()
  (interactive)
  (if trecs/cursor-overlay
      (delete-overlay trecs/cursor-overlay)))

;;;###autoload
(defmacro trecs/temporary-invisible-change (&rest forms)
  "Executes FORMS with a temporary buffer-undo-list, undoing on return.
The changes you make within FORMS are undone before returning.
But more importantly, the buffer's buffer-undo-list is not affected.
This allows you to temporarily modify read-only buffers too."
  `(let* ((buffer-undo-list)
          (modified (buffer-modified-p))
          (inhibit-read-only t))
     (save-excursion
       (unwind-protect
           (progn ,@forms)
         (primitive-undo (length buffer-undo-list) buffer-undo-list)
         (set-buffer-modified-p modified)))
     nil))
