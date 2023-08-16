;;; Compiled snippets and support files for `haml-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'haml-mode
                     '(("table" "%table.table\n  %tr\n    %th To String\n    %th Inspect\n  - ${1:collection}.each do |${2:element}|\n    %tr\n      %td= $2.to_s\n      %td= $2.inspect\n" "Table" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/haml-mode/table.yasnippet" nil nil)
                       ("simple_form" "= simple_form_for ${1:model} do |f|\n  = f.error_notification\n  \n  .actions\n    = f.submit \"${2:Save}\" ${3:$(if (> (length yas-text) 0) \", class: '\" \"\")}${3:btn}${3:$(if (> (length yas-text) 0) \"'\" \"\")}\n\n  - # Fields: ${4:fields}\n  .form-inputs\n    ${4:$\n    (mapconcat\n      '(lambda (field) (concat \"= f.input :\" field))\n      (split-string yas-text \" \")\n      (concat \"\\n\" (make-string (current-column) 32)))\n    }\n    $0\n\n  .actions\n    = f.submit '$2' ${3:$(if (> (length yas-text) 0) \", class: '\" \"\")}$3${3:$(if (> (length yas-text) 0) \"'\" \"\")}\n" "Simple Form" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/haml-mode/simple_form.yasnippet" nil nil)
                       ("present" "- present(${1:model}) do |${2:${1:$(replace-regexp-in-string \"\\@\" \"\" yas-text)}}|\n  $0" "present" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/haml-mode/present.yasnippet" nil nil)
                       ("present-collection" "- present(${1:model}).each do |${2:${1:$(replace-regexp-in-string \"\\@\" \"\" yas-text)}}|\n  $0" "Present Collection" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/haml-mode/present-collection.yasnippet" nil nil)
                       ("layout" "!!! 5\n%html(lang=\"en\")\n  %head\n    %meta(charset=\"utf-8\")\n    %meta(http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\")\n    %meta(name=\"viewport\" content=\"width=device-width, initial-scale=1.0\")\n    %title Title\n  %body\n    = yield\n\n" "Haml Layout" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/haml-mode/layout.yasnippet" nil nil)
                       ("html" "html>(head>title+meta[charset=utf-8]+meta[name=\"viewport\" content=\"width=device-width, initial-scale=1\"]+link[media=\"all\" rel=\"stylesheet\" href=\"/css/style.css\"]+script[type=\"application/javascript\" src=\"/js/script.js\"])+body" "HTML Skeleton" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/haml-mode/html.yasnippet" nil nil)
                       ("bi" "{{$0}}" "Handlebars" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/haml-mode/handlebars.yasnippet" nil nil)
                       ("form_for" "- if $1.errors.any?\n  #error_explanation\n    %h2= \"#{pluralize($1.errors.count, \"error\")} prohibited this writer_application from being saved:\"\n    %ul\n      - $1.errors.full_messages.each do |msg|\n        %li= msg\n\n= form_for ${1:model} do |f|\n  .actions\n    = f.submit \"${2:Save}\" ${3:$(if (> (length yas-text) 0) \", class: '\" \"\")}${3:btn}${3:$(if (> (length yas-text) 0) \"'\" \"\")}\n\n  - # Fields: ${4:fields}\n  ${4:$\n  (mapconcat\n    '(lambda (field) (concat \"= f.input :\" field))\n    (split-string yas-text \" \")\n    (concat \"\\n\" (make-string (current-column) 32)))\n  }\n  $0\n\n  .actions\n    = f.submit '$2' ${3:$(if (> (length yas-text) 0) \", class: '\" \"\")}$3${3:$(if (> (length yas-text) 0) \"'\" \"\")}\n" "Form For" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/haml-mode/form_for.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:56 2023
