(use-package auto-package-update :ensure t)

(global-set-key (kbd "H-k") 'global-set-key)

(global-set-key (kbd "H-s") 'save-buffer)
(global-set-key (kbd "H-S") 'save-some-buffers)

(global-set-key (kbd "H-f") 'fdx/visit-or-projectile-visit)
(global-set-key (kbd "H-F") 'ido-find-file)

(global-set-key (kbd "H-D d") 'fdx/delete-file-and-buffer)
(global-set-key (kbd "H-D r") 'fdx/rename-current-file)
(global-set-key (kbd "H-D m") 'fdx/chmod-current-file)
(global-set-key (kbd "H-D t") 'fdx/touch-current-file)

(require 's)

(defun fdx/sort-words-in-region (beg end &optional reversed)
  "In active region sort words alphabetically in ascending order.
With prefix argument REVERSED use descending order.
Don't use this function on regions with nested brackets."
  (interactive "r\nP")
  (unless (region-active-p) (user-error "No active region to sort!"))
  (let* ((str (s-trim (buffer-substring-no-properties beg end)))
         (com (string-match-p "," str))
         (cln (replace-regexp-in-string "[\]\[(){}\']+\\|\\.$" "" str))
         (wrd (split-string cln (if com "," " ") t " "))
         (new (s-join (if com ", " " ")
                      (sort wrd (if reversed #'string> #'string<)))))
    (save-excursion
      (goto-char beg)
      (delete-region beg end)
      (when (and (looking-back "[^ ]") (not (s-starts-with? " " str)))
          (insert " "))
      (insert
       (replace-regexp-in-string "[^\]\[(){}\'\.]+" new str)))))

(global-set-key (kbd "H--") 'kill-whole-line)

(global-set-key (kbd "H-d") 'fdx/duplicate-line)

(global-set-key (kbd "<H-S-up>") 'fdx/move-text-up)
(global-set-key (kbd "<H-S-down>") 'fdx/move-text-down)

(global-set-key (kbd "H-l") 'sort-lines)

(global-set-key (kbd "H-j") (lambda ()
                              (interactive)
                              (join-line -1)))

(global-set-key (kbd "H-0") 'bookmark-jump)
(global-set-key (kbd "H-)") 'bookmark-set)

(defun fdx/reload-emacs-configuration ()
  "Reload emacs configuration"
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/Readme.org")))

(global-set-key (kbd "<H-f12>") 'fdx/reload-emacs-configuration)

(global-set-key (kbd "<H-S-f12>") 'package-refresh-contents)

(global-auto-revert-mode 1)

(global-set-key (kbd "<f5>") 'revert-buffer)

(global-visual-line-mode t)
(setq-default truncate-lines nil)
(setq-default toggle-truncate-lines nil)
(setq-default word-wrap t)

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(blink-cursor-mode 0)
(show-paren-mode)

;; Set default font
(set-face-attribute 'default nil :family "JetBrains Mono" :height 125)
(add-to-list 'default-frame-alist '(font . "JetBrains Mono 12"))

(use-package doom-themes :ensure t)

(load-theme 'doom-ir-black t)

(use-package try :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package evil :ensure t)

(global-set-key (kbd "<f9>") 'evil-mode)

(use-package yasnippet
  :ensure t
  :init
  (progn
    (setq yas-snippet-dirs
          (list (expand-file-name "~/.emacs.d/fdx/snippets")))
    (yas-global-mode 1)
    ))

(require 'yasnippet)

;;;###autoload
(defun fdx/recompile-snippets ()
  (interactive)
  (shell-command
   (concat "rm -rf "
           user-emacs-directory
           "fdx/snippets/**/.yas-compiled-snippets.el*"))
  (yas/recompile-all)
  (yas/reload-all))

(global-set-key (kbd "S-<f7>") 'fdx/recompile-snippets)
(global-set-key (kbd "<backtab>") 'yas-expand-from-trigger-key)
(global-set-key (kbd "C-<tab>") 'yas-insert-snippet)

(setq backup-directory-alist `(("." . "~/.emacs.d/backup-files")))

(setq backup-by-copying t)

(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;;;###autoload
(defun fdx/reindent-buffer ()
  "Indent the current buffer."
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max))
  (untabify (point-min) (point-max)))

(global-set-key (kbd "H-=") 'fdx/reindent-buffer)

(global-set-key (kbd "H-<left>")  'windmove-left)
(global-set-key (kbd "H-<right>") 'windmove-right)
(global-set-key (kbd "H-<up>")    'windmove-up)
(global-set-key (kbd "H-<down>")  'windmove-down)

(global-set-key (kbd "H-w") 'balance-windows)

(winner-mode 1)

(setq         indent-tabs-mode nil) ; And force use of spaces
(setq-default indent-tabs-mode nil)

(setq c-basic-offset          2) ; indents 2 chars
(setq tab-width               2) ; and 2 char wide for TAB

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

(setq css-indent-offset       2)
(setq js-indent-level         2)
(setq coffee-tab-width        2)
(setq typescript-indent-level 2)

(global-set-key (kbd "C-c i") 'align-regexp)

(use-package whitespace-cleanup-mode :ensure t)

(setq split-height-threshold nil)
(setq split-width-threshold 0)

(setq fdx/font-size-increment 5)

;;;###autoload
(defun fdx/decrease-font ()
  "Decrease the font for all buffers"
  (interactive)
  (let ((old-face-attribute (face-attribute 'default :height)))
    (set-face-attribute 'default nil :height (+ old-face-attribute fdx/font-size-increment))))

;;;###autoload
(defun fdx/increase-font ()
  "Increase the font for all buffers"
  (interactive)
  (let ((old-face-attribute (face-attribute 'default :height)))
    (set-face-attribute 'default nil :height (- old-face-attribute fdx/font-size-increment))))

(global-set-key (kbd "H-]") 'fdx/increase-font)
(global-set-key (kbd "H-[") 'fdx/decrease-font)

(use-package git-timemachine :ensure t)

(put 'dired-find-alternate-file 'disabled nil)

(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

(defun dired-back-to-top ()
  (interactive)
  (beginning-of-buffer)
  (dired-next-line 1)
  (dired-next-line 1)
  (dired-next-line 1))

(defun dired-jump-to-bottom ()
  (interactive)
  (end-of-buffer)
  (dired-next-line -1))

(eval-after-load "dired" '(progn
                            (define-key dired-mode-map
                                        (vector 'remap 'beginning-of-buffer) 'dired-back-to-top)
                            (define-key dired-mode-map
                                        (vector 'remap 'end-of-buffer) 'dired-jump-to-bottom)))

(setq dired-listing-switches "-aBhl  --group-directories-first")

(setq-default dired-omit-files-p nil) ; Buffer-local variable

(setq dired-omit-files "^\\.?#\\|^\\.$\\|^\\.[^\\.]")
;; (setq dired-omit-mode t) ; Turn on Omit mode.
(setq dired-omit-verbose nil) ; Turn off Omit mode messages.

(require 'dired-x)

(add-hook 'dired-mode-hook
          (lambda ()
            (dired-hide-details-mode t)))

;;;###autoload
(defun fdx/kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (progn
        (kill-buffer buffer)
        ))
    (delete-other-windows)))

(global-set-key (kbd "C-c k") 'fdx/kill-other-buffers)

(global-set-key (kbd "C-x C-w")
                (lambda ()
                  (interactive)
                  (switch-to-buffer "*scratch*")))

(defun fdx/reuse-buffers ()
  (interactive)
  (add-to-list 'display-buffer-alist
               '(".*". (display-buffer-reuse-window .
                                                    ((reusable-frames . t))))))

;; Make directories on the fly
(defun make-parent-directory ()
  "Make sure the directory of `buffer-file-name' exists."
  (make-directory (file-name-directory buffer-file-name) t))

(add-hook 'find-file-not-found-functions #'make-parent-directory)

(defun fdx/move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg)
          (when (and (eval-when-compile
                       '(and (>= emacs-major-version 24)
                             (>= emacs-minor-version 3)))
                     (< arg 0))
            (forward-line -1)))
        (forward-line -1))
      (move-to-column column t)))))

(defun fdx/move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (fdx/move-text-internal arg))

(defun fdx/move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (fdx/move-text-internal (- arg)))

(global-set-key (kbd "<H-S-up>") 'fdx/move-line-up)
(global-set-key (kbd "<H-S-down>") 'fdx/move-line-down)

(use-package counsel :ensure t)

(setq ivy-initial-inputs-alist nil)

(setq ivy-re-builders-alist '((swiper . ivy--regex-plus)
                              (t . ivy--regex-fuzzy)))

(use-package counsel-projectile :ensure t)

(use-package swiper
  :ensure t
  :bind (
         ("C-s" . swiper)
         ("C-r" . swiper)
         ("C-c C-r" . ivy-resume)
         ("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         )
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-find-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    ))

(use-package ivy
  :ensure t
  :config
  (require 'ivy))

(use-package flx
  :ensure t
  :config
  (require 'flx))

(setq ivy-use-virtual-buffers t)

;; intentional space before end of string
(setq ivy-count-format "(%d/%d) ")
(setq ivy-initial-inputs-alist nil)

(setq ivy-re-builders-alist
      '((swiper . ivy--regex-plus)
        (t      . ivy--regex-fuzzy)))

;; Use C-j for immediate termination with current value
(define-key ivy-minibuffer-map (kbd "C-j") #'ivy-immediate-done)
;; Use RET for continuing completion for that directory
(define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)

(ivy-mode 1)

(setq org-structure-template-alist
      '(
        ("-" . "src")
        ("q" . "quote")
        ("v" . "verse")
        ("r" . "src ruby")
        ("l" . "src emacs-lisp")
        ("s" . "src sh")
        ("C" . "comment")
        ("e" . "example")
        ("h" . "export html")
        ("a" . "export ascii")
        ("c" . "center")
        ("E" . "export")
        ))

(setq org-clock-into-drawer "CLOCKING")

(setq org-duration-format (quote h:mm))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package mermaid-mode :ensure t)
(use-package ob-mermaid :ensure t)

(require 'org)
(require 'ox-latex)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)

(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-src-fontify-natively t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((mermaid . t)
   (ruby . t)
   (emacs-lisp . t)
   (org . t)
   ))

(setq org-pandoc-menu-entry
      '(
        (?h "to html5." org-pandoc-export-to-html5)
        (?H "to html5 and open." org-pandoc-export-to-html5-and-open)
        (?p "to html5-pdf." org-pandoc-export-to-html5-pdf)
        (?P "to html5-pdf and open." org-pandoc-export-to-html5-pdf-and-open)
        (?e "to epub3." org-pandoc-export-to-epub3)
        (?E "to epub3 and open." org-pandoc-export-to-epub3-and-open)
        (?b "to beamer-pdf." org-pandoc-export-to-beamer-pdf)
        (?B "to beamer-pdf and open." org-pandoc-export-to-beamer-pdf-and-open)
        (?4 "to html4 and open." org-pandoc-export-to-html4-and-open)
        (?$ "as html4." org-pandoc-export-as-html4)
        (?j "to json." org-pandoc-export-to-json)
        (?J "to json and open." org-pandoc-export-to-json-and-open)
        (?m "to markdown." org-pandoc-export-to-markdown)
        (?M "to markdown and open." org-pandoc-export-to-markdown-and-open)
        (?l "to latex-pdf and open." org-pandoc-export-to-latex-pdf-and-open)
        (?L "to latex-pdf." org-pandoc-export-to-latex-pdf)
        (?o "to odt." org-pandoc-export-to-odt)
        (?O "to odt and open." org-pandoc-export-to-odt-and-open)
        (?t "to pptx and open." org-pandoc-export-to-pptx-and-open)
        (?T "to pptx." org-pandoc-export-to-pptx)
        (?r "as revealjs." org-pandoc-export-as-revealjs)
        (?R "to revealjs and open." org-pandoc-export-to-revealjs-and-open)
        (?d "to docx." org-pandoc-export-to-docx)
        (?D "to docx and open." org-pandoc-export-to-docx-and-open)
        ))

(use-package ox-pandoc
  :ensure t
  :init
  (with-eval-after-load 'org
    (require 'ox-pandoc)))

;;;###autoload
(defun fdx/populate-org-shots (ARG)
  "Populate {{{shot(n)}}}* macros on current buffer"
  (interactive "p")
  (save-excursion
    (beginning-of-buffer)
    (kmacro-set-counter 1)
    (while (search-forward "{{{shot(" nil t)
      (kmacro-insert-counter ARG)
      (let ((start (point)))
        (search-forward-regexp "\\(,\.+)\\|)}}}\\)")
        (let ((end (match-beginning 0)))
          (delete-region start end)
          )
        ))))

;;;###autoload
(defun fdx/insert-and-populate-org-shots ()
  "Insert {{{shot()}}} and repopulate shots on buffer"
  (interactive)
  (insert "{{{shot()}}}")
  (fdx/populate-org-shots t))

;; (if (not (getenv "ORG_ROAM_DIR"))
;;     (error "Missing environment variable 'ORG_ROAM_DIR'"))

(use-package org-roam :ensure t)

(setenv "ORG_ROAM_DIR" "/home/fedex/second-brain")
(setq org-roam-directory (file-truename (getenv "ORG_ROAM_DIR")))
(org-roam-db-autosync-mode)

(global-set-key (kbd "H-a a") 'org-roam-node-find)
(global-set-key (kbd "H-a t") 'org-roam-tag-add)
(global-set-key (kbd "H-a i") 'org-roam-node-insert)
(global-set-key (kbd "H-a u") 'org-roam-ui-open)

(setq org-roam-capture-templates '(
                                   ("d" "default" plain "%?"
                                    :target (file+head "${slug}.org"
                                                       "#+title: ${title}\n")
                                    :unnarrowed t)

                                   ("i" "Inbox entry" plain "%?"
                                    :target (file+head "inbox.org" "")
                                    :unnarrowed nil)
                                   ))

(use-package org-roam-ui :ensure t)

(global-set-key (kbd "H-a g") 'org-agenda)

(use-package projectile :ensure t)

;;;###autoload
(defun fdx/visit-or-projectile-visit (&optional a b)
  (interactive)
  (if (projectile-project-p)
      (call-interactively #'counsel-projectile-find-file)
    (call-interactively #'counsel-find-file)))

;;;###autoload
(defun fdx/ag-or-projectile-ag (&optional a b)
  (interactive)
  (if (projectile-project-p)
      (call-interactively #'projectile-ag)
    (call-interactively #'ag)))

(global-set-key (kbd "H-g") 'projectile-ripgrep)
(global-set-key (kbd "H-G") 'ag)

(use-package ag :ensure t)

(setq ag-reuse-buffers t)

(use-package ripgrep :ensure t)

(use-package wgrep :ensure t)
(use-package wgrep-ag :ensure t)
(require 'wgrep)
(require 'wgrep-ag)

(setq wgrep-auto-save-buffer t)

(use-package magit :ensure t)

(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c C-g") 'magit-status)

(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows)
  (magit-section-show-level-2-all))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))
(define-key magit-status-mode-map (kbd "q") 'magit-quit-session)

(custom-set-variables
 '(git-commit-fill-column 1000)
 '(git-commit-finish-query-functions nil)
 '(git-commit-summary-max-length 1000))

(use-package dockerfile-mode :ensure t)

(delete-selection-mode 1)

(global-display-line-numbers-mode 1)

(defun fdx/toggle-relative-absolute-line-numbers ()
  "Toggle between relative and absolute line numbers for dilplay-line-numbers-mode"
  (interactive)
  (if (eq display-line-numbers-type 'absolute)
      (setq display-line-numbers-type 'relative)
    (setq display-line-numbers-type 'absolute))
  (global-display-line-numbers-mode))
(global-set-key (kbd "H-9") 'fdx/toggle-relative-absolute-line-numbers)

(global-hl-line-mode 1)

;;;###autoload
(defun fdx/duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))

;;;###autoload
(defun fdx/move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

;;;###autoload
(defun fdx/move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

;;;###autoload
(defun fdx/open-line-below ()
  "Open an empty line above the current one and move."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

;;;###autoload
(defun fdx/open-line-above ()
  "Open an empty line above the current one and move."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key (kbd "C-<return>") 'fdx/open-line-below)
(global-set-key (kbd "C-S-<return>") 'fdx/open-line-above)

(defun fdx/paste-replacing-tabs-with-commas ()
  (interactive)
  (insert (replace-regexp-in-string "\t" "," (car kill-ring)))
  )

(require 'iso-transl)

(save-place-mode 1)

(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (expand-file-name "~/.emacs.d/backups")))))

(setq vc-make-backup-files t)
(setq create-lockfiles nil)

;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun fdx/rename-current-file (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive (list (read-string "sNew name: " (file-name-nondirectory (buffer-file-name)))))
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

;;;###autoload
(defun fdx/delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (when filename
      (if (vc-backend filename)
          (vc-delete-file filename)
        (progn
          (delete-file filename)
          (message "Deleted file %s" filename)
          (kill-buffer))))))

(defun fdx/touch-current-file ()
  "updates mtime on the file for the current buffer"
  (interactive)
  (shell-command (concat "touch " (shell-quote-argument (buffer-file-name))))
  (clear-visited-file-modtime))

(defun fdx/chmod-current-file ()
  "updates mtime on the file for the current buffer"
  (interactive)
  (chmod (buffer-file-name) (read-file-modes)))

(use-package yaml-mode :ensure t)

(defun fdx/reformat-yaml-file (filename)
  (interactive)
  (compile "yq -Sy < ~/bookmarks.yml")
  )

(global-set-key (kbd "H-8") (lambda () (interactive) (fdx/reformat-yaml-file (buffer-file-name))))

(use-package company :ensure t)

(use-package company-tabnine :ensure t)

(add-to-list 'company-backends #'company-tabnine)

(column-number-mode)

(use-package tree-sitter :ensure t)
(use-package tree-sitter-langs :ensure t)

(global-tree-sitter-mode)

(use-package lsp-mode :ensure t)

(add-hook 'ruby-ts-mode-hook #'lsp)
(add-hook 'ruby-mode-hook #'lsp)

(setq lsp-solargraph-autoformat t)

(use-package hydra :ensure t)

(use-package ruby-ts-mode :ensure t )

(with-eval-after-load "ruby-ts-mode"
  (define-key ruby-ts-mode-map (kbd "H-;") 'seeing-is-believing-mark-current-line-for-xmpfilter)
  (define-key ruby-ts-mode-map (kbd "H-=") 'lsp-format-buffer)
  (define-key ruby-ts-mode-map (kbd "H-+") 'fdx/reindent-buffer)
  (define-key ruby-ts-mode-map (kbd "C-c C-c") 'seeing-is-believing-run-as-xmpfilter)
  )

(use-package rvm
  :ensure t
  :config
  (rvm-use-default))

(use-package seeing-is-believing :ensure t)

(use-package rspec-mode
  :bind (
         ("H-r r"   . rspec-rerun)
         ("H-r t"   . rspec-toggle-spec-and-target)
         ("H-r v"   . rspec-verify)
         ("H-r a"   . rspec-verify-all)
         ("H-r H-a" . rspec-verify-all)
         ("H-r s"   . rspec-verify-single)
         ("H-r f"   . rspec-run-last-failed)
         )
  :ensure t)

(use-package ruby-electric :ensure t)

(require 'ruby-electric)
(electric-pair-mode t)

(use-package ruby-refactor
  :ensure t
  :hook (ruby-ts-mode . ruby-refactor-mode-launch)
  )

;; (eval-after-load 'ruby-refactor
;;   '(progn
;;      (define-key ruby-refactor-mode-map (kbd "C-c r e") 'ruby-refactor-extract-to-method)
;;      (define-key ruby-refactor-mode-map (kbd "C-c r l") 'ruby-refactor-extract-to-let)
;;      (define-key ruby-refactor-mode-map (kbd "C-c r v") 'ruby-refactor-extract-local-variable)
;;      (define-key ruby-refactor-mode-map (kbd "C-c r c") 'ruby-refactor-convert-post-conditional)))

(load (expand-file-name "~/.emacs.d/fdx/vendor/ruby-runner-mode/ruby-runner-mode.el") t)

(defun rrr/rubocop ()
  "Run Rubocop using Ruby Runner mode"
  (interactive)
  (rr/compile "bundle exec rubocop"))

(defun rrr/rubocop-autocorrect ()
  "Run Rubocop autocorrect using Ruby Runner mode"
  (interactive)
  (rr/compile "bundle exec rubocop --autocorrect; bundle exec rubocop"))

(defun fdx/run-erblint ()
  "Bind an interactively specified key to a new command."
  (interactive)
  (compile "erblint \"**/*.erb\""))

(defun fdx/run-erblint-autocorrect-on-current-file ()
  "Bind an interactively specified key to a new command."
  (interactive)
  (compile (concat
            "erblint --autocorrect "
            (file-relative-name (buffer-file-name) "/home/fedex/code/conquered_self"))
           ))

(defun rrr/cucumber ()
  "Run Rubocop using Ruby Runner mode"
  (interactive)
  (rr/compile "bundle exec cucumber"))

(global-set-key (kbd "H-i i") 'rr/rerun)

(which-key-add-key-based-replacements "H-i r" "RSpec")
(rr/global-set-key "H-i r a" "bundle exec rspec")
;; (rr/global-set-key-current-file "H-i r v" "rspec")
;; (rr/global-set-key-current-file "H-6" "rspec")

(which-key-add-key-based-replacements "H-i u" "Rubocop")
(rr/global-set-key "H-i u u" "bundle exec rubocop")
(rr/global-set-key "H-i u U" "bundle exec rubocop --autocorrect; bundle exec rubocop")
(rr/global-set-key "H-i u A" "bundle exec rubocop --autocorrect-all; bundle exec rubocop")
(rr/global-set-key "H-i u T" "bundle exec rubocop --regenerate-todo")
(global-set-key (kbd "H-i u c") (lambda ()(interactive) (compile "ruboclean")))
(which-key-add-key-based-replacements "H-i u c" "Ruboclean")

;; (rr/global-set-key-single "H-i u s" "bundle exec rubocop")
;; (rr/global-set-key-single "H-i u s" "bundle exec rubocop -a")

(which-key-add-key-based-replacements "H-i b" "Bundle")
(rr/global-set-key-multiple "H-i b b" '("bundle install" "pessimize -c patch --no-backup" "bundle install"))
(rr/global-set-key-multiple "H-i b B" '("bundle update" "pessimize -c patch --no-backup" "bundle install"))

;; (rr/global-set-key "H-i r" "ruby" (buffer-file-name)) <- this doesn't work

(which-key-add-key-based-replacements "H-i c" "Cucumber")
(rr/global-set-key "H-i c" "bundle exec cucumber")

(use-package web-mode :ensure t)

(with-eval-after-load "web-mode"
  (define-key web-mode-map (kbd "H-=") (lambda ()
                                         (interactive)
                                         (fdx/reindent-buffer)
                                         (fdx/run-erblint-autocorrect-on-current-file)))
  )

(use-package rhtml-mode :ensure t)

(use-package emmet-mode :ensure t)

(use-package slim-mode
  :bind (
         ("H-h" . emmet-expand-yas)
         ("H-=" . fdx/reindent-buffer)
         )
  :ensure t)

(use-package multiple-cursors :ensure t)

(require 'multiple-cursors)

(global-set-key (kbd "C-c C-a") 'mc/edit-lines)
(global-set-key (kbd "C-M-<return>") 'mc/edit-lines)

(global-set-key (kbd "C-c a") 'mc/mark-all-like-this)

(global-set-key (kbd "H-.") 'mc/mark-next-like-this)
(global-set-key (kbd "H-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "H->") 'mc/skip-to-next-like-this)

(global-set-key (kbd "H-p") 'mc/insert-numbers)

(use-package expand-region :ensure t)

(require 'expand-region)

(setq expand-region-fast-keys-enabled nil)

(global-set-key (kbd "H-e") 'er/expand-region)
(global-set-key (kbd "C-c e") 'er/expand-region)

(use-package compile
  :ensure nil
  :custom
  ;; (compilation-scroll-output 'first-error)
  (compilation-always-kill t)
  (compilation-max-output-line-length nil)
  :hook (compilation-mode . hl-line-mode))

(global-set-key (kbd "H-m") 'recompile)
(global-set-key (kbd "H-b") 'compile)

(defun fdx/run-current-file ()
  (interactive)
  (save-buffer)
  (compile (buffer-file-name)))

(defun fdx/run-current-ruby-file ()
  (interactive)
  (save-buffer)
  (compile (concat "ruby " (buffer-file-name))))

(defun fdx/run-current-ruby-file--docker-compose ()
  (interactive)
  (save-buffer)
  (compile (concat "docker-compose run --rm web bundle exec ruby /app/bin/" (file-name-nondirectory (buffer-file-name)))))

(defun fdx/run-current-python-file--docker ()
  (interactive)
  (save-buffer)
  (compile (concat "docker run -v .:/app python:3.9 python /app/" (file-name-nondirectory (buffer-file-name)))))

(defun fdx/run-current-python-file--docker-compose ()
  (interactive)
  (compile
   (concat "docker-compose run --rm app python "
           (replace-regexp-in-string
            "/home/fedex/code/ai-ruby/harvard-python-code"
            "/app"
            (buffer-file-name)))))

(require 'ansi-color)
(defun fdx/display-ansi-colors ()
  (interactive)
  (ansi-color-apply-on-region (point-min) (point-max)))

(require 'ansi-color)
(defun endless/colorize-compilation ()
  "Colorize from 'compilation-filter-start' to 'point'."
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region
     compilation-filter-start (point))))

(add-hook 'compilation-filter-hook
          'endless/colorize-compilation)

(use-package xterm-color :ensure t)
(require 'xterm-color)
(setq compilation-environment '("TERM=xterm-256color"))
(defun my/advice-compilation-filter (f proc string)
  (funcall f proc (xterm-color-filter string)))
(advice-add 'compilation-filter :around #'my/advice-compilation-filter)

(setenv "TERM" "256colors")

;;;###autoload
(defun fdx/reload-browser (&optional by)
  "Reload web browser"
  (interactive)
  (save-some-buffers)
  (save-window-excursion (async-shell-command "~/bin/reload-browser"))
  ;; (kill-buffer "*Async Shell Command*")
  )

;;;###autoload
(defun fdx/send-up-enter-to-current-window (&optional list)
  "Reload web browser"
  (interactive)
  (save-some-buffers)
  (save-window-excursion (async-shell-command "~/bin/send_to_current_window \"<Up>\" \"<Return>\""))
  ;; (kill-buffer "*Async Shell Command*")
  )

;;;###autoload
(defun fdx/set-current-window (&optional by)
  "Reload web browser"
  (interactive)
  (save-some-buffers)
  (save-window-excursion (async-shell-command "~/bin/set_current_window"))
  ;; (kill-buffer "*Async Shell Command*")
  )

;;;###autoload
(defun fdx/save-and-reload-browser (&optional by)
  "Save current buffer and reload web browser"
  (interactive)
  (save-buffer)
  (fdx/reload-browser)
  )

;;;###autoload
(defun fdx/save-and-reload-browser-with-delay (&optional by)
  "Save current buffer and reload web browser"
  (interactive)
  (save-buffer)
  (sleep-for 0.3)
  (fdx/reload-browser)
  )

;;;###autoload
(defun fdx/save-recompile-and-reload-browser-with-delay (&optional by)
  "Save current buffer and reload web browser"
  (interactive)
  (save-buffer)
  (recompile)
  (sleep-for 2.5)
  (fdx/reload-browser)
  )

(defun fdx/generate_ruby_framework_project (project-name)
  "Reload web browser"
  (interactive "sProject name: ")
  (message (concat "Generating project " project-name))
  (save-some-buffers)
  (save-window-excursion (async-shell-command (concat "~/bin/ruby_framework " project-name)))
  )

(defun fdx/generate_ruby_framework_web_project (project-name)
  "Reload web browser"
  (interactive "sProject name: ")
  (message (concat "Generating project " project-name))
  (save-some-buffers)
  (save-window-excursion (async-shell-command (concat "~/bin/ruby_framework_web " project-name)))
  )

(defun fdx/generate_ruby_framework_project_wip (project-name)
  "Reload web browser"
  (interactive "sProject name: ")
  (message (concat "Generating project " project-name))
  (save-some-buffers)
  (save-window-excursion (async-shell-command (concat "~/bin/ruby_framework_wip " project-name)))
  )

(use-package centered-cursor-mode :ensure t)

(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode))

(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))

(use-package string-inflection :ensure t)

(use-package docker :ensure t)

;; (use-package docker-tramp :ensure t)    ;

;;;###autoload
(defun fdx/file-name-to-clipboard ()
  "Copy current file name to clipboard"
  (interactive)
  (if (buffer-file-name)
      (progn
        (kill-new (buffer-file-name))
        (message (buffer-file-name))
        )
    (message "Current buffer is not visiting a saved file")
    )
  )

(use-package sudo-edit :ensure t)

(use-package nix-mode :ensure t)

(add-to-list 'auto-mode-alist '("\\.org\\'"      . org-mode))

  (add-to-list 'auto-mode-alist '("Gemfile\\'"     . ruby-ts-mode))
  (add-to-list 'auto-mode-alist '("Guardfile\\'"   . ruby-ts-mode))
  (add-to-list 'auto-mode-alist '("Rakefile\\'"    . ruby-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.env"         . ruby-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.gemspec\\'"  . ruby-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'"     . ruby-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'"       . ruby-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'"       . ruby-ts-mode))

  (add-to-list 'auto-mode-alist '("\\.html\\'"     . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'"      . rhtml-mode))

  (add-to-list 'auto-mode-alist '("\\Dockerfile\'" . dockerfile-mode))

  (add-to-list 'auto-mode-alist '("Makefile\\..*" . makefile-mode))

  (add-to-list 'auto-mode-alist '("\\.feature\\'" . feature-mode))

(add-to-list 'auto-mode-alist '("\\.nix\\'"      . nix-mode))
