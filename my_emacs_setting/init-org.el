; 引用代码高亮
(require 'org)
(setq org-src-fontify-natively t)
;; org-mode 配置
(setq org-agenda-files '("~/shedule"))
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(provide 'init-org)
