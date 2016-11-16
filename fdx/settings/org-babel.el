(setq org-ditaa-jar-path "/usr/bin/ditaa")
(setq org-plantuml-jar-path
      (expand-file-name "~/src/org/contrib/scripts/plantuml.jar"))

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (ruby . y)
   (dot . t)
   (ditaa . t)
   (plantuml . t)
   ))

;; Do not prompt to confirm evaluation
;; This may be dangerous - make sure you understand the consequences
;; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)
