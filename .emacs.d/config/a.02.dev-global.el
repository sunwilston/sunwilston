;; 加载psvn接口
(require 'psvn)                         

;; 启用代码模板
(require 'template)
(template-initialize)

;; 加载yasnippet
(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets")
