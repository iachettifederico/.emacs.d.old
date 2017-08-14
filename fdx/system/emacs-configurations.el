(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["black" "red3" "green3" "yellow3" "DodgerBlue1" "magenta3" "cyan3" "gray90"])
 '(ccm-vpos-init (quote (round (* 21 (window-text-height)) 34)))
 '(ccm-vpos-inverted -1)
 '(compilation-always-kill t)
 '(compilation-environment (quote ("TERM=xterm-256color")))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(enh-ruby-deep-arglist nil)
 '(enh-ruby-deep-indent-paren nil)
 '(enh-ruby-extra-keywords
   (quote
    ("private" "public" "protected" "module_function" "raise" "fail")))
 '(fci-rule-color "#003f8e")
 '(git-commit-fill-column 1000)
 '(git-commit-finish-query-functions nil)
 '(git-commit-summary-max-length 1000)
 '(magit-pull-arguments nil)
 '(openwith-associations
   (quote
    (("\\.pdf\\'" "evince"
      (file))
     ("\\.odt\\'" "libreoffice"
      (file))
     ("\\.odf\\'" "libreoffice"
      (file))
     ("\\.ods\\'" "libreoffice"
      (file)))))
 '(org-export-backends (quote (beamer html icalendar md odt freemind)))
 '(package-selected-packages
   (quote
    (nlinum-hl ## js2-mode rjsx-mode plantuml-mode try ht rich-minority powerline ruby-refactor docker ob-browser restclient habitica ox-pandoc crux smart-mode-line-powerline-theme nlinum expand-region openwith org-mode color-theme-ir-black smart-cursor-color smart-mode-line speed-type typescript-mode tidy rudel centered-cursor-mode bundler whitespace-cleanup-mode csv-mode csv-nav slack ruby-electric seeing-is-believing org-eww package-build git commander f dash s cask cucumber-goto-step feature-mode ecukes markdown-mode+ ox-reveal htmlize ace-window ace-jump-mode smex neotree dired+ coffee-mode scss-mode yaml-mode slim-mode haml-mode enh-ruby-mode rhtml-mode minitest rspec-mode ruby-compilation inf-ruby rvm multiple-cursors projectile yasnippet color-theme-sanityinc-tomorrow color-theme magit git-commit magit-popup pkg-info avy markdown-mode epl package+)))
 '(rspec-use-rake-when-possible t)
 '(rspec-use-spring-when-possible nil)
 '(safe-local-variable-values
   (quote
    ((org-babel-confirm-evaluate)
     (org-babel-noweb-wrap-end . ">>")
     (org-babel-noweb-wrap-start . "#<<")
     (org-export-html-postamble . "<p style='font-size: smaller'>Copyright &copy; 2016 ShipRise and Avdi Grimm.</p>"))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 120 :width normal))))
 '(term-color-blue ((t (:background "royal blue" :foreground "royal blue")))))
