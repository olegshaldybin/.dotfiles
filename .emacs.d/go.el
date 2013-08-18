(setq load-path (cons "/usr/local/go/misc/emacs" load-path))
(require 'go-mode-load)
(add-hook 'go-mode-hook 'RET-behaves-as-LFD)

(provide 'go)