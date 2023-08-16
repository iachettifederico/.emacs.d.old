;;; Compiled snippets and support files for `ruby-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("frozen_string" "# frozen_string_literal: true\n" "Frozen string literal comment" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/frozen_string.yasnippet" nil nil)
                       ("expand_path" "$:.unshift(File.expand_path(\"../${1:relative path}\", __FILE__))$0" "Espand path" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/expand_path.yasnippet" nil nil)
                       ("dbg" "puts \"DBG: ${1:obj} => #{$1.inspect}\"$0" "Debug" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/dbg.yasnippet" nil nil)
                       ("cf" "`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"_\" \"\" fn))`" "Camel Case File Name" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/cf.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("lam" "->${1:$(if (> (length yas-text) 0) \" (\" \"\")}${1:variable}${1:$(if (> (length yas-text) 0) \")\" \"\")} { $0 }" "lambda" nil
                        ("blocks")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/blocks/lambda.yasnippet" nil nil)
                       ("do" "do${1:$(if (> (length yas-text) 0) \" |\" \"\")}${1:v}${1:$(if (> (length yas-text) 0) \"|\" \"\")}\n  $0\nend" "do" nil
                        ("blocks")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/blocks/do.yasnippet" nil nil)
                       ("doo" "{${1:$(if (> (length yas-text) 0) \" |\" \"\")}${1:v}${1:$(if (> (length yas-text) 0) \"|\" \"\")} $0 }\n" "doo" nil
                        ("blocks")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/blocks/do-bracket.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("tra" "${1:old_handler}${1:$(if (> (length text) 0) \" = \" \"\")}trap(${2::${3:INT}}) do\n  $0\nend" "trap" nil
                        ("concurrency")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/concurrency/trap.yasnippet" nil nil)
                       ("for" "${1:pid}${1:$(if (> (length text) 0) \" = \" \"\")}fork do\n  $0\nend" "fork" nil
                        ("concurrency")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/concurrency/fork.yasnippet" nil nil)
                       ("ate" "at_exit do\n  $0\nend" "at_exit" nil
                        ("concurrency")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/concurrency/at_exit.yasnippet" nil nil)
                       ("Thread" "${1:thread}${1:$(if (> (length text) 0) \" = \" \"\")}Thread.new${2:$(if (> (length text) 0) \"(\" \"\")}${2:args}${2:$(if (> (length text) 0) \")\" \"\")} {${3:$(if (> (length text) 0) \" |\" \"\")}${3:args}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "Thread.new" nil
                        ("concurrency")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/concurrency/Thread.new.yasnippet" nil nil)
                       ("Fiber" "${1:fiber}${1:$(if (> (length text) 0) \" = \" \"\")}Fiber.new do\n  $0\nend" "Fiber.new" nil
                        ("concurrency")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/concurrency/Fiber.new.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("pry" "require 'pry-byebug'; binding.pry" "binding.pry" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/pry.yasnippet" nil nil)
                       ("dgy" "puts \"  >>>>> #{__FILE__}:#{__LINE__}\".yellow" "Debug Yellow" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/dgy.yasnippet" nil nil)
                       ("dgr" "puts \"  >>>>> #{__FILE__}:#{__LINE__}\".red" "Debug Red" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/dgr.yasnippet" nil nil)
                       ("dgp" "puts \"  >>>>> #{__FILE__}:#{__LINE__}\".purple" "Debug Purple" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/dgp.yasnippet" nil nil)
                       ("dgg" "puts \"  >>>>> #{__FILE__}:#{__LINE__}\".green" "Debug Green" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/dgg.yasnippet" nil nil)
                       ("dgc" "puts \"  >>>>> #{__FILE__}:#{__LINE__}\"" "Debug No color" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/dgc.yasnippet" nil nil)
                       ("dgb" "puts \"  >>>>> #{__FILE__}:#{__LINE__}\".blue" "Debug Blue" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/dgb.yasnippet" nil nil)
                       ("dg" "puts \"  >>>>> #{__FILE__}:#{__LINE__}\".red" "Debug" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/dg.yasnippet" nil nil)
                       ("ap" "ap $0" "ap" nil
                        ("debug")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/debug/ap.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("while" "while ${1:condition}\n  $0\nend" "while" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/while.yasnippet" nil nil)
                       ("when" "when ${1:matcher}\n  $0" "when" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/when.yasnippet" nil nil)
                       ("until" "until ${1:condition}\n  $0\nend" "until" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/until.yasnippet" nil nil)
                       ("unless" "unless ${1:condition}\n  $0\nend" "unless" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/unless.yasnippet" nil nil)
                       ("struct" "${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} = Struct.new(${2:**attrs}, keyword_init: true)$0\n" "Strucu.new(args) do ..." nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/struct.yasnippet" nil nil)
                       ("reqr" "require_relative \"$0\"" "require_relative" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/require_relative.yasnippet" nil nil)
                       ("req" "require \"$0\"" "require" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/require.yasnippet" nil nil)
                       ("presenter" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < ApplicationPresenter\n  $0\nend" "Presenter" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/presenter.yasnippet" nil nil)
                       ("policy" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < ApplicationPolicy\n   $0\nend" "Policy" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/policy.yasnippet" nil nil)
                       ("os" "OpenStruct.new($0)" "OpenStruct.new" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/openstruct.yasnippet" nil nil)
                       ("mod" "module ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`}\n  $0\nend" "module" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/module.yasnippet" nil nil)
                       ("menu" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"_\" \"\" fn))`}\n  def self.menu(*args)\n    var = args.fetch(0) { return \"@prompt/Type Arg\" }\n    $0\n    \"- Done\"\n  end\nend" "class Menu" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/menu.yasnippet" nil nil)
                       ("if" "if ${1:condition}\n  $0\nend" "if" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/if.yasnippet" nil nil)
                       ("ife" "if ${1:condition}\n  $0\nelse\n\nend" "if... else" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/if... else.yasnippet" nil nil)
                       ("fform" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < ApplicationForm\n  $0\nend" "Form < Formulario::Form" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/fform.yasnippet" nil nil)
                       ("factory" "FactoryBot.define do\n  factory :${1:`(file-name-nondirectory\n            (file-name-sans-extension\n             (or (buffer-file-name)\n                 (buffer-name (current-buffer)))))`} do\n    ${2:field_name} { ${3:value} }\n  end\nend\n" "Factory" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/factory.yasnippet" nil nil)
                       ("enc" "# encoding: ${1:UTF-8}\n$0" "Encoding" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/encoding.yasnippet" nil nil)
                       ("elsif" "elsif ${1:condition}\n  $0" "elsif" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/elsif.yasnippet" nil nil)
                       ("dry_struct" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < Dry::Struct\n  $0\nend" "class Xxx < Dry::Struct..." nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/dry_struct.yasnippet" nil nil)
                       ("defsp" "def self.${1:class_method_name}\n  $0\nend\nprivate_class_method :$1" "def self private" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/defsp.yasnippet" nil nil)
                       ("defraise" "def ${1:method_name}\n  raise \"Subclass Responsibility\"$0\nend" "def raise subclass responsibility" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/defraise.yasnippet" nil nil)
                       ("defm" "define_method(:${1:${2:method_name}}) do${3:$(if (> (length yas-text) 0) \" |\" \"\")}${3:variable}${3:$(if (> (length yas-text) 0) \"|\" \"\")}\n  $0\nend" "define_method" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/define_method.yasnippet" nil nil)
                       ("def" "def ${1:method_name}\n  $0\nend" "def" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/def.yasnippet" nil nil)
                       ("defs" "def self.${1:class_method_name}\n  $0\nend" "def self" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/def self.yasnippet" nil nil)
                       ("defmm" "def method_missing(method, *args, &block)\n  $0\nend" "def method_missing" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/def method_missing.yasnippet" nil nil)
                       ("init" "def initialize${1:$(if (> (length yas-text) 0) \"(\" \"\")}${1:args}${1:$(if (> (length yas-text) 0) \")\" \"\")}\n  $0\nend" "def initialize" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/def initialize.yasnippet" nil nil)
                       ("ctor" "def initialize(${1:args})\n  ${1:$\n(mapconcat\n '(lambda (x) (concat \"@\" x \" = \" x))\n (split-string yas-text \", \")\n (concat \"\\n\" (make-string (current-column) 32)))\n}$0\nend\n" "def initialize(...)" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/ctor.yasnippet" nil nil)
                       ("component" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < ApplicationComponent\n  def initialize($0)\n  end\nend" "View Component compontent" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/component.yasnippet" nil nil)
                       ("clan" "${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`}" "Class Name" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/class_name.yasnippet" nil nil)
                       ("cla" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`}\n  $0\nend" "class ..." nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/class.yasnippet" nil nil)
                       ("claa" "# frozen_string_literal: true\n\nclass ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`}\n  def self.${0:a}\n    new\n  end\n\n  private\n\n  def initialize\n  end\nend" "Snippet Name" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/claa.yasnippet" nil nil)
                       ("case" "case ${1:object}\nwhen ${2:matcher}\n  $0\nend" "case" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/case.yasnippet" nil nil)
                       ("begin" "begin\n  $0\nrescue ${1:Exception}${2:$(if (> (length yas-text) 0) \" => \" \"\")}${2:error}\n\nend" "begin" nil
                        ("declarations")
                        ((yas/indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/begin.yasnippet" nil nil)
                       ("w" "attr_writer :$0" "attr_writer" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/attr_writer.yasnippet" nil nil)
                       ("r" "attr_reader :$0" "attr_reader" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/attr_reader.yasnippet" nil nil)
                       ("rw" "attr_accessor :$0" "attr_accessor" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/attr_accessor.yasnippet" nil nil)
                       ("attr" "attribute :$0" "Attribute" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/attr.yasnippet" nil nil)
                       ("am" "alias_method :${1:new_name}, :${2:old_name}" "alias_method" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/alias_method.yasnippet" nil nil)
                       ("alias" "alias :${1:new_name} :${2:old_name}" "alias" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/alias.yasnippet" nil nil)
                       ("#" "# => " "Result Marker" nil
                        ("declarations")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/declarations/Result Marker.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("db" "DATABASE_URL=postgres://postgres:postgres@localhost:5432/$0-development" "db" nil
                        ("dotenv")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/dotenv/dotenv.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("gemfile_rails" "source \"https://rubygems.org\"\n\ngem 'rails'\ngem 'thin'\ngem 'pg'\n\ngroup :doc do\n  gem 'sdoc'\nend\n\ngroup :test do\n  gem 'rspec'\n  # gem 'factory_girl'\n  # gem 'factory_girl_rails'\nend\n\ngroup :development do\n  gem 'pry-rails'\n  gem 'rspec-rails'\n  gem 'capistrano'\n  gem 'pessimize'\nend\n\ngem 'sass-rails'\ngem 'uglifier'\ngem 'coffee-rails'\ngem 'haml-rails'\ngem 'jquery-rails'\ngem 'jquery-ui-rails'\ngem 'therubyracer'\n\ngem 'less-rails'\ngem 'twitter-bootstrap-rails'\n\ngem 'devise'\ngem 'devise_invitable'\n\ngem 'simple_form'\n\ngem 'mystique'\n\n# gem 'rails_best_practices'\n# gem 'carrierwave'\n# gem 'rmagick'\n# gem 'rabl'\n" "Rails Gemfile" nil
                        ("gemfile")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/gemfile/gemfile_rails.yasnippet" nil nil)
                       ("gemfile" "source \"https://rubygems.org\"\n$0\n# gem \"puma\"\n# gem \"thin\"\n# gem \"rails\"\n# gem \"roda\"\n\ngem \"awesome_print\"\n\ngroup :test do\n  gem \"rspec\"\nend\n\ngroup :development do\n  gem \"pry-byebug\"\n  gem \"rake\"\nend\n" "Gemfile" nil
                        ("gemfile")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/gemfile/gemfile.yasnippet" nil nil)
                       ("gem" "gem \"$0\"" "gem" nil
                        ("gemfile")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/gemfile/gem.yasnippet" nil nil)
                       ("bundler_inline" "require \"bundler/inline\"\n\ngemfile do\n  source \"https://rubygems.org\"\n  $0\nend" "Bundler inline" nil
                        ("gemfile")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/gemfile/bundler_inline.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("hview" "module ${1:Slice}\n  module Views\n    module ${2:Module}\n      class ${3:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < View::Base\n        $0\n      end\n    end\n  end\nend\n" "Hanami View" nil
                        ("hanami")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/hanami/view.yasnippet" nil nil)
                       ("slice" "slice :${1:slice}, at: \"/$1\" do\n  root to: \"$0\"\nend" "Route Slice" nil
                        ("hanami")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/hanami/slice.yasnippet" nil nil)
                       ("haction" "module ${1:Slice}\n  module Actions\n    module ${2:Module}\n      class ${3:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < $1::Action\n        def handle(req, res)\n          $0\n          res.render view\n        end\n      end\n    end\n  end\nend\n" "Hanami Action" nil
                        ("hanami")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/hanami/action.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("fet" "fetch(${1:key}) {${2:$(if (> (length yas-text) 0) \" |\" \"\")}${2:key}${2:$(if (> (length yas-text) 0) \"|\" \"\")} $0 }" "fetch" nil
                        ("hashes")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/hashes/fetch.yasnippet" nil nil)
                       ("del" "delete(${1:object}) {${2:$(if (> (length yas-text) 0) \" |\" \"\")}${2:key}${2:$(if (> (length yas-text) 0) \"|\" \"\")} $0 }" "delete" nil
                        ("hashes")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/hashes/delete.yasnippet" nil nil)
                       ("Hash" "Hash.new { |${1:hash}, ${2:key}| $1[$2] = $0 }" "Hash.new" nil
                        ("hashes")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/hashes/Hash.new.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("relp" "File.join(File.dirname(__FILE__), ${1:*%w[${2:rel path here}]})" "relative_path" nil
                        ("io")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/io/relative_path.yasnippet" nil nil)
                       ("ope" "open(${1:\"${2:path}\"}${3:$(if (> (length yas-text) 0) \", \\\\\\\"\" \"\")}${3:w}${3:$(if (> (length yas-text) 0) \"\\\\\\\"\" \"\")}) do |${4:io}|\n  $0\nend" "open" nil
                        ("io")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/io/open.yasnippet" nil nil)
                       ("for" "foreach(${1:\"${2:path}\"}${3:$(if (> (length yas-text) 0) \", encoding: \\\\\\\"\" \"\")}${3:UTF-8}${3:$(if (> (length yas-text) 0) \"\\\\\\\"\" \"\")}) do |${4:line}|\n  $0\nend" "foreach" nil
                        ("io")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/io/foreach.yasnippet" nil nil)
                       ("dir" "File.dirname(__FILE__)" "directory" nil
                        ("io")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/io/directory.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("zip" "zip(${1:enums}) do |${2:row}|\n  $0\nend" "zip" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/zip.yasnippet" nil nil)
                       ("wo" "with_object { |${1:e}, ${2:o}| $0 }" "with_object" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/with_object.yasnippet" nil nil)
                       ("wi" "with_index { |${1:e}, ${2:i}| $0 }" "with_index" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/with_index.yasnippet" nil nil)
                       ("upt" "upto(${1:10}) do${2:$(if (> (length text) 0) \" |\" \"\")}${2:n}${2:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "upto" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/upto.yasnippet" nil nil)
                       ("tim" "times do${1:$(if (> (length text) 0) \" |\" \"\")}${1:n}${1:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "times" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/times.yasnippet" nil nil)
                       ("tap" "tap do${1:$(if (> (length text) 0) \" |\" \"\")}${1:object}${1:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "tap" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/tap.yasnippet" nil nil)
                       ("takw" "take_while { |${1:e}| $0 }" "take_while" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/take_while.yasnippet" nil nil)
                       ("sub" "sub(${1:/${2:pattern}/}) {${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "sub" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/sub.yasnippet" nil nil)
                       ("ste" "step(${1:2}) do${2:$(if (> (length text) 0) \" |\" \"\")}${2:n}${2:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "step" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/step.yasnippet" nil nil)
                       ("sorb" "sort_by { |${1:e}| $0 }" "sort_by" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/sort_by.yasnippet" nil nil)
                       ("sor" "sort { |${1:a}, ${2:b}| $0 }" "sort" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/sort.yasnippet" nil nil)
                       ("slib" "slice_before${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:e}${3:$(if (> (length text) 0) \", \" \"\")}${3:state}| $0 }" "slice_before" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/slice_before.yasnippet" nil nil)
                       ("sel" "select { |${1:e}| $0 }" "select" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/select.yasnippet" nil nil)
                       ("sca" "scan(${1:/${2:pattern}/}) do${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "scan" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/scan.yasnippet" nil nil)
                       ("reve" "reverse_each do |${1:e}|\n  $0\nend" "reverse_each" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/reverse_each.yasnippet" nil nil)
                       ("rej" "reject { |${1:e}| $0 }" "reject" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/reject.yasnippet" nil nil)
                       ("red" "reduce${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:result}, ${3:e}| $0 }" "reduce" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/reduce.yasnippet" nil nil)
                       ("par" "partition { |${1:e}| $0 }" "partition" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/partition.yasnippet" nil nil)
                       ("one" "one? { |${1:e}| $0 }" "one?" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/one?.yasnippet" nil nil)
                       ("non" "none? { |${1:e}| $0 }" "none?" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/none?.yasnippet" nil nil)
                       ("minb" "minmax_by { |${1:e}| $0 }" "minmax_by" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/minmax_by.yasnippet" nil nil)
                       ("min" "minmax { |${1:a}, ${2:b}| $0 }" "minmax" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/minmax.yasnippet" nil nil)
                       ("minb" "min_by { |${1:e}| $0 }" "min_by" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/min_by.yasnippet" nil nil)
                       ("min" "min { |${1:a}, ${2:b}| $0 }" "min" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/min.yasnippet" nil nil)
                       ("maxb" "max_by { |${1:e}| $0 }" "max_by" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/max_by.yasnippet" nil nil)
                       ("max" "max { |${1:a}, ${2:b}| $0 }" "max" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/max.yasnippet" nil nil)
                       ("map" "map { |${1:e}| $0 }" "map" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/map.yasnippet" nil nil)
                       ("loo" "loop do\n  $0\nend" "loop" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/loop.yasnippet" nil nil)
                       ("lin" "lines${1:$(if (> (length text) 0) \"(\" \"\")}${1:\"${2:\\n}\"}${1:$(if (> (length text) 0) \")\" \"\")} do |${3:line}|\n  $0\nend" "lines" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/lines.yasnippet" nil nil)
                       ("keei" "keep_if { |${1:e}| $0 }" "keep_if" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/keep_if.yasnippet" nil nil)
                       ("inj" "inject${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:result}, ${3:e}| $0 }" "inject" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/inject.yasnippet" nil nil)
                       ("gsu" "gsub(${1:/${2:pattern}/}) {${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "gsub" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/gsub.yasnippet" nil nil)
                       ("grob" "group_by { |${1:e}| $0 }" "group_by" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/group_by.yasnippet" nil nil)
                       ("gre" "grep(${1:/${2:pattern}/}) {${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "grep" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/grep.yasnippet" nil nil)
                       ("flam" "flat_map { |${1:e}| $0 }" "flat_map" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/flat_map.yasnippet" nil nil)
                       ("fini" "find_index { |${1:e}| $0 }" "find_index" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/find_index.yasnippet" nil nil)
                       ("fina" "find_all { |${1:e}| $0 }" "find_all" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/find_all.yasnippet" nil nil)
                       ("fin" "find${1:$(if (> (length text) 0) \"(lambda { \" \"\")}${1:default}${1:$(if (> (length text) 0) \" })\" \"\")} { |${2:e}| $0 }" "find" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/find.yasnippet" nil nil)
                       ("fil" "fill(${1:range}) {${2:$(if (> (length text) 0) \" |\" \"\")}${2:i}${2:$(if (> (length text) 0) \"|\" \"\")} $0 }" "fill" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/fill.yasnippet" nil nil)
                       ("eawo" "each_with_object(${1:object}) do |${2:e}, ${3:o}|\n  $0\nend" "each_with_object" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_with_object.yasnippet" nil nil)
                       ("eawi" "each_with_index do |${1:e}, ${2:i}|\n  $0\nend" "each_with_index" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_with_index.yasnippet" nil nil)
                       ("eav" "each_value do |${1:value}|\n  $0\nend" "each_value" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_value.yasnippet" nil nil)
                       ("eas" "each_slice do |${1:group}|\n  $0\nend" "each_slice" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_slice.yasnippet" nil nil)
                       ("eap" "each_pair do |${1:key}, ${2:value}|\n  $0\nend" "each_pair" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_pair.yasnippet" nil nil)
                       ("eal" "each_line${1:$(if (> (length text) 0) \"(\" \"\")}${1:\"${2:\\n}\"}${1:$(if (> (length text) 0) \")\" \"\")} do |${3:line}|\n  $0\nend" "each_line" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_line.yasnippet" nil nil)
                       ("eak" "each_key do |${1:key}|\n  $0\nend" "each_key" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_key.yasnippet" nil nil)
                       ("eai" "each_index do |${1:i}|\n  $0\nend" "each_index" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_index.yasnippet" nil nil)
                       ("eae" "each_entry do |${1:e}|\n  $0\nend" "each_entry" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_entry.yasnippet" nil nil)
                       ("eac" "each_cons do |${1:group}|\n  $0\nend" "each_cons" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_cons.yasnippet" nil nil)
                       ("eac" "each_codepoint do |${1:codepoint}|\n  $0\nend" "each_codepoint" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_codepoint.yasnippet" nil nil)
                       ("eac" "each_char do |${1:char}|\n  $0\nend" "each_char" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_char.yasnippet" nil nil)
                       ("eab" "each_byte do |${1:byte}|\n  $0\nend" "each_byte" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each_byte.yasnippet" nil nil)
                       ("ea" "each do |${1:e}|\n  $0\nend" "each" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/each.yasnippet" nil nil)
                       ("drow" "drop_while { |${1:e}| $0 }" "drop_while" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/drop_while.yasnippet" nil nil)
                       ("dow" "downto(${1:0}) do${2:$(if (> (length text) 0) \" |\" \"\")}${2:n}${2:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "downto" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/downto.yasnippet" nil nil)
                       ("det" "detect${1:$(if (> (length text) 0) \"(lambda { \" \"\")}${1:default}${1:$(if (> (length text) 0) \" })\" \"\")} { |${2:e}| $0 }" "detect" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/detect.yasnippet" nil nil)
                       ("deli" "delete_if { |${1:e}| $0 }" "delete_if" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/delete_if.yasnippet" nil nil)
                       ("cyc" "cycle${1:$(if (> (length text) 0) \"(\" \"\")}${1:10}${1:$(if (> (length text) 0) \")\" \"\")} do |${2:e}|\n  $0\nend" "cycle" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/cycle.yasnippet" nil nil)
                       ("cou" "count { |${1:e}| $0 }" "count" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/count.yasnippet" nil nil)
                       ("colc" "collect_concat { |${1:e}| $0 }" "collect_concat" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/collect_concat.yasnippet" nil nil)
                       ("col" "collect { |${1:e}| $0 }" "collect" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/collect.yasnippet" nil nil)
                       ("cod" "codepoints do |${1:codepoint}|\n  $0\nend" "codepoints" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/codepoints.yasnippet" nil nil)
                       ("chu" "chunk${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:e}${3:$(if (> (length text) 0) \", \" \"\")}${3:state}| $0 }" "chunk" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/chunk.yasnippet" nil nil)
                       ("cha" "chars do |${1:char}|\n  $0\nend" "chars" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/chars.yasnippet" nil nil)
                       ("byt" "bytes do |${1:byte}|\n  $0\nend" "bytes" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/bytes.yasnippet" nil nil)
                       ("bse" "bsearch { |${1:e}| $0 }" "bsearch" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/bsearch.yasnippet" nil nil)
                       ("any" "any? { |${1:e}| $0 }" "any?" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/any?.yasnippet" nil nil)
                       ("all" "all? { |${1:e}| $0 }" "all?" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/all?.yasnippet" nil nil)
                       ("Array" "Array.new(${1:10}) {${2:$(if (> (length text) 0) \" |\" \"\")}${2:i}${2:$(if (> (length text) 0) \"|\" \"\")} $0 }" "Array.new" nil
                        ("iterators")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/iterators/Array.new.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("for_gem" "require \"zeitwerk\"\nloader = Zeitwerk::Loader.for_gem\nloader.setup\n" "Zeitwerk for_gem" nil
                        ("loader")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/loader/for_gem.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("model" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < ActiveRecord::Base\n  $0\nend" "Model" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/model.yasnippet" nil nil)
                       ("log" "Rails.logger.info(${1:object}.inspect)$0" "Print to the Rails logger" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/log.yasnippet" nil nil)
                       ("defh" "def ${1:method_name}\n  $0\nend\nhelper_method :$1" "Helper Method" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/defh.yasnippet" nil nil)
                       ("ctrl" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < ApplicationController\n  $0\nend" "Controller" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/controller.yasnippet" nil nil)
                       ("ar_sg" "def ${1:attr}=(${2:val})\n  write_attribute(:$1, $2$0)\nend\n\ndef $1\n  read_attribute(:$1)$0\nend\n" "ActiveRecord Setter and Getter" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/ar_sg.yasnippet" nil nil)
                       ("ar_s" "def ${1:attr}=(${2:val})\n  write_attribute(:$1, $2$0)\nend" "ActiveRecord Setter" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/ar_s.yasnippet" nil nil)
                       ("ar_gs" "def ${1:attr}\n  read_attribute(:$1)$0\nend\n\ndef $1=(${3:val})\n  write_attribute(:$1, $3$0)\nend\n" "ActiveRecord Getter and Setter" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/ar_gs.yasnippet" nil nil)
                       ("ar_g" "def ${1:attr}\n  read_attribute(:$1)$0\nend\n" "ActiveRecord Getter" nil
                        ("rails")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rails/ar_g.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("tas" "${1:$(if (> (length text) 0) \"desc \\\\\\\"\" \"\")}${1:Task description}${1:$(if (> (length text) 0) \"\\\\\\\"\\n\" \"\")}task :${2:${3:task_name} => ${4:%w[${5:dependent tasks}]}} do\n  $0\nend" "task" nil
                        ("rake")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rake/task.yasnippet" nil nil)
                       ("rul" "rule(${1:\"${2:.ext}\"} => ${3:%w[${4:.c}]}) do\n  $0\nend" "rule" nil
                        ("rake")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rake/rule.yasnippet" nil nil)
                       ("nam" "namespace :${1:`(downcase (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`} do\n  $0\nend" "namespace" nil
                        ("rake")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rake/namespace.yasnippet" nil nil)
                       ("fil" "file \"${1:.ext}\" => %w[${2:pre.o reqs.o}] do\n  $0\nend" "file" nil
                        ("rake")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rake/file.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("roda" "require \"roda\"\n\nclass ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`} < Roda\n  plugin :render\n  plugin :empty_root\n\n  plugin :h\n\n  plugin :sessions, secret: ENV['RACK_SECRET']\n  plugin :flash\n\n  plugin :public\n  plugin :partials\n\n  route do |r|\n    r.root do\n      \"<h1>Welcome</h1>\"$0\n    end\n  end\nend" "Roda App" nil
                        ("roda")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/roda/roda.yasnippet" nil nil)
                       ("plugin" "plugin :${1:name}" "Roda Plugin" nil
                        ("roda")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/roda/plugin.yasnippet" nil nil)
                       ("on" "r.on ${1:matcher} do\n  $0\nend" "Roda on" nil
                        ("roda")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/roda/on.yasnippet" nil nil)
                       ("rload" "Dir[\"./${1:directory}/*.rb\"].each{|f| require f}\n" "Roda Load Directory" nil
                        ("roda")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/roda/load_directory.yasnippet" nil nil)
                       ("is" "r.is ${1:matcher} do\n  $0\nend" "Roda is" nil
                        ("roda")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/roda/is.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("wh" "When${1:$(if (> (length yas-text) 0) \"(:\" \"\")}${1:var}${1:$(if (> (length yas-text) 0) \")\" \"\")} { $0 }" "When { ... }" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/when.yasnippet" nil nil)
                       ("todo" "it \"TODO: $0\"" "todo" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/todo.yasnippet" nil nil)
                       ("th" "Then { $0 }" "Then { ... }" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/then.yasnippet" nil nil)
                       ("tdd_rspec" "require \"spec_helper\"\n\nclass `(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`Factory\n\nend\n\nRSpec.describe \"$1\" do\n  let(:f) { `(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n                 (or (buffer-file-name)\n                     (buffer-name (current-buffer))))))))\n       (replace-regexp-in-string \"\\[_*\\]\" \"\" fn))`Factory.new }\n\n  $0\nend" "RSpec file for 10 Pines TDD" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/tdd_rspec.yasnippet" nil nil)
                       ("rspecrails" "require 'rails_helper'\n\nRSpec.describe $1, type: :model do\n  $0\nend\n\n" "Rspec Rails spec" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/rspecrails" nil nil)
                       ("rspec" "# frozen_string_literal: true\n\nRSpec.describe $1 do\n  $0\nend\n\n" "Rspec spec" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/rspec.yasnippet" nil nil)
                       ("let!" "let!(:${1:name}) { $0 }" "let!" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/let_bang.yasnippet" nil nil)
                       ("let" "let(:${1:name}) { $0 }" "let" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/let.yasnippet" nil nil)
                       ("itt" "it { expect(${1:actual}).to eq(${2:expected}) }" "itt" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/itt.yasnippet" nil nil)
                       ("it" "it \"${1:does something}\" do\n  $0\nend" "it" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/it.yasnippet" nil nil)
                       ("gi" "Given${1:$(if (> (length yas-text) 0) \"(:\" \"\")}${1:var}${1:$(if (> (length yas-text) 0) \")\" \"\")} { $0 }" "Given(...) { ... }" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/given.yasnippet" nil nil)
                       ("exrarg" "expect {\n  $1\n}.to raise_error(ArgumentError, \"missing keywords: :$0\")\n" "Expect to raise ArgumentError" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/expect_raise_argument_error.yasnippet" nil nil)
                       ("exb" "expect {\n  ${1:actual}\n}.to raise_error(${2:RuntimeError})" "Expect to raise error" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/expect_error.yasnippet" nil nil)
                       ("ex" "expect(${1:actual}).to eq(${2:expected})" "Expect" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/expect.yasnippet" nil nil)
                       ("desc" "describe ${1:something} do\n  $0\nend" "describe" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/describe.yasnippet" nil nil)
                       ("ctx" "context \"${1:in this context}\" do\n  it$0\nend" "context" nil
                        ("rspec-mode")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/rspec-mode/context.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("xit" "xit \"${1:does something}\"\n  $0\nend" "xit" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/xit.yasnippet" nil nil)
                       ("tes" "test \"${1:does this thing}\" do\n  $0\nend" "test" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/test.yasnippet" nil nil)
                       ("sub" "subject${1:$(if (> (length text) 0) \"(:\" \"\")}${1:name}${1:$(if (> (length text) 0) \")\" \"\")} { $0 }" "subject" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/subject.yasnippet" nil nil)
                       ("specify" "specify \"${1:does something}\" do\n  $0\nend" "specify" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/specify.yasnippet" nil nil)
                       ("spec" "spec ${1:something} do\n  $0\nend" "spec" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/spec.yasnippet" nil nil)
                       ("ski" "skip${1:$(if (> (length text) 0) \" \\\\\\\"\" \"\")}${1:reason this code is skipped}${1:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}$0" "skip" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/skip.yasnippet" nil nil)
                       ("scope" "scope ${1:some scope} do\n  spec ${2:somehing} do\n    $0\n  end\nend" "Scope" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/scope.yasnippet" nil nil)
                       ("rep" "x.report(\"${1:something}\") do\n  $0\nend\n" "x.report" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/rep.yasnippet" nil nil)
                       ("pen" "pending${1:$(if (> (length yas-text) 0) \" \\\\\\\"\" \"\")}${1:reason this isn't active yet}${1:$(if (> (length yas-text) 0) \"\\\\\\\"\" \"\")}${2: do\n  $0\nend}" "pending" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/pending.yasnippet" nil nil)
                       ("matest_roda" "require \"spec_helper\"\nrequire \"./models/`(replace-regexp-in-string \"_spec.rb\\$\" \"\" (buffer-name (current-buffer)))`$1\"\n\nscope do\n  spec do\n    true$0\n  end\nend" "Matest File for Roda" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/matest_roda.yasnippet" nil nil)
                       ("matest" "require \"spec_helper\"\nrequire \"`(replace-regexp-in-string \"_spec.rb\\$\" \"\" (buffer-name (current-buffer)))`$1\"\n\nscope do\n  spec do\n    $0\n  end\nend" "Matest File" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/matest.yasnippet" nil nil)
                       ("ips" "require \"benchmark/ips\"\n\nBenchmark.ips do |x|\n  x.config(time: 5, warmup: 2)\n\n  rep$0\n\n  x.compare!\nend" "Benchmark Ips" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/ips.yasnippet" nil nil)
                       ("fgc" "FactoryGirl.create(:$0)" "Factory Girl create" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/factory_girl_create.yasnippet" nil nil)
                       ("fgb" "FactoryGirl.build(:$0)" "Factory Girl build" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/factory_girl_build.yasnippet" nil nil)
                       ("expectii" "expect(${1:actual}).to include(${2:expected})\n" "Expect to include (no count)" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/expect_include_no_count.yasnippet" nil nil)
                       ("expecti" "expect(${1:actual}).to include(${2:expected})\nexpect($1.count).to eql($3)" "Expect to include" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/expect_include.yasnippet" nil nil)
                       ("clat" "class ${1:`(jeg2/camelize (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`} < MiniTest::Unit::TestCase\n  $0\nend" "class test" nil
                        ("tests")
                        ((yas/indent-line 'fixed)
                         (yas/wrap-around-region 'nil))
                        "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/class test.yasnippet" nil nil)
                       ("bef" "before${1:$(if (> (length yas-text) 0) \" :\" \"\")}${1:all} do\n  $0\nend" "before" nil
                        ("tests")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tests/before.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("simplecov" "require 'simplecov'\nSimpleCov.start do\n  add_filter \"/spec/\"\nend\n" "SimpleCov" nil
                        ("tools")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tools/simplecov.yasnippet" nil nil)
                       ("AP" "require \"awesome_print\"\nAwesomePrint.defaults = {\n  indent: 2,\n  index:  false,\n}\n$0" "require awesome_print" nil
                        ("tools")
                        nil "/home/fedex/.emacs.d/fdx/snippets/ruby-mode/tools/amazing_print.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:57 2023
