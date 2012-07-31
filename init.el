(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/scala-mode")
(add-to-list 'load-path "~/.emacs.d/ensime/elisp")
(require 'scala-mode-auto)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-to-list 'load-path "~/.emacs.d/keybindings")
(add-to-list 'load-path "~/.emacs.d")

(require 'slawosz-hooks)
(require 'keybindings)
(line-number-mode 1)    ; makes the line number show up
(column-number-mode 1)  ; makes the column number show up

