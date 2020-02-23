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

(provide 'init-keybindings)
