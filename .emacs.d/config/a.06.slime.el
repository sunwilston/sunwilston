; your SLIME directory
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
; your Lisp system
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)
 
(global-set-key (kbd "C-c C-q") 'slime-close-all-parens-in-sexp)