(setq load-path (cons "~/.emacs.d/site-lisp" load-path))

(setq user-full-name "SunWilston")
(setq user-mail-address "SunWilston@gmail.com")

;; 加载自定义函数库
(load "udefun")

;;设定主题
(require 'color-theme)
(color-theme-initialize)
;(color-theme-bharadwaj-slate)
(color-theme-gnome2)

;;关闭起动时闪屏
(setq inhibit-startup-message t)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(mouse-avoidance-mode 'animate)

;;外观设置
;;去掉工具栏
(tool-bar-mode nil)
;;去掉菜单栏
(menu-bar-mode nil)
;;去掉滚动栏
(scroll-bar-mode nil)
;; 高亮显示当前行
;;(require 'hl-line)                      
;;(global-hl-line-mode t)
;;在左边显示行号
(require 'linum+)
(global-linum-mode t)
;;显示时间
(display-time)
;; 支持eamcs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号 
(show-paren-mode t) 
(setq show-paren-style 'parentheses) 
;;光标显示为一竖线 
(setq-default cursor-type 'bar) 
;;不产生备份文件 
(setq make-backup-files nil)
;;临时文件放到同一个目录下 
(setq backup-directory-alist (quote (("." . "~/tmp"))))
;;用空格代替tab 
(setq-default indent-tabs-mode nil) 
;;以 y/n代表 yes/no 
(fset 'yes-or-no-p 'y-or-n-p) 
;; 设置kill ring大小为200
(setq kill-ring-max 200)
;; 设置为输入100个字符后自动保存,默认是300个字符
(setq auto-save-interval 100)
;; 不生成#filename#临时文件
(setq auto-save-default nil)
;; 设置默认的浏览器
(setq browse-url-generic-program "chromium-browser")
(setq browse-url-browser-function 'browse-url-generic)

 ;; 中文字体的设定，网上很多资料都是gb18030，但我的locale是UTF-8
(set-default-font "文泉驿微米黑-10")
;;(set-default-font "DejaVu Sans Mono-10")
;;(set-fontset-font (frame-parameter nil 'font) 
;;  'unicode '("文泉驿微米黑" . "unicode-bmp"))
