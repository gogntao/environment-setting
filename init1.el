(package-initialize)
;; 类似于添加环境变量，让emacs可以找到你的配置
(add-to-list 'load-path "~/.emacs.d/my_emacs_setting/")
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 加载init-packages
(require 'init-packages)
;; 配置emacs界面ui
(require 'init-ui)
;; 优化emacs默认配置
(require 'init-better-defaults)
;; org-mode配置
(require 'init-org)
;; 快捷键设置，记录更改过的快捷键
(require 'init-keybindings)

(setq custom-file (expand-file-name "my_emacs_setting/custom.el" user-emacs-directory) )

(load-file custom-file)
