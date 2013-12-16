;; Color theme
(load-theme 'railscasts t)

;; Backup files destination
(setq backup-directory-alist `(("." . "~/.backups")))

;; ag integration
(setq ag-highlight-search t)

;; Key bindings
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\M-n" 'goto-line)
(global-set-key "\C-x\C-n" 'next-buffer)
(global-set-key "\C-x\C-p" 'previous-buffer)
(global-set-key "\M-=" 'align-regexp)

; Turn off 'hide' shortcut
(global-set-key "\C-z" nil)

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
(require 'ido)
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-max-prospects 10)

;; no beep
(setq ring-bell-function 'ignore)

;; mouse wheel enabled
(load-library "mwheel")
(mwheel-install)

;; scrolling behavior
(setq scroll-margin 10)
(setq scroll-conservatively 50)
(setq scroll-preserve-screen-position t)

;; don't show selection region with color
(setq transient-mark-mode nil)

;; narrowing
(put 'narrow-to-region 'disabled nil)

;; tabs behavior
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;; add path hints to buffers with the same name
(require 'uniquify)

(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

;; mac stuff
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; remove whitespaces on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; auto complete
(require 'auto-complete-config)
(setq ac-dictionary-files (list (concat user-emacs-directory ".dict")))
(ac-config-default)

;; auto pair
(require 'autopair)
(autopair-global-mode)

;; show matching parentheses
(show-paren-mode t)
(setq paren-sexp-mode 'never)
