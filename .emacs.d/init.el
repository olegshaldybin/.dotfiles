;; On OSX this needs to be run
;; $ defaults write ~/.MacOSX/environment PATH "`echo $PATH`"
;; $ echo "setenv PATH $PATH" | sudo tee /etc/launchd.conf

(setenv "GOPATH" "/Users/oleg/projects/go")
(setenv "PATH" (concat "/Users/oleg/projects/go/bin:" (getenv "PATH")))

(setq default-directory "~")
(push (concat user-emacs-directory "bin") exec-path)
(push (concat (getenv "GOPATH") "/bin") exec-path)

(defun load-dir (dir)
  (mapc 'load (directory-files dir t "^[^#].*el$")))

(load-file "~/.emacs.d/el-get.el")
(load-file "~/.emacs.d/custom.el")
(load-dir (concat user-emacs-directory "custom/"))

(set-default-font "Inconsolata-dz-12")
(setq mac-allow-anti-aliasing t)
(put 'downcase-region 'disabled nil)
