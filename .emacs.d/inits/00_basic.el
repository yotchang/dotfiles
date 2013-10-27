; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; キー設定
;; 反対側のウィンドウにいけるように
(setq windmove-wrap-around t)

;; 表示設定
;; 行番号・桁番号をモードラインに表示する
(line-number-mode t)
(column-number-mode t)

;; 時計を表示
(display-time)

;;; 現在行を目立たせる　
;;(global-hl-line-mode)

;;現在行のハイライト
;; (defface hlline-face
;;  '((((class color)
;;      (background dark))
;;     (:background "dark slate gray"))
;;    (((class color)
;;      (background light))
;;     (:background  "#98FB98"))
;;    (t
;;     ()))
;;  "*Face used by hl-line.")
;; (setq hl-line-face 'hlline-face)
;; (global-hl-line-mode)

;; タブ文字の表示幅
(setq-default tab-width 4)

;; その他の設定
;; バッファ自動再読み込み
(global-auto-revert-mode t)

;; メニューバーを非表示
(menu-bar-mode -1)

;; ツールバーを非表示
(tool-bar-mode -1)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;; バックアップファイルを作らない
(setq make-backup-files nil)

;;; 最終行に必ず一行挿入する
(setq require-final-newline t)

;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;;; 対応する括弧を表示
(show-paren-mode t)

;; 行末の空白を表示
;;(setq-default show-trailing-whitespace t)


;; ------------------------------------------------------------------------
;; @ Theme
;; テーマの設定
(load-theme 'misterioso t)
(enable-theme 'misterioso)
