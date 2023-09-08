;; Emacs Configurations

(setq inhibit-startup-message t) ; don't show splash screen at startup
(add-to-list 'default-frame-alist '(fullscreen . maximized)) ; full screen at startup

(scroll-bar-mode -1) ; disable scrollbar

(add-to-list 'custom-theme-load-path "~/.config/emacs/themes") ; add theme path
(load-theme 'dracula t) ; load dracula theme

(add-to-list 'load-path "~/.config/emacs/init.el") ; load init.el

;; Org-Mode Configurations

(add-to-list 'load-path "~/src/org-mode/lisp") ; load org-mode

(global-set-key (kbd "C-c l") #'org-store-link) ; org store key bind
(global-set-key (kbd "C-c a") #'org-agenda) ; org agenda key bind
(global-set-key (kbd "C-c c") #'org-capture) ; org capture key bind

(setq org-adapt-indentation t
      org-hide-leading-stars t
      org-odd-levels-only t) ; set adapt indentation w/ clean stars

(setq org-agenda-files (directory-files-recursively "~/Org/" "\\.org$")) ; add Org directory to agenda view
