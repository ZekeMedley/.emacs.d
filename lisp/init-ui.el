(require 'init-elpa)
(require-package 'rebecca-theme)
(require-package 'golden-ratio)

(require 'golden-ratio)

(setq inhibit-startup-message t)
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(global-set-key [mouse-4] 'scroll-down-line)
(global-set-key [mouse-5] 'scroll-up-line)
(xterm-mouse-mode 1)

(load-theme 'rebecca t)

(blink-cursor-mode 0)
(setq-default cursor-type 'bar)
(setq ring-bell-function 'ignore)

(golden-ratio-mode 1)
(setq golden-ratio-auto-scale t)

(line-number-mode 1)
(column-number-mode 1)

; Customze the mode line. This is taken from Gwern's emacs:
; https://en.wikipedia.org/wiki/User%3AGwern%2F.emacs
(setq mode-line-format
      '("-"
        mode-line-mule-info
        mode-line-modified
        mode-line-frame-identification
        mode-line-buffer-identification
        "  "
        global-mode-string
        "   %[(" mode-name mode-line-process minor-mode-alist "%n"
        ")%]--"
        (line-number-mode "L%l--")
        (column-number-mode "C%c--")
        (-3 . "%p")
        "-%-"))

(provide 'init-ui)