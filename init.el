(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(load-theme 'solarized-light t)

(require 'expand-region)

(setq show-paren-style 'expression)
(show-paren-mode 2)

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving


;; turn on syntax highlighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\\.groovy\\'" . groovy-mode))
(add-to-list 'auto-mode-alist '("\\.gradle\\'" . groovy-mode))
;;(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))
;;(add-to-list 'interpreter-mode-alist '("gradle" . groovy-mode))

;;; make Groovy mode electric by default.
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))
;; yalinum
(require 'yalinum)
(global-yalinum-mode t)

(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete)
(global-auto-complete-mode t)

;; ido config 
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Eroemacs config
(require 'ergoemacs-mode)
(setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
(setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
(ergoemacs-mode 1)
(ergoemacs-key "M-8" 'er/expand-region)

;; go-mode config
(require 'go-mode)

(require 'go-autocomplete)
(require 'auto-complete-config)




(require 'sr-speedbar)
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ergoemacs-mode-used "5.8.0")
 '(ergoemacs-theme nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(yalinum-bar-face ((t (:background "#eee8d5" :foreground "#839496")))))

(defun my-c-mode-hook ()
   (setq indent-tabs-mode nil
         c-basic-offset 4))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(require 'multiple-cursors)
(require 'multiple-cursors)
