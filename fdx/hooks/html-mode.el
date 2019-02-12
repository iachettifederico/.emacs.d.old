(hl-line-mode t)

(local-set-key (kbd "H-=") 'fdx/reindent-buffer)

(local-set-key (kbd "C-c e") 'fdx/erb-to-haml-and-change-file-extension)
(local-set-key (kbd "C-c u") 'fdx/erb-to-slim-and-change-file-extension)

(local-set-key (kbd "H-h") 'emmet-expand-yas)
