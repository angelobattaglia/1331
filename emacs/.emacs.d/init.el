(setq inhibit-startup-message t) ;; Disable the startup message
(scroll-bar-mode -1) ;; Disable visible scrollbar
(tool-bar-mode -1) ;; Disable the toolbar
(tooltip-mode -1) ;; Disable tooltips
(set-fringe-mode 10) ;; Give some breathing room

(menu-bar-mode -1) ;; Disable the menu bar

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        	("org" . "https://orgmode.org/elpa")
        	("elpa"."https://elpa.gnu.org/packages")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; 

