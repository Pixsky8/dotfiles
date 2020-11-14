; File: ~/.emacs
; Very basic Emacs configuration.
; Features: General stuff, interface customizations,
;           C mode and whitespacd mode configuration.


; General Emacs configuration
(setq debug-on-error t ; show stack trace on config error
      vc-follow-symlinks t) ; always follow symlink

; Basic interface configuration
(global-linum-mode) ; show line numbers
(column-number-mode) ; show column number in the modeline

; Disable tabulations (repeated to ensure compatibility with any major mode)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

; Basic C configuration
(setq c-basic-offset 4 ; spaces of indentation
      c-default-style "bsd" ; sort of fits the coding style
      fill-column 80) ; 80 columns rule

; basic Bash config
(setq sh-basic-offset 4
      sh-indentation 4)

(setq whitespace-style '(face ; show ...
                         tabs tab-mark ; the tabulations,
                         lines-tail ; lines too long (> fill-column characters),
                         trailing)) ; and trailing spaces
(global-whitespace-mode)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )


;; Cutsom theme location list
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(current-language-environment "French")
 '(custom-enabled-themes '(tokyo-night))
 '(custom-safe-themes
   '("83f01a5a0459ce5065b3b82b57bf139a7fdc967e78540ea0e6ef1a3a9133e7fc" "be31445e65541ac4b11cafd517253feb846c3fb7027f9adf33f7149d9ecd211e" "c30e4354983ddfb167db54a06be47275df803bc1f2684a85c3c65ca3155728c6" "c46fdcac310be9a9d091899c443d7027eff04e4e9f14b2178a0b97afb06031a8" "cc021aa9b6b8215f799434dcb17fdc16535207483ce7b1d626f139e8f1415164" "98c6a772a494fa21f01212c20b85aba386e3861668396e9b126ae78eef0e1684" "0e8d78dbdc38e8d5446f6640f62b4c644fffd4cd9707b294799cc6b245620489" "44d0f3bb1ceafc7ebfe4f9e7fffdf95a9e167a3dc4e656c66b8bfbffb59daba3" "c629de705ee85d560d4276cf12cace11537152bc39839aab52471506acfc21fd" "ea9f8b572735d6c8548913b98de848dafc04e68420c894fccdf3074c9d671a76" "5207ee67e3ef68aee0861c633d9d223adc6193b6f29709bb8a3e9ad22be9de4b" "d0b998410571f2615d7c7fece586be733ac4547b771ab8af362cadbca7c98219" "c51d417bc86cd4ef139cb1fedffbf41f4290a4296f7f2f6ea3645eff7ebdfa0d" "3d4c2fbe5e6d756ea5f28da2b62d4ed200fa3c5e6794d22361970ffffce68f3f" "a5b59c12a731ac7bcf7423bc4d1fb134766beb9ce4d7c427301a37a0fe1d3d6b" "68b7d05d0a2992c2e82f9d6adb593e1b8cdaa6b2f64a36d6acda4da4c7df5c18" "263db779dd130a96ed623f7d1bd41828d82c1a26dfa5c0d2198791fbe0269fef" "bcad87daa32a4ddcc93e01e0e1a1dd6d81edfdf6034119f9a9d1ed90b757c280" "4ab754d00fe1dff601dcf53211aaf392a9770b0f08534d5b79c9c802ab513df5" "1e35fc81c6385487b24adb58a00763df0e5eb294b43b96250abbdc78aee03ed7" "f5c4e670416f97d90c248aa381f40bd099dc94f675c5663e8d38800cbcda2dde" "07f86e29d05630bf600d140163deaf746fc25afeb6b4744fadbac582fce9caf0" "53d175c5011ba3bb879aad4aed29a6dc6ebef3e5f6a0f56fa5921cf9e307fdde" "edac40f820a38cf0c8628fef9d69469f0cc70fcd529f2d3f39a8328e000c6744" "63685c76733a1b55600feeb3ce78ae5742144bc6c76d70c2cb64203d50cc7bec" "40cf86c0ab866d71eb276e110940471e0277c506fcaa7e8e861ca111c3525f5c" "c809560cec2ec94492954a77390664e7e10769a05f9300729e74869282165d0f" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

