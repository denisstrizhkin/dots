(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
       '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(defun true-color-p () 1)

(use-package openwith
  :ensure t
  :init
  (setq openwith-associations (list
			       (list (openwith-make-extension-regexp
				 '("m4v" "mp4" "MP4" "MTS" "mpg" "mov" "avi" "AVI" "flv"))
				"mpv"
				'(file))
			       (list (openwith-make-extension-regexp
				 '("mp3" "ogg"))
				"mpv"
				'(file))
			       (list (openwith-make-extension-regexp
				 '("pdf"))
				"zathura"
				'(file))
			       (list (openwith-make-extension-regexp
				 '("xls" "xlsx"))
				"libreoffice --calc"
				'(file))
			       (list (openwith-make-extension-regexp
				 '("doc" "docx" "odt"))
				"libreoffice --writer"
				'(file))))
  (openwith-mode 1)
)

(use-package magit
  :ensure t)

(use-package vterm
  :ensure t)

(defun my/load-theme (frame)
  (select-frame frame)
  (load-theme 'spacemacs-light t))
(use-package spacemacs-theme
  :defer t
  :init (if (daemonp)
      (add-hook 'after-make-frame-functions #'my/load-theme)
    (load-theme 'spacemacs-light t))
)

(use-package company
  :ensure t
  :config
  (global-company-mode t)
)

(use-package lsp-mode
  :ensure t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (go-mode . lsp)
	 (html-mode . lsp)
	 (css-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
	 
  :commands lsp)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq doc-view-continuous 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(openwith dired-x company magit vterm spacemacs-theme lsp-mode lsp-modea go-mode which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
