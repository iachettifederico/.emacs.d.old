(defun no-op () (interactive))

(defhydra hydra-move ()
  "Move"
  ("h"    backward-char "")
  ("n"    forward-char  "")
  ("c"    previous-line "")
  ("t"    next-line     "")
  ("q"    nil           "cancel"))

(defhydra hydra-modes ()
  "Decorations"
  ("h"    hl-line-mode              "HL"           )
  ("n"    display-line-numbers-mode "Line Numbers" )
  ("f"    fci-mode                  "Column fill"  )
  ("c"    coverage-mode             "Coverage"     :color blue)
  ("b"    magit-blame               "Git Blame"    :color blue)
  ("q"    nil                       ""           )
  )


(defhydra hydra-zoom ()
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))
