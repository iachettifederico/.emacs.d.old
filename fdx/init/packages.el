
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'centered-cursor-mode)
  (package-refresh-contents)
  (package-install 'centered-cursor-mode))

(unless (package-installed-p 'color-theme-sanityinc-tomorrow)
  (package-refresh-contents)
  (package-install 'color-theme-sanityinc-tomorrow))

(use-package try                             :ensure t)
(use-package magit                           :ensure t)
(use-package which-key                       :ensure t)
(use-package projectile                      :ensure t)
(use-package yasnippet                       :ensure t)
(use-package multiple-cursors                :ensure t)
(use-package rvm                             :ensure t)
(use-package ruby-mode                       :ensure t)
(use-package inf-ruby                        :ensure t)
(use-package ruby-compilation                :ensure t)
(use-package rspec-mode                      :ensure t)
(use-package minitest                        :ensure t)
(use-package rhtml-mode                      :ensure t)
(use-package enh-ruby-mode                   :ensure t)
(use-package ruby-electric                   :ensure t)
(use-package htmlize                         :ensure t)
(use-package haml-mode                       :ensure t)
(use-package slim-mode                       :ensure t)
(use-package yaml-mode                       :ensure t)
(use-package css-mode                        :ensure t)
(use-package scss-mode                       :ensure t)
(use-package coffee-mode                     :ensure t)
(use-package undo-tree                       :ensure t)
(use-package smex                            :ensure t)
(use-package ace-jump-mode                   :ensure t)
(use-package ace-window                      :ensure t)
(use-package markdown-mode+                  :ensure t)
(use-package ox-reveal                       :ensure t)
(use-package ox-pandoc                       :ensure t)
(use-package ob-browser                      :ensure t)
(use-package whitespace-cleanup-mode         :ensure t)
(use-package typescript-mode                 :ensure t)
(use-package expand-region                   :ensure t)
(use-package smart-mode-line                 :ensure t)
(use-package smart-mode-line-powerline-theme :ensure t)
(use-package openwith                        :ensure t)
(use-package rjsx-mode                       :ensure t)
(use-package emmet-mode                      :ensure t)
(use-package protobuf-mode                   :ensure t)
(use-package ag                              :ensure t)
(use-package ox-jira                         :ensure t)
(use-package yafolding                       :ensure t)
(use-package shell-pop                       :ensure t)
(use-package gif-screencast                  :ensure t)
(use-package diredfl                         :ensure t)
(use-package highlight-indent-guides         :ensure t)
(use-package popup-kill-ring                 :ensure t)
(use-package ido-vertical-mode               :ensure t)
(use-package org-bullets                     :ensure t)
(use-package hydra                           :ensure t)
(use-package vlf                             :ensure t)
(use-package coverage                        :ensure t)
(use-package rainbow-mode                    :ensure t)
(use-package doom-themes                     :ensure t)
(use-package fill-column-indicator           :ensure t)

(use-package ox-twbs                         :ensure t)
(use-package ido-completing-read+            :ensure t)

;; EXWM
(use-package xelb :ensure t)
(use-package exwm :ensure t)
(use-package dmenu :ensure t)



;; vendored packages
(fdx/load-init-file "fdx/vendor/rcodetools")
(fdx/load-init-file "fdx/vendor/lockstep")
