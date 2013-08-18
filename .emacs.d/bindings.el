; Setup handy keys
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\M-n" 'goto-line)
(global-set-key "\C-x\C-n" 'next-buffer)
(global-set-key "\C-x\C-p" 'previous-buffer)
(global-set-key [?\C-=] 'align-regexp)
; Turn off annoying 'hide' shortcut
(global-set-key "\C-z" nil)

;; ret behaves as LFD
(defun RET-behaves-as-LFD ()
  (let ((x (key-binding "\C-j")))
    (local-set-key "\C-m" x)))

(provide 'bindings)