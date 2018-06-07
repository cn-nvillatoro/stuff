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

;; macOs specific
(setq dired-use-ls-dired nil)

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

(add-hook 'js2-mode-hook
          (lambda ()
            (flyspell-prog-mode)
          ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (rjsx-mode js2-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
