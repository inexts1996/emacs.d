;;在文件最开头添加地个 文件作用域的变量设置，设置变量的绑定方式
;; -*- lexical-binding: t -*-

(setq tab-always-indent 'complete)
(setq w32-apps-modifier 'super)

(server-mode 1)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
;;(icomplete-mode 1)
(global-display-line-numbers-mode 1)
(electric-pair-mode 1)
;;(toggle-frame-fullscreen)
;;(toggle-frame-maximized)
;;(setq cursor-type 'box)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

  (global-set-key (kbd "<f2>") 'open-init-file)


(global-set-key (kbd "s-a") 'mark-whole-buffer) ;;对应Windows上面的Ctrl-a 全选
(global-set-key (kbd "s-c") 'kill-ring-save) ;;对应Windows上面的Ctrl-c 复制
(global-set-key (kbd "s-s") 'save-buffer) ;; 对应Windows上面的Ctrl-s 保存
(global-set-key (kbd "s-v") 'yank) ;对应Windows上面的Ctrl-v 粘贴
(global-set-key (kbd "s-z") 'undo) ;对应Windows上面的Ctrol-z 撤销
(global-set-key (kbd "s-x") 'kill-region) ;对应Windows上面的Ctrol-x 剪切
;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(require 'package)
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

;;modeline上显示我的所有的按键和执行的命令
(package-install 'keycast)
(keycast-mode-line-mode t)

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

(show-paren-mode t)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(embark-consult consult embark orderless marginalia vertico keycast company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack Nerd Font Propo" :foundry "outline" :slant normal :weight regular :height 113 :width normal)))))
(put 'upcase-region 'disabled nil)
