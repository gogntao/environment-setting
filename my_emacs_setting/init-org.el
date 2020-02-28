; 引用代码高亮
(require 'org)
(setq org-src-fontify-natively t)
;; org-mode 配置
(setq org-agenda-files '("~/MyPlan"))

;; 配置capture模版
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/MyPlan/gtd.org" "工作安排")
	 "* TODO [#B] %?\n %i\n"
	 :empty-lines 1)))

(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)
(provide 'init-org)
