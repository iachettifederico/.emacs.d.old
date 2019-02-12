(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

;;(ido-ubiquitous t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      )

(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

(setq ido-vertical-show-count t)

(setq ido-file-extensions-order '(".rb" ".org" ".el" ".txt" ".emacs" ))
