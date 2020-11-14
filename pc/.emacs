(setq-default c-default-style "awk" c-basic-offset 4)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'iso-transl)

;; Basic interface configuration
(global-linum-mode) ; show line numbers

(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;; Basic C configuration
(setq c-basic-offset 4 ; spaces of indentation
      c-default-style "bsd" ; sort of fits the coding style
      fill-column 80) ; 80 columns rule

(setq whitespace-style '(face ; show ...
                         tabs tab-mark ; the tabulations,
                         lines-tail ; lines too long (> fill-column characters),
                         trailing)) ; and trailing spaces
(global-whitespace-mode)
