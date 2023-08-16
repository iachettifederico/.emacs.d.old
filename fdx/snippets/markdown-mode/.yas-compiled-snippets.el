;;; Compiled snippets and support files for `markdown-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'markdown-mode
                     '(("taken" "<!-- take($0) -->" "{{{take(n}}}" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/markdown-mode/taken.yasnippet" nil nil)
                       ("shotn" "<!-- shot() -->" "{{{shot(1n}}}" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/markdown-mode/shotn.yasnippet" nil nil)
                       ("screencast" "#+TITLE:     ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"-\" \" - \" (replace-regexp-in-string \"\\[_*\\]\" \" \" fn)))`}\n#+SETUPFILE: ../defaults.org\n" "Screencast Layout" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/markdown-mode/screencast.yasnippet" nil nil)
                       ("lucid" "#+TITLE:     ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"-\" \" - \" (replace-regexp-in-string \"\\[_*\\]\" \" \" fn)))`}\n#+SETUPFILE: ../../defaults.org\n" "Lucid Screencasts Layout" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/markdown-mode/lucid.yasnippet" nil nil)
                       ("browser" "#+CAPTION: Browse http://localhost:9292/$1\n#+BEGIN_SRC browser :out $2.png\n<iframe src=\"http://localhost:9292/$1\" no-border>\n#+END_SRC\n$0" "#+BEGIN_SRC browser" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/markdown-mode/browser.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:56 2023
