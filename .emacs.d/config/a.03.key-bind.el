(global-set-key (kbd "C-|") 'set-mark-command) ;mark键设置
(global-set-key (kbd "C-k") 'my-kill-line)
(global-set-key (kbd "<f5>") 'run-erc)          ;启动irc程序
(global-set-key (kbd "C-c w") (quote copy-word)) ;字复制
(global-set-key (kbd "C-c l") (quote copy-line)) ;行复制
(global-set-key (kbd "C-c p") (quote copy-paragraph)) ;段复制
(global-set-key (kbd "C-c s") (quote thing-copy-parenthesis-to-mark)) ;拷贝括号当中的内容

(add-hook 'python-mode-hook
          (function (lambda()
                      (global-set-key [f2] 'python-send-buffer)))) ;Python模式下的运行绑定到F2
