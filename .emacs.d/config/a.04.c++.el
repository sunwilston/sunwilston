(add-hook 'c++-mode-hook
	  '(lambda ()
	     (c-set-style "k&r")     ;; 设置C++代码风格为"k&r"
;;	     (c-toggle-auto-state)  ;; 启动自动新行功能
             (c-toggle-auto-hungry-state))) ;; 设置启动饥饿删除键功能
