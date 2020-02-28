;;(global-auto-revert-mode t)
;打开行号
(global-linum-mode t)
;; 关闭备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)
;; 优化删除
(delete-selection-mode t)
;;缩写定义，可自定义宏
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("gt" "gogntao")
					    ("osh" "#+TAGS:@zhu @li @yang 
#+TODO: TODO(t) SCH(s) WAIT(w) | DONE(d) CANCELED(c)
#+TITLE: 
#+DATE:")
					    ("olh" "#+AUTHOR: gongtao
#+EMAIL: Dev_GongTao@126.com")
					    ))
(setq-default abbrev-mode t)

;;括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 最近打开文件配置
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(provide 'init-better-defaults)

;; 全局缩进C-M-\,可以一键更正缩进
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer ()
  (interactive)
  (save-excursion
    (if (region-active-p)
    (progn
      (indent-region (region-beginning) (region-end))
      (message "Indent Selected region"))
    (progn
      (indent-buffer)
      (message "Indent-buffer")))))
;; 优化补全
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))
;; 将yes和no替换成y和n
(fset 'yes-or-no-p' 'y-or-n-p)
;; 设置总是递归拷贝
(setq dired-recursive-copies 'always)

;; 优化使用dired-mode生成一大堆buffer的问题
(put 'dired-find-alternate-file 'disabled nil)

;; 打开当前文件的dired-mode C-x C-j
(require 'dired-x)

(setq dired-dwim-target t)
;; 可以用来方便的切换窗口
(window-numbering-mode 1)
;; 可以方便的查看当前快捷键的作用
(which-key-mode 1)

