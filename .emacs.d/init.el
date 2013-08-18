(require 'cl)

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/git")

(require 'interface)
(require 'bindings)
(require 'go)

;; system-specific config
(set-default-font "Inconsolata-dz-14")
(setq mac-allow-anti-aliasing t)
(put 'downcase-region 'disabled nil)
