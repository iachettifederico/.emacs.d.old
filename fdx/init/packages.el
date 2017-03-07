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
 'try
 'magit
 'projectile
 'yasnippet
 'multiple-cursors
 'color-theme
 'color-theme-ir-black
 'color-theme-sanityinc-tomorrow
 'dired+
 'neotree
 'rvm
 'ruby-mode
 'inf-ruby
 'ruby-compilation
 'rspec-mode
 'minitest
 'rhtml-mode
 'enh-ruby-mode
 'ruby-electric
 'htmlize
 'haml-mode
 'slim-mode
 'yaml-mode
 'css-mode
 'scss-mode
 'coffee-mode
 'undo-tree
 'smex
 'ace-jump-mode
 'ace-window
 'markdown-mode+
 'org-mode
 'org-eww
 ;;'ox-reveal
 'ox-pandoc
 'ob-browser
 'whitespace-cleanup-mode
 'centered-cursor-mode
 'typescript-mode
 'nlinum
 'nlinum-relative
 'crux
 'expand-region
 'smart-mode-line
 'smart-mode-line-powerline-theme
 'openwith
 'rjsx-mode
 )

;; vendored packages
(fdx/load-init-file "fdx/vendor/rcodetools")
;;(fdx/load-init-file "fdx/vendor/ox-reveal")
