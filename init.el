(require 'package)
(package-initialize)

;去除工具栏
(tool-bar-mode -1)
;去除右侧滑动框
(scroll-bar-mode -1)
;改正注释缩进
(electric-indent-mode t)
;跳过Emacs欢迎页面
(setq inhibit-splash-screen t)
;打开行号
(global-linum-mode t)
;自定义开默认文件的快捷键
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;开启全局补全模式O
(global-company-mode t)

; 引用代码高亮
(require 'org)
(setq org-src-fontify-natively t)

; enable recentf mode
(require 'recentf)
(recentf-mode 1)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(delete-selection-mode t)

;;括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;显示当前行
(global-hl-line-mode t)

;; 扩展emacs package 源
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa". "http://stable.melpa.org/packages/") t)
  )
(require 'cl)

;; add whatever packages you want here
(defvar zilongshanren/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 smex
;;				 counsel
;;				 smartparens
;;				 swiper
				 ) "Default packages")
;; 屏蔽pakage autoremove
(setq package-selected-packages zilongshanren/packages)

(defun zilongshanren/packages-installed-p ()
  (loop for pkg in zilongshanren/packages
	when (not (package-installed-p pkg)) do (return nil)
		  finally (return t)))
  (unless (zilongshanren/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg zilongshanren/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

;; 启动时加载monokai-theme
(load-theme 'monokai t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 打开hungry mode
(require 'hungry-delete)
(global-hungry-delete-mode)
;; 配置smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;;(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)

;; org-mode 配置
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)
