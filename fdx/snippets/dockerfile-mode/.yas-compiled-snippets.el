;;; Compiled snippets and support files for `dockerfile-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'dockerfile-mode
                     '(("dc" "ththth\n$0version: \"3.7\"\n\nservices:\n  database:\n    image: postgres:latest\n    restart: \"no\"\n    environment:\n      POSTGRES_PASSWORD: postgres\n    expose:\n      - 5432\n    ports:\n      - '5432:5432'\n    volumes:\n      - pg-data:/var/lib/postgresql/data\n\n  smtp:\n    image: sj26/mailcatcher:latest\n    restart: \"no\"\n    expose:\n      - 1025\n      - 1080\n    ports:\n      - '1025:1025'\n      - '1080:1080'\n    \n  redis:\n    image: redis:latest\n    restart: \"no\"\n    expose:\n      - 6379\n    ports:\n      - '6379:6379'\n    volumes:\n      - redis-data:/data\n\nvolumes:\n  redis-data:\n  pg-data:\n" "Docker compose" nil nil nil "/home/fedex/.emacs.d/fdx/snippets/dockerfile-mode/dc.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:56 2023
