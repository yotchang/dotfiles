; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'dired)
(defun dired-open-in-accordance-with-situation ()
    (interactive)
    (cond ((string-match "\\(?:\\.\\.?\\)"
                         (format "%s" (thing-at-point 'filename)))
           (dired-find-alternate-file))
          ((file-directory-p (dired-get-filename))
           (dired-find-alternate-file))
          (t
           (dired-find-file))))
;;RETに割り当てる
(define-key dired-mode-map (kbd "RET") 'dired-open-in-accordance-with-situation)
;; 左右キーにも割り当てる
;;(define-key dired-mode-map (kbd "<left>") 'dired-up-directory)
;;(define-key dired-mode-map (kbd "<right>") 'dired-open-in-accordance-with-situation)
