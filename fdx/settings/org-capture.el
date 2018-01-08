(defvar oc-capture-prompt-history nil
  "History of prompt answers for org capture.")

(defun oc/prompt (prompt variable)
  "PROMPT for string, save it to VARIABLE and insert it."
  (make-local-variable variable)
  (set variable (read-string (concat prompt ": ") nil oc-capture-prompt-history)))

(defun find-blog-post-for-capture ()
  "Find and create a file in the posts directory to be used in org-capture"
  (interactive)
  (ido-find-file-in-dir "~/Dropbox/wordpress_rake/posts/"))

(setq org-capture-templates
      '(
        ("p" "Blog post" plain (function find-blog-post-for-capture)
         "#+TITLE:       %(oc/prompt \"Title\" 'post-title)\n#+DESCRIPTION: %(oc/prompt \"Description\" 'episode-desc)\n#+CATEGORIES: %(oc/prompt \"Categories\" 'post-categories)\n#+DATE:        %T\n%?")
        ("i" "Post idea" entry (file "~/Dropbox/wordpress_rake/IDEAS.org")
         "* %?\n")
        ))
