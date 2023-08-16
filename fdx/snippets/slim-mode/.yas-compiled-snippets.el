;;; Compiled snippets and support files for `slim-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'slim-mode
                     '(("layout" "html\n  head\n    title\n      \n      meta{charset=\"utf-8\"}\n      meta{name=\"viewport\" content=\"width=device-width initial-scale=1\"}\n      link{media=\"all\" rel=\"stylesheet\" href=\"/css/style.css\"}\n      script{type=\"application/javascript\" src=\"/js/script.js\"}\n        \n  body\n    == yield\n" "Slim Layout" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/slim-mode/layout.yasnippet" nil nil)
                       ("dg" "- puts \"  >>>>> #{__FILE__}:#{__LINE__}\".red" "Debug" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/slim-mode/dg.yasnippet" nil nil)
                       ("dc" "- puts \"  >>>>> #{__FILE__}:#{__LINE__}\".red" "Debug 2" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/slim-mode/dc.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:57 2023
