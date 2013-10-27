; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(setq php-search-url "http://jp.php.net/ja/")
(setq php-manual-url "http://jp.php.net/manual/ja/")

;; インデント
(defun php-indent-hook()
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  (c-set-offset 'arglist-intro '+) ; 配列の最初の要素が改行した場合
  (c-set-offset 'arglist-close 0)) ; 配列の閉じ括弧

(add-hook 'php-mode-hook 'php-indent-hook)


