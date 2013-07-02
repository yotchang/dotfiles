; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; ------------------------------------------------------------------------
;; @ load-path
;; load-pathの設定
;; load-pathの追加関数
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
          (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; load-pathに追加するフォルダ
;; 2つ以上フォルダを指定する場合の引数 => (add-to-load-path "elisp" "xxx" "xxx")
(add-to-load-path "elisp" "auto-install" "repos" "conf")


;; ------------------------------------------------------------------------
;; @ Package
;; ELPAの設定
(when (require `package nil t)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  (setq package-user-dir (concat user-emacs-directory "elpa"))
  (package-initialize))

;; auto-install
(require 'auto-install)
(setq auto-install-directory (concat user-emacs-directory "auto-install"))
;(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)


;; ------------------------------------------------------------------------
;; @ Config
;; 各種設定ファイル
(load "init-auto-complete")
(load "init-helm")
(load "init-php-mode")

;; 表示設定
;; 行番号・桁番号をモードラインに表示する
(line-number-mode t)
(column-number-mode t)

;; タブ文字の表示幅
(setq-default tab-width 4)

;; ------------------------------------------------------------------------
;; @ Theme
;; テーマの設定
;;(load-theme 'misterioso t)
;;(enable-theme 'misterioso)
(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark))))
