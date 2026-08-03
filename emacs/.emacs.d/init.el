(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)

(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(show-paren-mode 1)

(setq make-backup-files nil)
(setq backup-inhibit nil)
(setq make-lockfiles nil)

(when (native-comp-available-p)
  (setq native-comp-async-report-warnings-errors 'silent))

(load-theme 'modus-vivendi :no-confirm-loading)
	
(use-package magit
  :ensure t
  :config
  (setq magit-define-global-key-bindings nil)
  :bind
  (("C-c g" . magit-status)))


