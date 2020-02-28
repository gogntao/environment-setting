(require 'cl)
;; 扩展emacs package 源
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
 ;; (add-to-list 'package-archives '("melpa". "http://stable.melpa.org/packages/" ) t)
  (setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
  )


;; add whatever packages you want here
(defvar zilongshanren/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 counsel
				 smartparens
				 popwin
				 reveal-in-osx-finder
				 helm-ag
                                 window-numbering
				 which-key
				 iedit
				 org-bullets
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
;; 打开hungry mode
(require 'hungry-delete)
(global-hungry-delete-mode)
;; 配置smex
;;(require 'smex)
;;(smex-initialize)
;;(global-set-key (kbd "M-x") 'smex)
;; popwin config
(require 'popwin)
(popwin-mode t)
;; consual config
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; smartparens config
(require 'smartparens-config)
(smartparens-global-mode t)

;; company config开启全局补全模式
(global-company-mode t)

;; 启动时加载monokai-theme
(load-theme 'monokai t)



;; 放在文件的最后！！
;; 放在文件的最后！！
;; 放在文件的最后！！
(provide 'init-packages)
