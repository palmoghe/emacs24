(add-to-list 'load-path "~/.emacs.d")
(require 'autopair)
(autopair-global-mode)
(setq autopair-autowrap t)

(require 'package)
; add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
; initialize package.el
(package-initialize)
; start auto complete with emacs
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

(add-to-list 'load-path "~/emacs24/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/sublime-themes-20140920.500/")
(setq flycheck-check-syntax-automatically '(save mode-enabled))
(load-theme 'zenburn t)
 ;;------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" "c7359bd375132044fe993562dfa736ae79efc620f68bab36bd686430c980df1c" "7d4d00a2c2a4bba551fcab9bfd9186abe5bfa986080947c2b99ef0b4081cb2a6" "33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" "90af7d0da6b97c28098177271c1d9198234435a2d1874880ba36e5bdae9da113" "9bcb8ee9ea34ec21272bb6a2044016902ad18646bd09fdd65abae1264d258d89" "90b5269aefee2c5f4029a6a039fb53803725af6f5c96036dee5dc029ff4dff60" "0ebe0307942b6e159ab794f90a074935a18c3c688b526a2035d14db1214cf69c" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "53c542b560d232436e14619d058f81434d6bbcdc42e00a4db53d2667d841702e" "bf648fd77561aae6722f3d53965a9eb29b08658ed045207fe32ffed90433eb52" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" "ce79400f46bd76bebeba655465f9eadf60c477bd671cbcd091fe871d58002a88" "ad9fc392386f4859d28fe4ef3803585b51557838dbc072762117adad37e83585" default)))
 '(linum-format " %5i "))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

(eval-after-load 'flycheck
 '(progn
  (set-face-attribute 'flycheck-error nil :foreground "pink")))


(interactive)
(c-mode)
(setq c-indent-level 8)
(setq c-brace-imaginary-offset 0)
(setq c-brace-offset -8)
(setq c-argdecl-indent 8)
(setq c-label-offset -8)
(setq c-continued-statement-offset 8)
(setq indent-tabs-mode nil)
(setq tab-width 8)

(setq auto-mode-alist (cons '("/usr/src/linux.*/.*\\.[ch]$" . linux-c-mode) auto-mode-alist))



;; Unbind Pesky Sleep Button
(global-unset-key [(control z)])
(global-unset-key [(control x)(control z)])
