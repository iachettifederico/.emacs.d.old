;;; Compiled snippets and support files for `emacs-lisp-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'emacs-lisp-mode
                     '(("usep" "(use-package $0 :ensure t)" "use-package" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/emacs-lisp-mode/usep.yasnippet" nil nil)
                       ("req" "(require '$0)" "require" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/emacs-lisp-mode/require.yasnippet" nil nil)
                       ("gsk" "(global-set-key (kbd \"${1:key}\") '${2:command})" "fdx/global-set-key" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/emacs-lisp-mode/gsk.yasnippet" nil nil)
                       ("dirlocals" "((${1:mode}\n  (${2:var} . ${0:val})))\n" "Directory Locals" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/emacs-lisp-mode/dirlocals.yasnippet" nil nil)
                       ("auto" ";;;###autoload" "autoload" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/emacs-lisp-mode/autoload.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:56 2023
