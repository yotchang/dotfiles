
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

;; C-M-{h,j,k,l}でウィンドウ間を移動
(define-key global-map (kbd "C-M-k") 'windmove-up)
(define-key global-map (kbd "C-M-j") 'windmove-down)
(define-key global-map (kbd "C-M-l") 'windmove-right)
(define-key global-map (kbd "C-M-h") 'windmove-left)

;; C-hをバックスペースに
(global-set-key "\C-h" 'delete-backward-char)

;; コメント/アンコメントの切替
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)

;; C-hでバックスペースと同じように文字を削除
(define-key helm-c-read-file-map (kbd "C-h") 'delete-backward-char)

;; TABで任意補完。選択肢が出てきたらC-nやC-pで上下移動してから決定することも可能
(define-key helm-c-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;; Helm
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(define-key global-map (kbd "C-x C-b") 'helm-for-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)

;; Help
(define-key global-map "\M-?" 'help-for-help)

;; auto-complete
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
