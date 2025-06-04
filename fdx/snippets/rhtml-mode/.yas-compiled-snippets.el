;;; Compiled snippets and support files for `rhtml-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rhtml-mode
                     '(("=" "<%= $0 %>" "<%= ... %>" nil nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/rr.yasnippet"
                        nil nil)
                       ("-" "<% $0 %>" "<% ... %>" nil nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/r.yasnippet"
                        nil nil)
                       ("ife"
                        "<% if $0 %>\n  \n<% else %>\n  \n<% end %>"
                        "ERB if else" nil nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/ife.yasnippet"
                        nil nil)
                       ("if" "<% if $0 %>\n  \n<% end %>" "ERB if" nil
                        nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/if.yasnippet"
                        nil nil)
                       ("html"
                        "html>(head>title+meta[charset=utf-8]+meta[name=\"viewport\" content=\"width=device-width, initial-scale=1\"]+link[media=\"all\" rel=\"stylesheet\" href=\"/css/style.css\"]+script[type=\"application/javascript\" src=\"/js/script.js\"])+body"
                        "HTML Skeleton" nil nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/html.yasnippet"
                        nil nil)
                       ("bi" "{{$0}}\n" "Handlebars" nil nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/handlebars.yasnippet"
                        nil nil)
                       ("end" "<% end %>$0" "ERB end" nil nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/end.yasnippet"
                        nil nil)
                       ("else" "<% else %>" "ERB else" nil nil nil
                        "/home/fedex/.emacs.d/fdx/snippets/rhtml-mode/else.yasnippet"
                        nil nil)))


;;; Do not edit! File generated at Tue May 13 15:11:06 2025
