(set-face-attribute 'default nil
                     :family "monaco"
                     :height 140)
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0208
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0212
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'mule-unicode-0100-24ff
  '("monaco" . "iso10646-1"))

 ;; 半角カナのために↓を追加
 (set-fontset-font
  (frame-parameter nil 'font)
  'katakana-jisx0201
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))

 (setq face-font-rescale-alist
      '(("^-apple-hiragino.*" . 1.0)
        (".*osaka-bold.*" . 1.0)
        (".*osaka-medium.*" . 1.0)
        (".*courier-bold-.*-mac-roman" . 0.8)
        (".*monaco cy-bold-.*-mac-cyrillic" . 0.8)
        (".*monaco-bold-.*-mac-roman" . 0.8)
        ("-cdac$" . 0.9)))
