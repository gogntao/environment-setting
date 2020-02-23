;; 更改显示字体大小 14pt
(set-face-attribute 'default nil :height 160)
;去除工具栏
(tool-bar-mode -1)
;去除右侧滑动框
(scroll-bar-mode -1)
;; 设置启动时屏幕最大化
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;跳过Emacs欢迎页面
(setq inhibit-splash-screen t)

;; 更改光标样式
(setq-default cursor-type 'bar)
;;显示当前行
(global-hl-line-mode t)

(provide 'init-ui)
