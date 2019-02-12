(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-reuse-buffers t)
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
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "9d9fda57c476672acd8c6efeb9dc801abea906634575ad2c7688d055878e69d6" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(enh-ruby-extra-keywords
   (quote
    ("private" "public" "protected" "module_function" "raise" "fail")))
 '(fci-rule-color "#003f8e")
 '(git-commit-fill-column 1000)
 '(git-commit-finish-query-functions nil)
 '(git-commit-summary-max-length 1000)
 '(ido-all-frames t)
 '(ido-enable-flex-matching t)
 '(ido-everywhere nil)
 '(ido-minibuffer-setup-hook (quote (ido-vertical-disable-line-truncation)))
 '(ido-mode (quote both) nil (ido))
 '(ido-use-virtual-buffers t)
 '(magit-merge-arguments (quote ("--no-ff")))
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
 '(org-agenda-files nil)
 '(org-clock-into-drawer "CLOCKING")
 '(org-export-backends (quote (beamer html icalendar md odt freemind)))
 '(org-structure-template-alist
   (quote
    (("n" . "notes")
     ("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse"))))
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (git-timemachine smart-mode-line-atom-one-dark-theme plantuml-mode pivotal-tracker pivotal ruby-hash-syntax auto-package-update counsel-projectile counsel flx ivy use-package xelb fill-column-indicator markdown-mode solargraph centered-window ox-hugo projectile-rails floobits exec-path-from-shell dashboard emacs-dashboard ido-completing-read+ auto-complete request lsp-mode ido-better-flex doom-themes doom-theme projectile ox-twbs rainbow-mode coverage vlf hydra org-bullets ido-vertical-mode popup-kill-ring highlight-indent-guides diredfl gif-screencast shell-pop yafolding ox-jira ag protobuf-mode emmet-mode rjsx-mode openwith smart-mode-line-powerline-theme smart-mode-line expand-region nlinum-hl nlinum typescript-mode whitespace-cleanup-mode ob-browser ox-pandoc ox-reveal markdown-mode+ ace-window ace-jump-mode smex undo-tree coffee-mode scss-mode yaml-mode slim-mode haml-mode htmlize ruby-electric enh-ruby-mode rhtml-mode minitest rspec-mode ruby-compilation inf-ruby rvm multiple-cursors yasnippet which-key magit try dmenu color-theme-sanityinc-tomorrow exwm)))
 '(pivotal-api-token "c10df3b060908784f7dcdb6cd1c1ea25")
 '(projectile-rails-expand-snippet nil)
 '(rspec-use-bundler-when-possible t)
 '(rspec-use-rake-when-possible t)
 '(rspec-use-spring-when-possible t)
 '(safe-local-variable-values
   (quote
    ((org-html-htmlize-output-type)
     (org-babel-confirm-evaluate)
     (org-babel-noweb-wrap-end . ">>")
     (org-babel-noweb-wrap-start . "#<<")
     (org-export-html-postamble . "<p style='font-size: smaller'>Copyright &copy; 2016 ShipRise and Avdi Grimm.</p>"))))
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote sml/global)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
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
 '(fringe ((t (:background "#000000"))))
 '(markdown-code-face ((t (:inherit nil :background "#54546f" :foreground "#c397d8" :family "Inconsolata"))))
 '(term-color-blue ((t (:background "royal blue" :foreground "royal blue")))))
