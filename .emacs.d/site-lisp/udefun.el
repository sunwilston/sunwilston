;; 功能说明：删除光标当前行
(defun my-kill-line()
  (interactive)
  (move-beginning-of-line nil)
  (kill-line)
  (kill-line))

;; 功能说明：启动erc脚本
(defun run-erc()
  (interactive)
  (require 'erc-services)
  (erc-services-mode 1)
  (setq erc-prompt-for-nickserv-password nil)
  (setq erc-nickserv-passwords
        '((freenode     (("sunwilston" . "sunkaisk")))))
  (setq erc-email-userid "sunwilston")
  (setq erc-autojoin-channels-alist
        '(("freenode.net" "#ubuntu-cn" "#gentoo-cn" )
          ))
  (erc :server "irc.freenode.net" :port 6667 :nick "sunwilston"))

;; 复制函数
(defun get-point (symbol &optional arg)
  "get the point"
  (funcall symbol arg)
  (point)
  )
 
(defun copy-thing (begin-of-thing end-of-thing &optional arg)
  "copy thing between beg & end into kill ring"
  (let ((beg (get-point begin-of-thing 1))
        (end (get-point end-of-thing arg)))
    (copy-region-as-kill beg end))
  )

(defun copy-word (&optional arg)
  "Copy words at point into kill-ring"
  (interactive "P")
  (copy-thing 'backward-word 'forward-word arg)
)

(defun copy-line (&optional arg)
  "Save current line into Kill-Ring without mark the line "
  (interactive "P")
  (copy-thing 'beginning-of-line 'end-of-line arg)
 )

(defun copy-paragraph (&optional arg)
  "Copy paragraphes at point"
  (interactive "P")
  (copy-thing 'backward-paragraph 'forward-paragraph arg)
)

(defun beginning-of-parenthesis(&optional arg)
  "  "
  (re-search-backward "[[<(?\"]" (line-beginning-position) 3 1)
  (if (looking-at "[[<(?\"]")  (goto-char (+ (point) 1)) )
  )
(defun end-of-parenthesis(&optional arg)
  " "
  (re-search-forward "[]>)?\"]" (line-end-position) 3 arg)
  (if (looking-back "[]>)?\"]") (goto-char (- (point) 1)) )
  )
 
(defun thing-copy-parenthesis-to-mark(&optional arg)
  " Try to copy a parenthesis and paste it to the mark
     When used in shell-mode, it will paste parenthesis on shell prompt by default "
  (interactive "P")
  (copy-thing 'beginning-of-parenthesis 'end-of-parenthesis arg)
  )