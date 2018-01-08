(require 'package)
(setq package-enable-at-startup nil)



(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "https://melpa.org/packages/")))
  (add-to-list 'package-archives repo))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package try                             :ensure t)
(use-package magit                           :ensure t)
(use-package which-key                       :ensure t)
(use-package projectile                      :ensure t)
(use-package yasnippet                       :ensure t)
(use-package multiple-cursors                :ensure t)
(use-package color-theme                     :ensure t)
(use-package color-theme-ir-black            :ensure t)
(use-package color-theme-sanityinc-tomorrow  :ensure t)
(use-package dired+                          :ensure t)
(use-package neotree                         :ensure t)
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
(use-package org-mode                        :ensure t)
(use-package org-eww                         :ensure t)
(use-package ox-reveal                       :ensure t)
(use-package ox-pandoc                       :ensure t)
(use-package ob-browser                      :ensure t)
(use-package whitespace-cleanup-mode         :ensure t)
(use-package centered-cursor-mode            :ensure t)
(use-package typescript-mode                 :ensure t)
(use-package nlinum                          :ensure t)
(use-package nlinum-hl                       :ensure t)
(use-package nlinum-relative                 :ensure t)
;; (use-package crux                         :ensure t)
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
(use-package dumb-jump                       :ensure t)
(use-package shell-pop                       :ensure t)


;; vendored packages
(fdx/load-init-file "fdx/vendor/rcodetools")
(fdx/load-init-file "fdx/vendor/lockstep")
