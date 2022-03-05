(setq evil-toggle-key "C-z")

(require 'evil)
(evil-mode 1)

(evil-set-leader 'motion (kbd "SPC"))
(evil-set-leader 'normal (kbd "SPC"))
(define-key evil-motion-state-map " " nil)
(define-key evil-normal-state-map " " nil)
(define-key evil-motion-state-map (kbd "SPC h") 'evil-window-left)
(define-key evil-motion-state-map (kbd "SPC j") 'evil-window-down)
(define-key evil-motion-state-map (kbd "SPC k") 'evil-window-up)
(define-key evil-motion-state-map (kbd "SPC l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "SPC e") 'evil-emacs-state)
(define-key evil-motion-state-map (kbd "SPC b") 'switch-to-buffer)
(define-key evil-motion-state-map (kbd "SPC f") 'find-file)
(define-key evil-motion-state-map (kbd "SPC v") 'find-alternate-file)
(define-key evil-motion-state-map (kbd "SPC SPC k") 'kill-buffer)
(define-key evil-motion-state-map (kbd "SPC SPC K") 'kill-all-buffers)
(define-key evil-motion-state-map (kbd "à") 'evil-beginning-of-line)
(define-key evil-motion-state-map (kbd "SPC 1") 'delete-other-windows)
(define-key evil-motion-state-map (kbd "SPC 2") 'split-window-vertically)
(define-key evil-motion-state-map (kbd "SPC 3") 'split-window-horizontally)
(define-key evil-motion-state-map (kbd "SPC 0") 'delete-window)
(define-key evil-motion-state-map (kbd "SPC ^") 'enlarge-window)
(define-key evil-motion-state-map (kbd "SPC {") 'shrink-window-horizontally)
(define-key evil-motion-state-map (kbd "SPC }") 'enlarge-window-horizontally)
(define-key evil-motion-state-map (kbd "K") 'man)

;; Use evil for special modes
; Docview Mode
(add-hook 'doc-view-mode (lambda () (#'evil-motion-state)))
;TODO: add in the lambda
;(define-key evil-motion-state-map (kbd "SPC j") 'doc-view-next-page)
;(define-key evil-motion-state-map (kbd "SPC k") 'doc-view-previous-page)

; Different cursors in terminal
(unless (display-graphic-p)
  (require 'evil-terminal-cursor-changer)
  (evil-terminal-cursor-changer-activate) ; or (etcc-on)
)
