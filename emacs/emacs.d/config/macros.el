(setq light-theme-value 'doom-nord-light
      dark-theme-value 'doom-dracula
      current-theme-value 'dark)

(defun load-light-theme ()
  "Switch to light theme."
  (interactive)
  (disable-theme dark-theme-value)
  (load-theme light-theme-value)
  (setq current-theme-value 'light))

(defun load-dark-theme ()
  "Switch to dark theme."
  (interactive)
  (disable-theme light-theme-value)
  (load-theme dark-theme-value)
  (setq current-theme-value 'dark))

(defun switch-theme ()
  "Switch theme."
  (interactive)
  (if (eq current-theme-value 'light)
      (load-dark-theme)
    (load-light-theme)))

(defun kill-all-buffers ()
  ; Source:
  ;https://stackoverflow.com/questions/13981899/how-can-i-kill-all-buffers-in-my-emacs
  "Kill all buffers"
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))

;(defun apply-theme-type (appearance)
;  "Load theme, taking current system APPEARANCE into consideration."
;  (mapc #'disable-theme custom-enabled-themes)
;  (pcase appearance
;    ('light (load-theme 'doom-nord-light t))
;    ('dark (load-theme 'doom-dracula t))))
;(apply-theme-type ns-system-appearance)
