(defun no-op () (interactive))

(defhydra hydra-move ()
  "Move"
  ("h"    backward-char "")
  ("n"    forward-char  "")
  ("c"    previous-line "")
  ("t"    next-line     "")
  ("q"    nil           "cancel"))

(defhydra hydra-modes (:color blue)
  "Decorations"
  ("h"    hl-line-mode              "HL"            )
  ("n"    display-line-numbers-mode "Line Numbers"  )
  ("f"    fci-mode                  "Column fill"   )
  ("c"    coverage-mode             "Coverage"      )
  ("b"    magit-blame               "Git Blame"     )
  ("g"    git-timemachine           "Git History"   )
  ("w"    centered-window-mode      "Center buffer" )
  ("q"    nil                       ""            )
  )


(defhydra hydra-zoom ()
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))
