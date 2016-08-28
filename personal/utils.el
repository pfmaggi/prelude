;; duplicate line and comment the firstone
(defun djcb-duplicate-line (&optional commentfirst)
  "comment line at point; if COMMENTFIRST is non-nil, comment the original"
  (interactive)
  (beginning-of-line)
  (push-mark)
  (end-of-line)
  (let ((str (buffer-substring (region-beginning) (region-end))))
    (when commentfirst
    (comment-region (region-beginning) (region-end)))
    (insert-string
      (concat (if (= 0 (forward-line 1)) "" "\n") str "\n"))
    (forward-line -1)))

(add-hook 'before-save-hook
          '(lambda ()
             (or (file-exists-p (file-name-directory buffer-file-name))
                 (make-directory (file-name-directory buffer-file-name) t))))

;; highlighting "TODO", "FIXME" and friends
(add-hook 'c-mode-common-hook
          (lambda ()
            (font-lock-add-keywords nil
                                    '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

;; highlighting lines that are too long
(add-hook 'c-mode-hook
  (lambda ()
    (font-lock-add-keywords nil
      '(("^[^\n]\\{100\\}\\(.*\\)$" 1 font-lock-warning-face t)))))

;;
;; Duplicate Current Line or Region in Emacs
;;
(defun duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
        (goto-char end)
        (newline)
        (insert region)
        (setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))


;; --------------------------------------------------------------------------------
;; Global set keys
;; --------------------------------------------------------------------------------

;; (global-set-key (kbd "C-c C-d") 'dash-at-point)
;; (global-set-key (kbd "C-c C-e") 'dash-at-point-with-docset)
;;(global-set-key (kbd "C-c y") 'djcb-duplicate-line)
(global-set-key (kbd "C-c d") (lambda()(interactive)(djcb-duplicate-line t)))
(global-set-key (kbd "C-c r") 'duplicate-current-line-or-region)
(global-set-key "\C-Z" 'undo)           ;;; Map undo function to Ctrl-Z (and avoid miniminze window)

;; Left alt is META, right alt is ALT
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)
