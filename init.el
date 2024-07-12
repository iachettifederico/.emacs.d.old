(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
(setq package-enable-at-startup nil)
(setq package-check-signature nil)

(setq package-archives '(("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ))

(package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/Readme.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ccm-recenter-at-end-of-file t)
 '(ccm-vpos-init '(round (* 21 (ccm-visible-text-lines)) 34))
 '(ccm-vpos-inverted -1)
 '(connection-local-criteria-alist
   '(((:application tramp :protocol "flatpak")
      tramp-container-connection-local-default-flatpak-profile)
     ((:application tramp)
      tramp-connection-local-default-system-profile tramp-connection-local-default-shell-profile)))
 '(connection-local-profile-alist
   '((tramp-container-connection-local-default-flatpak-profile
      (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin" "/usr/bin" "/sbin" "/usr/sbin" "/usr/local/bin" "/usr/local/sbin" "/local/bin" "/local/freeware/bin" "/local/gnu/bin" "/usr/freeware/bin" "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin" "/opt/sbin" "/opt/local/bin"))
     (tramp-connection-local-darwin-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o" "pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state=abcde" "-o" "ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (euid . number)
       (user . string)
       (egid . number)
       (comm . 52)
       (state . 5)
       (ppid . number)
       (pgrp . number)
       (sess . number)
       (ttname . string)
       (tpgid . number)
       (minflt . number)
       (majflt . number)
       (time . tramp-ps-time)
       (pri . number)
       (nice . number)
       (vsize . number)
       (rss . number)
       (etime . tramp-ps-time)
       (pcpu . number)
       (pmem . number)
       (args)))
     (tramp-connection-local-busybox-ps-profile
      (tramp-process-attributes-ps-args "-o" "pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "stat=abcde" "-o" "ppid,pgid,tty,time,nice,etime,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (user . string)
       (group . string)
       (comm . 52)
       (state . 5)
       (ppid . number)
       (pgrp . number)
       (ttname . string)
       (time . tramp-ps-time)
       (nice . number)
       (etime . tramp-ps-time)
       (args)))
     (tramp-connection-local-bsd-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o" "pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (euid . number)
       (user . string)
       (egid . number)
       (group . string)
       (comm . 52)
       (state . string)
       (ppid . number)
       (pgrp . number)
       (sess . number)
       (ttname . string)
       (tpgid . number)
       (minflt . number)
       (majflt . number)
       (time . tramp-ps-time)
       (pri . number)
       (nice . number)
       (vsize . number)
       (rss . number)
       (etime . number)
       (pcpu . number)
       (pmem . number)
       (args)))
     (tramp-connection-local-default-shell-profile
      (shell-file-name . "/bin/sh")
      (shell-command-switch . "-c"))
     (tramp-connection-local-default-system-profile
      (path-separator . ":")
      (null-device . "/dev/null"))))
 '(git-commit-fill-column 1000)
 '(git-commit-finish-query-functions nil)
 '(git-commit-summary-max-length 1000)
 '(org-agenda-files '("/data/second-brain/12_week_year.org"))
 '(org-agenda-start-with-follow-mode t)
 '(package-selected-packages
   '(rhtml-mode undo-tree centered-cursor-mode xterm-color expand-region multiple-cursors slim-mode emmet-mode hydra web-mode inf-ruby ruby-electric rspec-mode seeing-is-believing rvm lsp-mode tree-sitter-langs company-tabnine yaml-mode dockerfile-mode magit wgrep-ag ripgrep ag org-roam-ui ox-pandoc ob-mermaid mermaid-mode org-bullets flx counsel-projectile git-timemachine whitespace-cleanup-mode yasnippet evil which-key try doom-themes auto-package-update))
 '(rspec-command-options "--format progress")
 '(rspec-docker-command "docker compose run --rm")
 '(rspec-docker-container "web")
 '(rspec-docker-cwd "/app/")
 '(rspec-use-docker-when-possible t)
 '(rspec-use-opts-file-when-available nil)
 '(safe-local-variable-values
   '((eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (setq compilation-scroll-output 'first-error)
           (setq rspec-docker-cwd "/kelp/")
           (setq rspec-command-options "--format progress --exclude-pattern 'spec/system/**/*_spec.rb'")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 '("docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (setq rspec-docker-cwd "/kelp/")
           (setq rspec-command-options "--format progress --exclude-pattern 'spec/system/**/*_spec.rb'")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 '("docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (setq rspec-docker-cwd "/kelp/")
           (setq rspec-command-options "--format progress --exclude-pattern \"spec/system/**/*_spec.rb\"")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 '("docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (setq rspec-docker-cwd "/kelp/")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 '("docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 '("docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 '("docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 ("/usr/bin/docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq lsp-solargraph-server-command
                 ("docker" "compose" "run" "--rm" "web" "bundle" "exec" "solargraph" "stdio")))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb "))
           (setq rspec-docker-cwd "/kelp/"))
     (eval with-eval-after-load "ruby-ts-mode"
           (remove-hook 'ruby-ts-mode-hook #'lsp)
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb ")))
     (eval with-eval-after-load "ruby-ts-mode"
           (setq lsp-auto-configure-exclude
                 '(ruby-ts-mode))
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb ")))
     (eval with-eval-after-load "ruby-ts-mode"
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A " "spec/models/feature_flag_client_spec.rb " "app/models/feature_flag.rb " "app/models/launch_darkly_client.rb " "app/models/feature_flag_client.rb " "app/models/feature_flag_client/in_memory.rb ")))
     (eval with-eval-after-load "ruby-ts-mode"
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A "
                                      (file-relative-name
                                       (buffer-file-name)
                                       (projectile-project-root)))))
     (eval with-eval-after-load "ruby-ts-mode"
           (rvm-use "3.2.3" "global")
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A"
                                      (file-relative-name
                                       (buffer-file-name)
                                       (projectile-project-root)))))
     (eval with-eval-after-load "ruby-ts-mode"
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key "H-u"
                              (concat "bundle exec rubocop -A"
                                      (file-relative-name
                                       (buffer-file-name)
                                       (projectile-project-root)))))
     (eval with-eval-after-load "ruby-ts-mode"
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)
           (rr/global-set-key-current-file "H-u" "bundle exec rubocop -A"))
     (eval with-eval-after-load "ruby-ts-mode"
           (define-key ruby-ts-mode-map
                       (kbd "H-=")
                       'fdx/reindent-buffer)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :slant normal :weight normal :height 130 :width normal)))))
(put 'dired-find-alternate-file 'disabled nil)
