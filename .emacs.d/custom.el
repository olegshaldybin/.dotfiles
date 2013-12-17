(load-theme 'railscasts t)

(setq backup-directory-alist `(("." . "~/.backups")))

(setq ag-highlight-search t)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\M-n" 'goto-line)
(global-set-key "\C-x\C-n" 'next-buffer)
(global-set-key "\C-x\C-p" 'previous-buffer)
(global-set-key "\M-=" 'align-regexp)

(global-set-key "\C-z" nil)

(setq frame-title-format "%b %+%+ %f")

(setq inhibit-startup-message t)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(line-number-mode 1)
(column-number-mode 1)

(require 'ido)
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-max-prospects 10)

(setq ring-bell-function 'ignore)

(load-library "mwheel")
(mwheel-install)

(setq scroll-margin 10)
(setq scroll-conservatively 50)
(setq scroll-preserve-screen-position t)

(setq transient-mark-mode nil)

(put 'narrow-to-region 'disabled nil)

(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

(require 'uniquify)

(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq whitespace-style '(face trailing lines-tail))
(setq-default whitespace-line-column 120)
(setq-default show-trailing-whitespace t)

(require 'auto-complete-config)
(setq ac-dictionary-files (list (concat user-emacs-directory ".dict")))
(ac-config-default)

(require 'autopair)
(autopair-global-mode)

(show-paren-mode t)
(setq paren-sexp-mode 'never)

(server-start)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 20)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'saveplace)
(setq save-place t)

(whitespace-mode t)

(global-set-key (kbd "C-x f") 'ag-project)
(global-set-key (kbd "C-x r") 'ag-regexp-project-at-point)

(font-lock-add-keywords
 nil '(("\\<\\(FIX\\|TODO\\|FIXME\\|HACK\\|REFACTOR\\|NOCOMMIT\\)"
        1 font-lock-warning-face t)))

(require 'idle-highlight-mode)
