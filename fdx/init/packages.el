(package-initialize)
(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives repo))

(unless (package-installed-p 'package+)
  (package-refresh-contents)
  (package-install 'package+))

(package-manifest
 'package+ 
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
 'smartparens
 'haml-mode
 'slim-mode
 'yaml-mode
 'css-mode
 'scss-mode
 'coffee-mode
 'dired+
 'undo-tree
 'smex
 'dockerfile-mode
 'ace-window
 )

;; vendored packages
(fdx/load-init-file "fdx/vendor/rcodetools")
