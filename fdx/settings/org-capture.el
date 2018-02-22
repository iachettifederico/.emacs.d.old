(defvar fdx/capture-prompt-history nil
  "History of prompt answers for org capture.")

(defun fdx/prompt (prompt variable)
  "PROMPT for string, save it to VARIABLE and insert it."
  (make-local-variable variable)
  (set variable (read-string (concat prompt ": ") nil fdx/capture-prompt-history)))

(defun fdx/find-blog-post-for-capture ()
  "Find and create a file in the posts directory to be used in org-capture"
  (interactive)
  (ido-find-file-in-dir "~/Dropbox/wordpress_rake/posts/"))

(setq org-capture-templates
      '(
        ("p" "Blog post"           plain (function fdx/find-blog-post-for-capture)
         "#+TITLE:       %(fdx/prompt \"Title\" 'post-title)\n#+DESCRIPTION: %(fdx/prompt \"Description\" 'episode-desc)\n#+CATEGORIES:  %(fdx/prompt \"Categories\" 'post-categories)\n#+DATE:        %T\n%?")

        ("i" "Post idea"           entry     (file "~/Dropbox/wordpress_rake/IDEAS.org")
         "* %?\n")

        ("w" "Woodworking project" entry     (file "~/Dropbox/org-files/woodworking_projects.org")
         "* TODO %?\n")

        ("s" "Shopping list"       checkitem (file "~/Dropbox/org-files/shopping_list.org"))

        ("t" "Tools to buy"        checkitem (file "~/Dropbox/org-files/tools.org"))

        ("c" "Org-capture"          plain     (function fdx/open-capture.el-buffer)
         "        (\"%(fdx/prompt \"Key\" 'key)\" \"%(fdx/prompt \"Description\" 'description)\" %(fdx/prompt \"Type\" 'capture-type) %(fdx/prompt \"Target\" 'target)
         \"%(fdx/prompt \"Body\" 'body)%?\")")
        ))

(defun fdx/open-capture.el-buffer ()
  (with-current-buffer (find-file "~/.emacs.d/fdx/settings/org-capture.el")
    (beginning-of-buffer)
    (search-forward "(setq org-capture-templates")
    (next-line) (end-of-line) (backward-char)
    (forward-sexp)
    (previous-line) (end-of-line)
    (newline) (newline)
    (fdx/reindent-buffer)
    )
  )
