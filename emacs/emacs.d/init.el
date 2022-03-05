(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'iso-transl)

;; ======== Package list ======== ;;
(load "~/.emacs.d/config/packages/packages.el")
;; ======== Package list ======== ;;

;; ======== Keymaps ======== ;;
(load "~/.emacs.d/config/keymap.el")
;; ======== Keymaps ======== ;;

;; ======== Other ======== ;;
(load "~/.emacs.d/config/other.el")
(load "~/.emacs.d/config/macros.el")
;; ======== Interface ======== ;;
(load "~/.emacs.d/config/interface.el")
;;======== Interface ======== ;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-dracula))
 '(custom-safe-themes
   '("436d53008464e47e604714269245a6c22b7bc0f7f121af9897b6cba9f61f0ad6" "21bfb3cd534a3461744151b97312684a11e59080e52f38543b07c0224dd7298d" "f2a199053a6656c971e3b08ddf5dbcc75aca8eb96ddeb602a5710f91c2c3331f" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "4a8d4375d90a7051115db94ed40e9abb2c0766e80e228ecad60e06b3b397acab" "3fdaef94bf6a7ddd8f37ce89be440af19f317e69530b62ec6d545fc1ea2c2639" "c17b7670b64feeb144e695837e2b59a747fcad976ee5f4192eea807d6c28622c" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "191bc4e53173f13e9b827272fa39be59b7295a0593b9f070deb6cb7c3745fd1d" "5379937b99998e0510bd37ae072c7f57e26da7a11e9fb7bced8b94ccc766c804" "7841a37c6a00822c8d95373e6baca158b866b0f484d0ce17b9a382a032993887" default))
 '(fci-rule-color "#37474F")
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#c792ea"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#c3e88d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#37474F"))
 '(objed-cursor-color "#ff5370")
 '(package-selected-packages
   '(helm powershell edit-indirect bison-mode flycheck-grammarly nix-mode evil-collection powerline-evil evil v-mode doom-modeline xclip lsp-java cmake-mode smooth-scrolling smooth-scroll ng2-mode dracula-theme yaml-mode dockerfile-mode fill-column-indicator company doom-themes lsp-treemacs lsp-ui lsp-mode rust-mode centaur-tabs yafolding forge magit treemacs-projectile treemacs all-the-icons use-package minimap))
 '(pdf-view-midnight-colors (cons "#EEFFFF" "#263238"))
 '(rustic-ansi-faces
   ["#263238" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(tool-bar-mode nil)
 '(treemacs-git-mode '##)
 '(vc-annotate-background "#263238")
 '(vc-annotate-color-map
   (list
    (cons 20 "#c3e88d")
    (cons 40 "#d7de81")
    (cons 60 "#ebd476")
    (cons 80 "#ffcb6b")
    (cons 100 "#fcb66b")
    (cons 120 "#f9a16b")
    (cons 140 "#f78c6c")
    (cons 160 "#e78e96")
    (cons 180 "#d690c0")
    (cons 200 "#c792ea")
    (cons 220 "#d97dc1")
    (cons 240 "#ec6898")
    (cons 260 "#ff5370")
    (cons 280 "#cd5067")
    (cons 300 "#9b4d5f")
    (cons 320 "#694a57")
    (cons 340 "#37474F")
    (cons 360 "#37474F")))
 '(vc-annotate-very-old-color nil)
 '(warning-suppress-types '((comp)))
 '(xterm-mouse-mode t))

(if (eq system-type 'darwin)
    (load "~/.emacs.d/config/macos.el"))
