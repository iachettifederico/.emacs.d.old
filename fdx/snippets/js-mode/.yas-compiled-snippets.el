;;; Compiled snippets and support files for `js-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'js-mode
                     '(("dg" "console.log(\"$0\")" "Debug 2" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/js-mode/debug/dg.yasnippet" nil nil)
                       ("dc" "console.log(\"$0\")" "Debug" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/js-mode/debug/dc.yasnippet" nil nil)
                       ("ap" "console.log($0)" "ap" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/js-mode/debug/ap.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'js-mode
                     '(("f" "function ${1:name} ($2) {\n  $0\n};" "function" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/js-mode/declarations/f.yasnippet" nil nil)
                       ("ctrl" "import { Controller } from \"stimulus\"\n\nexport default class extends Controller {\n  static targets = [ ]\n\n  connect() {\n    $0\n  }\n\n}" "Stimulus controller" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/js-mode/declarations/ctrl.yasnippet" nil nil)
                       ("af" "async function ${1:name} ($2) {\n  $0\n};" "function" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/js-mode/declarations/ap.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:56 2023
