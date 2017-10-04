(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)


;; Disable Menu bar
(menu-bar-mode -1)
;; Display column
(setq column-number-mode t)
;; Backup files in /tmp
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; js2mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))

;; use spaces
(setq-default indent-tabs-mode nil)
;; js2-mode indents 2 units
(setq-default js2-basic-offset 2)
;; indent case statements
(setq-default js-switch-indent-offset 2)
;; auto close bracket, etc.
(electric-pair-mode 1)
