(require 'package)

(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives repo))

(defun fdx/package-refresh-and-install (name)
  "Ensure we have a fresh package list, then install."
  (package-refresh-contents)
  (package-install name))

(defun fdx/package-install-unless-installed (name)
  "Install a package by name unless it is already installed."
  (or (package-installed-p name) (fdx/package-refresh-and-install name)))

(defun fdx/package-details-for (name)
  "Safely pull out package details across Emacs versions."
  (let ((v (cdr (assoc name package-archive-contents))))
    (and v (if (consp v)
               (car v) ; for Emacs 24.4+
             v))))

(defun fdx/package-version-for (package)
  "Get the version of a loaded package."
  (package-desc-version (fdx/package-details-for package)))

(defun fdx/package-delete-by-name (package)
  "Remove a package by name."
  (package-delete (symbol-name package)
                  (package-version-join (fdx/package-version-for package))))

(defun fdx/package-delete-unless-listed (packages)
  "Remove packages not explicitly declared."
  (let ((packages-and-dependencies (fdx/packages-requirements packages)))
    (dolist (package (mapcar 'car package-alist))
      (unless (memq package packages-and-dependencies)
        (fdx/package-delete-by-name package)))))

(defun fdx/packages-requirements (packages)
  "List of dependencies for packages."
  (delete-dups (apply 'append (mapcar 'fdx/package-requirements packages))))

(defun fdx/package-requirements (package)
  "List of recursive dependencies for a package."
  (let ((package-info (fdx/package-details-for package)))
     (cond ((null package-info) (list package))
           (t
            (fdx/flatten
             (cons package
                   (mapcar 'fdx/package-requirements
                           (mapcar 'car (package-desc-reqs package-info)))))))))

(defun fdx/package-install-and-remove-to-match-list (&rest packages)
  "Sync packages so the installed list matches the passed list."
  (package-initialize)
  (condition-case nil ;; added to handle no-network situations
      (mapc 'fdx/package-install-unless-installed packages)
    (error (message "Couldn't install package. No network connection?")))
  (fdx/package-delete-unless-listed packages))

(fdx/package-install-and-remove-to-match-list
 'magit
 'color-theme
 'color-theme-ir-black
 'color-theme-sanityinc-tomorrow
 'yasnippet
 'projectile
 'multiple-cursors
 'rvm
 'ruby-mode
 'inf-ruby
 'ruby-compilation
 'rspec-mode
 'minitest
 'rhtml-mode
 'enh-ruby-mode
 'haml-mode
 'slim-mode
 'yaml-mode
 'css-mode
 'scss-mode
 'coffee-mode
 'dired+
 'undo-tree
 )

;; vendored packages
(fdx/load-init-file "fdx/vendor/rcodetools")
