;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'helm)
(require 'helm-config)
(helm-mode 1)

;(global-set-key (kbd "C-x b") 'helm-buffers-list)
;(global-set-key (kbd "M-x") 'helm-M-x)

(require 'ac-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)
