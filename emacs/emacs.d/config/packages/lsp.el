;; ==== lsp mode ==== ;;
(require 'lsp-mode)
(setq lsp-headerline-breadcrumb-enable t)
(setq lsp-enable-symbol-highlighting nil)
(setq lsp-ui-sideline-enable t)

;; ==== C(++) ==== ;;
(add-hook 'c-mode-hook #'lsp)
(add-hook 'c++-mode-hook #'lsp)
(setq lsp-clients-clangd-executable "/opt/homebrew/opt/llvm/bin/clangd")
(add-hook 'before-save-hook (lambda () (when (eq 'rust-mode major-mode)
                                         (lsp-format-buffer))))

;; ==== C(++) remote ==== ;;
(lsp-register-client
    (make-lsp-client :new-connection (lsp-tramp-connection "clangd")
                     :major-modes '(c-mode c++-mode)
                     :remote? t
                     :server-id 'clangd-remote))

;; ==== Java ==== ;;
;(use-package lsp-java
;  :init
;  (defun jmi/java-mode-config ()
;    (setq-local tab-width 4
;                c-basic-offset 4)
;    (toggle-truncate-lines 1)
;    (setq-local tab-width 4)
;    (setq-local c-basic-offset 4)
;    (lsp))
;  :config
;  ;; Enable dap-java
;  (require 'dap-java))

;(use-package dap-mode
;  :config
;  (dap-mode t)
;  (dap-ui-mode t))


;; ==== Rust ==== ;;
(add-hook 'rust-mode-hook #'lsp)
(add-hook 'before-save-hook (lambda () (when (eq 'rust-mode major-mode)
                                         (lsp-format-buffer))))

;; ==== TypeScript ==== ;;
;; (add-hook 'typescript-mode-hook #'lsp)
