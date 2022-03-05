(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "use-package/use-package.el")
  (require 'use-package))

(load "~/.emacs.d/config/packages/lsp.el")

;; ==== dired-sidebar ==== ;;
;;(use-package dired-sidebar
;;  :ensure t
;;  :commands (dired-sidebar-toggle-sidebar))

;;(add-to-list 'load-path "path from pwd")
;;(require 'dired-sidebar)
;; ==== ! dired-sidebar ==== ;;

;; ==== treemacs ==== ;;
(setq treemacs-width 25)
;; ==== ! treemacs ==== ;;

;; ==== projetile ==== ;;
(projectile-mode +1)
;; ==== ! projectile ==== ;;

;; ==== magit ==== ;;
(setq auth-sources '("~/.emacs.d/config/.authinfo.gpg"))
(with-eval-after-load 'magit
  (require 'forge))
(setq
 forge-alist
 '(("gitlab.cri.epita.fr" "gitlab.cri.epita.fr/api/v4" "gitlab.cri.epita.fr" forge-gitlab-repository)
   ("github.com" "api.github.com" "github.com" forge-github-repository)
   ("gitlab.com" "gitlab.com/api/v4" "gitlab.com" forge-gitlab-repository))
 )
;; ==== ! magit ==== ;;

;; ==== auto-complete ==== ;;
;;(global-auto-complete-mode t)
;; ==== ! auto-complete ==== ;;

;; ==== yafolding ==== ;;
(require 'yafolding)
(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))
;; ==== ! yafolding ==== ;;

;; ==== centaur-tabs ==== ;;
(use-package centaur-tabs
  :demand
  :config
  (setq centaur-tabs-style "bar"
        centaur-tabs-height 32
        centaur-tabs-set-icons t
        centaur-tabs-show-navigation-buttons t
        centaur-tabs-set-modified-marker t
        centaur-tabs-set-bar 'under
        x-underline-at-descent-line t)
  (centaur-tabs-headline-match)
  (centaur-tabs-mode t)
  :bind
  ("C-c C-<left>" . centaur-tabs-backward)
  ("C-c C-<right>" . centaur-tabs-forward)
)
;; ==== ! centaur-tabs ==== ;;

;; ==== fill-column-indicator ==== ;;
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "#7aa2f7")
(setq-default fci-rule-column 80)
(setq fci-handle-truncate-lines nil)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(defun auto-fci-mode (&optional unused)
  (if (and
       (> (window-width) fci-rule-column)
       (or
           (eq major-mode 'c-mode)
           (eq major-mode 'c++-mode)
           (eq major-mode 'rust-mode)))
    (fci-mode 1)
    (fci-mode 0)))
(add-hook 'after-change-major-mode-hook 'auto-fci-mode)
(add-hook 'window-configuration-change-hook 'auto-fci-mode)
;; ==== ! fill-column-indicator ==== ;;

;; ==== evil-mode ==== ;;
(load "~/.emacs.d/config/packages/evil.el")
;; ==== ! evil-mode ==== ;;

;; === doom modeline ==== ;;
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
;; ==== ! doom modeline ==== ;;
