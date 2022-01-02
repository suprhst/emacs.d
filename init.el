
;; Package Manager Setup

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Packages

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/release.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(underwater))
 '(custom-safe-themes
   '("db7f422324a763cfdea47abf0f931461d1493f2ecf8b42be87bbbbbabf287bfe" default))
 '(org-directory "~/org")
 '(package-selected-packages
   '(go-mode lsp-mode smartparens keycast auto-package-update gcmh expand-region org-appear htmlize ox-reveal org-roam-ui simple-httpd websocket org-roam org-superstar flycheck company treemacs-projectile projectile dashboard ivy-posframe try which-key hide-mode-line moody minions underwater-theme exotica-theme ivy-prescient all-the-icons-ivy-rich use-package treemacs-icons-dired treemacs-all-the-icons mode-icons ivy-rich counsel all-the-icons-ivy all-the-icons-dired)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-dired-dir-face ((t (:foreground nil))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
