;; Basic interface configuration
(global-linum-mode) ; show line numbers
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(tool-bar-mode -1) ; hide tool bar (GUI only)
(scroll-bar-mode -1) ; hide scroll bar

;; Basic C configuration
(setq c-basic-offset 4 ; spaces of indentation
      c-default-style "bsd" ; sort of fits the coding style
      fill-column 80) ; 80 columns rule

(setq whitespace-style '(face ; show ...
                         tabs tab-mark ; the tabulations,
                         lines-tail ; lines too long (> fill-column characters),
                         trailing)) ; and trailing spaces
(global-whitespace-mode)

;; Cutsom theme location list
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; move backups to .emacs.d folder
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; eshell config
(defun with-face (str &rest face-plist)
       (propertize str 'face face-plist))

(defun shk-eshell-prompt ()
    (let ((header-bg "#fff"))
      (concat
       (with-face
        (or (ignore-errors (format "(%s)" (vc-responsible-backend default-directory))) ""))
       (with-face user-login-name :foreground "#719fe9")
       ": "
       (propertize (eshell/basename (eshell/pwd)) 'face `(:foreground "#00c89c"))
       (if (= (user-uid) 0)
           (with-face " #" :foreground "red")
         " $")
       " ")))
(setq eshell-prompt-function 'shk-eshell-prompt)
(setq eshell-highlight-prompt nil)

;; remove beeps
;;(setq visible-bell t)
;;(setq bell-volume 0)
(setq ring-bell-function 'ignore)
