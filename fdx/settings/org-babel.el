(setq org-ditaa-jar-path "/usr/bin/ditaa")

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (ruby . y)
   (dot . t)
   (ditaa . t)
   ))

;; Do not prompt to confirm evaluation
;; This may be dangerous - make sure you understand the consequences
;; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)
