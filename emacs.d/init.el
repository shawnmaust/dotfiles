;; ========================================
;; Startup UI
;; ========================================

(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1)   ; Disable the toolbar
(tooltip-mode -1)    ; Disable tooltips
(set-fringe-mode 10) ; Give some breathing room
(menu-bar-mode -1)   ; Disable the menu bar

;; Font-face
(set-face-attribute 'default nil :font "Fira Code" :height 180)

;; ========================================
;; Package management
;; ========================================

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))

(package-initialize)

(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)

;; ========================================
;; Theme
;; ========================================

;; Use doom-themes
(use-package doom-themes
  :init (load-theme 'doom-oceanic-next t))

;; Modeline
(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

;; Colored brackets
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Write-room - distraction-free mode
(use-package writeroom-mode)

;; ========================================
;; Ivy (auto-completion)
;; ========================================

(use-package ivy
  :config
  (ivy-mode 1))


;; ========================================
;; Key Binding Configuration
;; ========================================

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Show subsequent options for each key press
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.5))

;; Vim bindings
(use-package evil
  :init
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1)
)

;; Set up leader keys and custom bindings

; (use-package general
;   :config
;   (general-evil-setup t)
;   (general-create-definer rune/leader-keys
;     :keymaps '(normal insert visual emacs)
;     :prefix "SPC"
;     :global-prefix "C-SPC"))

;; ========================================
;; Magit
;; ========================================
(use-package magit)

;; ========================================
;; Org mode
;; ========================================

; Show only last * of headings
(add-hook 'org-mode-hook 'org-indent-mode) 

;; ========================================
;; Custom
;; ========================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e6f3a4a582ffb5de0471c9b640a5f0212ccf258a987ba421ae2659f1eaa39b09" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" default))
 '(org-agenda-files '("~/org/work.org" "~/org/personal.org"))
 '(package-selected-packages
   '(ivy general rainbow-delimiters doom-modeline which-key evil-collection evil doom-themes use-package)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
