;;在文件最开头添加地个 文件作用域的变量设置，设置变量的绑定方式
;; -*- lexical-binding: t -*-
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))
(setq tab-always-indent 'complete)

(server-mode 1)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

(global-display-line-numbers-mode 1)
(electric-pair-mode 1)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

  (global-set-key (kbd "<f2>") 'open-init-file)

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
;;
;;			 ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
(package-initialize)

;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
  (package-refresh-contents))

(package-install 'company)
(global-company-mode 1)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-n") 'company-select-next)

(package-install 'vertico)
(vertico-mode t)

(package-install 'orderless)
(setq completion-styles '(orderless))

(package-install 'marginalia)
(marginalia-mode t)

(package-install 'embark)
(global-set-key (kbd "C-;") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)
(package-install 'embark-consult)
(package-install 'consult)
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "M-s i") 'consult-imenu)

(package-install 'gruvbox-theme)
(package-install 'color-theme-sanityinc-tomorrow)
;;(load-theme 'gruvbox-dark-hard 1)
(show-paren-mode t)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
(setq make-backup-files nil)
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(delete-selection-mode t)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;(setq inhibit-startup-screen t)
