; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; ------------------------------------------------------------------------
;; @ Package
;; ELPAの設定
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(setq package-user-dir (concat user-emacs-directory "elpa"))
(package-initialize)

;; パッケージの自動インストール
(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    helm
    auto-complete
    multi-term
    direx
    popwin
    undo-tree
    undohist
    php-mode
    scala-mode2
    web-mode
    twittering-mode
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
