(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Themes

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))
(unless (package-installed-p 'darktooth-theme)
  (package-refresh-contents)
  (package-install 'darktooth-theme))
(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-google-dark t))

;;;;;

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#32302F" "#FB4934" "#B8BB26" "#FABD2F" "#83A598" "#D3869B" "#17CCD5" "#EBDBB2"])
 '(ansi-term-color-vector
   [unspecified "#1f2022" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#4f97d7" "#a3a3a3"] t)
 '(custom-enabled-themes (quote (base16-google-dark)))
 '(custom-safe-themes
   (quote
    ("aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "3de3f36a398d2c8a4796360bfce1fa515292e9f76b655bb9a377289a6a80a132" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" "4feee83c4fbbe8b827650d0f9af4ba7da903a5d117d849a3ccee88262805f40d" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "a4d03266add9a1c8f12b5309612cbbf96e1291773c7bc4fb685bfdaf83b721c6" default)))
 '(package-selected-packages
   (quote
    (elfeed-org elfeed mingus spaceline base16-theme helm-swoop emms helm-descbinds helm org-bullets beacon spacemacs-theme darktooth-theme which-key use-package)))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8"))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "#282828" :foreground "#FDF4C1" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :family "Hack")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-face-attribute 'default nil :height 90)
