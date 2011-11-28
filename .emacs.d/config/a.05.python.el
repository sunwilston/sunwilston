(add-hook 'python-mode-hook
          '(lambda()
             (hs-minor-mode) ;打开可以折叠的模式
             (local-set-key "\r" '(lambda() (interactive) (insert "\n") (python-indent-line))))) ;回车后自动缩进

;;(add-to-list 'load-path "~/.emacs.d/site-lisp/pydb") 
;;(require 'pydb)
;;(autoload 'pydb "pydb" "Python Debugger mode via GUD and pydb" t)
