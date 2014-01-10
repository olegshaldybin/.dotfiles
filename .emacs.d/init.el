(setq default-directory "~")

(defun load-dir (dir)
  (mapc 'load (directory-files dir t "^[^#].*el$")))

(load-file "~/.emacs.d/el-get.el")

(exec-path-from-shell-initialize)
(exec-path-from-shell-copy-env "GOPATH")

(push (concat user-emacs-directory "bin") exec-path)

(load-file "~/.emacs.d/custom.el")
(load-dir (concat user-emacs-directory "custom/"))

(set-face-attribute 'default nil :family "Source Code Pro" :height 140 :weight 'normal)
