;;; Compiled snippets and support files for `rjsx-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
                     '(("import" "import $1 from '$2';\n" "Jsx Import" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/rjsx-mode/import.yasnippet" nil nil)
                       ("constructor" "constructor(props) {\n  super(props);\n  \n  this.state = { $1: this.props.$1 };\n}\n" "React Constructor" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/rjsx-mode/constructor.yasnippet" nil nil)
                       ("component" "import React, { PropTypes } from 'react';\n\nexport default class $1 extends React.Component {\n  render() {\n    return (\n      <div>\n        $1$0\n      </div>\n    );\n  }\n}\n" "React Component" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/rjsx-mode/component.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:56 2023
