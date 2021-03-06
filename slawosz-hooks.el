;; http://emacswiki.org/emacs/IncrementalSearchh
;; With this hook, both ‘C-g’ and ‘RET’ exit the search at the
;; begining of the search string.
;;  To get back to where you started the search, just use ‘C-x C-x’.
;; This works because isearch sets the mark at the search start (if
;; point ends up elsewhere after searching)

(add-hook 'isearch-mode-end-hook 'my-goto-match-beginning)
(defun my-goto-match-beginning ()
  (when (and isearch-forward isearch-other-end)
    (goto-char isearch-other-end)))

(defadvice isearch-exit (after my-goto-match-beginning activate)
  "Go to beginning of match."
  (when (and isearch-forward isearch-other-end)
    (goto-char isearch-other-end)))

(provide 'slawosz-hooks)

;; usefull for scala coans
(setq last-kbd-macro
   [?\C-a ?\C-s ?\M-p ?\C-j ?\C-= ?\C-w])
