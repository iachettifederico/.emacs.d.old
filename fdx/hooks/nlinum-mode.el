(when nlinum-mode
  (setq-local nlinum-format
              (concat "%" (number-to-string
                           ;; Guesstimate number of buffer lines.
                           (ceiling (log (max 1 (/ (buffer-size) 80)) 10)))
                      "d")))
