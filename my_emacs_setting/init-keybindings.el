;自定义开默认文件的快捷键
(global-set-key (kbd "<f2>") 'open-my-init-file)


;; 打开最近文件快捷键
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

;; 一键全局缩进快捷键
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
;; 手动补全
(global-set-key (kbd "s-/") 'hippie-expand)

;; 优化dired buffer设置
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; 在comany-mode下使用c-n c-p选择补全
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; org-mode 下的快捷键
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c r") 'org-capture)


;; 使用ag搜索工程文件夹需helm-ag插件
;;(global-set-key (kbd "C-c p s" 'helm-do-ag-project-root))
;; 使用C-w使得向前删除字符,如果之后用的不舒服可以更改
(global-set-key (kbd "C-w") 'backward-delete-char)


(provide 'init-keybindings)
