;;; Compiled snippets and support files for `yaml-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'yaml-mode
                     '(("dc" "$0version: \"3.7\"\n\nservices:\n  database:\n    image: postgres:latest\n    restart: \"no\"\n    environment:\n      POSTGRES_PASSWORD: postgres\n    expose:\n      - 5432\n    ports:\n      - '5432:5432'\n    volumes:\n      - pg-data:/var/lib/postgresql/data\n\n  smtp:\n    image: sj26/mailcatcher:latest\n    restart: \"no\"\n    expose:\n      - 1025\n      - 1080\n    ports:\n      - '1025:1025'\n      - '1080:1080'\n    \n  redis:\n    image: redis:latest\n    restart: \"no\"\n    expose:\n      - 6379\n    ports:\n      - '6379:6379'\n    volumes:\n      - redis-data:/data\n\nvolumes:\n  redis-data:\n  pg-data:\n" "Docker compose" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/yaml-mode/dc.yasnippet" nil nil)
                       ("dc-redis" "redis:\n  image: redis:latest\n  expose:\n    - 6379\n  ports:\n    - '6379:6379'\n  volumes:\n    - redis-data:/data\n" "Docker compose redis" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/yaml-mode/dc-redis.yasnippet" nil nil)
                       ("dc-pg" "database:\n  image: postgres:12.3-alpine\n  environment:\n    POSTGRES_PASSWORD: postgres\n  expose:\n    - 5432\n  ports:\n    - '5432:5432'\n  volumes:\n    - pg-data:/var/lib/postgresql/data\n    # remember to add volume: 'pg-data:'" "Docker compose postgres database" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/yaml-mode/dc-pg.yasnippet" nil nil)
                       ("db" "default: &default\n  adapter: postgresql\n  encoding: unicode\n  pool: <%= ENV.fetch(\"RAILS_MAX_THREADS\") { 5 } %>\n  url: <%= ENV.fetch(\"DATABASE_URL\")  %>\n\ndevelopment:\n  <<: *default\ntest:\n  <<: *default\nproduction:\n  <<: *default\n" "Database Config file" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/fedex/.emacs.d/fdx/snippets/yaml-mode/db.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jul 17 13:22:57 2023
