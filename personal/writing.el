;;; package --- Setup for writing activities (mainly Markdown)
;;; Commentary:
;;;
;;; Code:
;;;

;; --------------------
;; Olivetti Mode setup
;; --------------------
(add-hook 'markdown-mode-hook 'turn-on-olivetti-mode)
(custom-set-variables
 '(olivetti-body-width 130)
)

(provide 'writing)
;;; writing.el ends here
