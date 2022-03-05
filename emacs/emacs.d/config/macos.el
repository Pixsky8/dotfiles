; Set PATH variables
(add-to-list 'exec-path "/opt/homebrew/bin/")
(setenv "MANPATH" "/usr/share/man:/usr/local/share/man:/Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/share/man:/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/share/man:/opt/X11/share/man:/opt/homebrew/share/man")

; Change font
(set-face-attribute 'default nil
                    :family "Source Code Pro" :height 145 :weight 'normal)

; Change Special Keys assignation
(setq mac-option-modifier nil
      mac-command-modifier 'meta)
