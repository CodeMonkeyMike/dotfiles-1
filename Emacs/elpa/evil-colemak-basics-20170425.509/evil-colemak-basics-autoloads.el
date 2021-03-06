;;; evil-colemak-basics-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "evil-colemak-basics" "evil-colemak-basics.el"
;;;;;;  (23209 39175 252327 415000))
;;; Generated autoloads from evil-colemak-basics.el

(autoload 'evil-colemak-basics-mode "evil-colemak-basics" "\
Minor mode with evil-mode enhancements for the Colemak keyboard layout.

\(fn &optional ARG)" t nil)

(defvar global-evil-colemak-basics-mode nil "\
Non-nil if Global Evil-Colemak-Basics mode is enabled.
See the `global-evil-colemak-basics-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-colemak-basics-mode'.")

(custom-autoload 'global-evil-colemak-basics-mode "evil-colemak-basics" nil)

(autoload 'global-evil-colemak-basics-mode "evil-colemak-basics" "\
Toggle Evil-Colemak-Basics mode in all buffers.
With prefix ARG, enable Global Evil-Colemak-Basics mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Colemak-Basics mode is enabled in all buffers where
`(lambda nil (evil-colemak-basics-mode t))' would do it.
See `evil-colemak-basics-mode' for more information on Evil-Colemak-Basics mode.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; evil-colemak-basics-autoloads.el ends here
