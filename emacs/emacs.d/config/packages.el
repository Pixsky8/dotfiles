(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "use-package/use-package.el")
  (require 'use-package))

;; ==== dired-sidebar ==== ;;
;;(use-package dired-sidebar
;;  :ensure t
;;  :commands (dired-sidebar-toggle-sidebar))

;;(add-to-list 'load-path "path from pwd")
;;(require 'dired-sidebar)
;; ==== ! dired-sidebar ==== ;;


;; ==== projetile ==== ;;
(projectile-mode +1)
;; ==== ! projectile ==== ;;

;; ==== magit ==== ;;
(setq auth-sources '("~/.emacs.d/config/.authinfo.gpg"))
(with-eval-after-load 'magit
  (require 'forge))
;; ==== ! magit ==== ;;

;; ==== auto-complete ==== ;;
(global-auto-complete-mode t)
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
