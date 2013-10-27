; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(push '("^\*helm .+\*$" :regexp t) popwin:special-display-config)
(push '("*Compile-Log*" :noselect t) popwin:special-display-config)

;; diredのバッファを上にポップアップ
(push '(dired-mode :position top) popwin:special-display-config)

;; direx:direx-modeのバッファをウィンドウ左辺に幅25でポップアップ
;; :dedicatedにtを指定することで、direxウィンドウ内でのバッファの切り替えが
;; ポップアップ前のウィンドウに移譲される
(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)
