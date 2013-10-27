

(require 'rst)

;;(setq auto-mode-alist
;;    (append '("\\.rst$" . rst-mode) auto-mode-alist))
;; 背景が黒い場合はこうしないと見出しが見づらい
;;(setq frame-background-mode 'dark)
;; 全部スペースでインデントしましょう
(add-hook 'rst-mode-hook '(lambda() (setq indent-tabs-mode nil)))

;; (custom-set-faces
;;  '(rst-level-1-face ((t (:foreground "LightSkyBlue"))) t)
;;  '(rst-level-2-face ((t (:foreground "LightGoldenrod"))) t)
;;  '(rst-level-3-face ((t (:foreground "Cyan1"))) t)
;;  '(rst-level-4-face ((t (:foreground "chocolate1"))) t)
;;  '(rst-level-5-face ((t (:foreground "PaleGreen"))) t)
;;  '(rst-level-6-face ((t (:foreground "Aquamarine"))) t))
;; (rst-level-7-face ((t (:foreground "LightSteelBlue"))) t)  ;; メモ
;; (rst-level-8-face ((t (:foreground "LightSalmon"))) t)
;;(custom-set-variables
;;    '(rst-level-face-base-light 50))
