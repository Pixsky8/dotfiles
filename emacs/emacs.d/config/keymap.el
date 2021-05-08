;; ==== Default ==== ;;
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'eshell)

;; ==== Projectile  ==== ;;
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; ==== Treemacs ==== ;;
(global-set-key (kbd "C-c t") 'treemacs)

;; ==== yafolding ==== ;;
(define-key yafolding-mode-map (kbd "<C-return>") 'yafolding-toggle-element)

;; ==== LSP Mode ==== ;;
(define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
(setq lsp-keymap-prefix "C-c l")

;; ==== Magit ==== ;;
(global-set-key (kbd "C-c g") 'magit)
