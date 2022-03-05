;; ==== Default ==== ;;
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'eshell)

;; Enable mouse support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] (lambda ()
                              (interactive)
                              (scroll-down 1)))
  (global-set-key [mouse-5] (lambda ()
                              (interactive)
                              (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
)

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

;; ==== Term ==== ;;
(defun term-mode-config (&rest ignored)
  (term-line-mode))
(advice-add 'ansi-term :after #'term-mode-config)
(advice-add 'term :after #'term-mode-config)

;; ==== Tabs ==== ;;
(defun insert-tab-space ()
  (interactive)
  (insert "    "))
