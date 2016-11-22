;;; package --- Customization for the emacs environment
;;; Commentary:
;;;
;;; Code:
;;;
(custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(python-shell-exec-path (quote ("python3")))
 '(python-shell-interpreter "python3")
;;  '(coffee-command "coffee")
;;  '(custom-safe-themes (quote ("501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" default)))
;;  '(minimap-dedicated-window t)
;;  '(minimap-width-fraction 0.15)
;;  '(virtualenv-root "~/dev/ve"))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
)

;; (set-frame-font "Inconsolata-14")
;;(setq initial-scratch-message "ಠ_ಠ")
;; (load-theme 'solarized-dark t)

(setq helm-ff-newfile-prompt-p nil)
(set-language-environment "UTF-8")

;;; I prefer option key for meta
(setq mac-option-key-is-meta t
      mac-command-key-is-meta nil
      mac-command-modifier 'none
      mac-option-modifier 'meta)

;; (global-auto-revert-mode 1)
;; (global-linum-mode 1)

;; (require 'package)
;; (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; (defun prelude-prog-mode-hook ()
;;   "Default coding hook, useful with any programming language."
;;   (flyspell-prog-mode)
;;   (linum-mode 1)
;;   (prelude-local-comment-auto-fill)
;;   (prelude-turn-on-abbrev)
;;   (prelude-add-watchwords)
;;   ;; keep the whitespace decent all the time
;;   (add-hook 'before-save-hook 'whitespace-cleanup nil t)
;;   )

;; (defun path-from-shell (sh-cmd)
;;   "Get the $PATH from a login shell"
;;   ;;(interactive)

;;   (split-string (replace-regexp-in-string "[ \t\n]*$" ""
;;                                           (shell-command-to-string
;;                                            (concat (executable-find sh-cmd) " --login -i -c 'echo $PATH'")))
;;                 path-separator)
;;   )

;; (defun set-exec-path-from-shell-PATH (sh-cmd)
;;   "Set up Emacs' `exec-path' and PATH environment variable to match that used by the user's shell.

;; This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
;;   (interactive)
;;   (let ((path (path-from-shell sh-cmd)))
;;     (setenv "PATH" (mapconcat (lambda (e) e) path path-separator))
;;     (setq exec-path path)
;;     ))

;; (set-exec-path-from-shell-PATH "zsh")

;; ;; (autoload 'window-number-meta-mode "window-number"
;; ;;   "A global minor mode that enables use of the M- prefix to select
;; ;; windows, use `window-number-mode' to display the window numbers in
;; ;; the mode-line."
;; ;;   t)
;; ;; ;;(window-number-mode 1)
;; ;; (window-number-meta-mode 1)

;; ;; Setup org-jira
;; (setq jiralib-url "https://solaise.atlassian.net")
;; ;; (add-to-list 'load-path (concat prelude-vendor-dir "/org-jira"))
;; ;; (require 'org-jira)

;; (defun insert-pound ()
;;   "Inserts a pound into the buffer"
;;    (insert "#"))
;; (global-set-key (kbd "M-3") '(lambda()(interactive)(insert-pound)))

;; ;; Set up web-mode
;; (add-to-list 'load-path (concat prelude-vendor-dir "/web-mode"))
;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.jinja2\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (defun web-mode-hook ()
;;   "Hooks for Web mode."
;;   (setq web-mode-markup-indent-offset 2)
;; )
;; (add-hook 'web-mode-hook  'web-mode-hook)

(provide 'config)
;;; config.el ends here
