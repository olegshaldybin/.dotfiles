;; window title
(setq frame-title-format "%b %+%+ %f")

;; no startup message
(setq inhibit-startup-message t)

; hide toolbar, menu, scrollbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; display line and column numbers
(line-number-mode 1)
(column-number-mode 1)

;; ido mode
(when (> emacs-major-version 21)
  (require 'ido)
  (ido-mode t)
  (setq ido-enable-prefix nil
	ido-enable-flex-matching t
	ido-create-new-buffer 'always
	ido-max-prospects 10))

;; no beep
(setq ring-bell-function 'ignore)

;; mouse wheel enabled
(load-library "mwheel")
(mwheel-install)

;; show matching parentheses
(show-paren-mode t)
(setq paren-sexp-mode 'never)

;; don't clutter directories with backup files
(setq  backup-directory-alist `(("." . ,(expand-file-name "/tmp/emacs-backups"))) auto-save-default nil)

;; scrolling behavior
(setq scroll-margin 10)
(setq scroll-conservatively 50)
(setq scroll-preserve-screen-position t)

;; don't show selection region with color
(setq transient-mark-mode nil)

;; narrowing
(put 'narrow-to-region 'disabled nil)

;; set up colors
(require 'ansi-color)
(ansi-color-for-comint-mode-on)

;; tabs behavior
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)

;; add path hints to buffers with the same name
(require 'uniquify)

(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'interface)
