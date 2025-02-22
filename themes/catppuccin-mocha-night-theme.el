;;; themes/catppucin-mocha-night-theme.el --- Edited from doom-one -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;;; Commentary:
;; This is basically just the catppuccin-mocha-theme but with a pure black background, darker bg-alt, and darker region
;;
;;; Code:

(require 'doom-themes)

(defvar catppuccin-mocha-brighter-comments nil)
(setq catppuccin-mocha-brighter-comments nil)
;;
;;; Variables
;;;



;; (set-face-attribute 'org-list-dt)

(setq mocha-rosewater "#f5e0dc"
      mocha-flamingo "#f2cdcd"
      mocha-pink "#f5c2e7"
      mocha-mauve "#cba6f7"
      mocha-red "#f38ba8"
      mocha-maroon "#eba0ac"
      mocha-peach "#fab387"
      mocha-yellow "#f9e2af"
      mocha-green "#a6e3a1"
      mocha-teal "#94e2d5"
      mocha-sky "#89dceb"
      mocha-sapphire "#74c7ec"
      mocha-blue "#89b4fa"
      mocha-lavender "#b4befe"
      mocha-text "#cdd6f4"
      mocha-subtext1 "#bac2de"
      mocha-subtext0 "#a6adc8"
      mocha-overlay2 "#9399b2"
      mocha-overlay1 "#7f849c"
      mocha-overlay0 "#6c7086"
      mocha-surface2 "#585b70"
      mocha-surface1 "#45475a"
      mocha-surface0 "#313244"
      mocha-base "#1e1e2e"
      mocha-mantle "#181825"
      mocha-crust "#11111b")

(def-doom-theme catppuccin-mocha-night
    "Doom catppuccin theme using the doom-theme stuff."
  :background-mode 'dark

  (
   (bg `("#000000"))
   (fg `(,mocha-text))

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     `(,mocha-crust))
   (fg-alt     `(,mocha-subtext1))

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      `("#000000"))
   (base1      `("#000000"))
   (base2      `(,mocha-base))
   (base3      `(,mocha-surface1))
   (base4      `(,mocha-overlay0))
   (base5      `(,mocha-overlay1))
   (base6      `(,mocha-subtext0))
   (base7      `(,mocha-text))
   (base8      `(,(doom-lighten mocha-text 0.6)))

   (grey       base4)
   (red        `(,mocha-red))
   (orange     `(,mocha-peach))
   (green      `(,mocha-green))
   (teal       `(,mocha-teal))
   (yellow     `(,mocha-yellow))
   (blue       `(,mocha-sapphire))
   (dark-blue  `(,mocha-blue))
   (magenta    `(,mocha-mauve))
   (violet     `(,mocha-pink))
   (cyan       `(,mocha-sky))
   (dark-cyan  `(,mocha-lavender))

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      mocha-rosewater)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      dark-blue)
   (builtin        red)
   (comments       (if catppuccin-mocha-brighter-comments dark-cyan base4))
   (doc-comments   (doom-lighten (if catppuccin-mocha-brighter-comments dark-cyan base4) 0.25))
   (constants      orange)
   (functions      dark-blue)
   (keywords       magenta)
   (methods        dark-blue)
   (operators      cyan)
   (type           yellow)
   (strings        green)
   (variables      (doom-lighten magenta 0.4))
   (numbers        orange)
   ;; (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (region         mocha-surface0)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red))


  (((line-number &override) :background bg :foreground base4)
   ((line-number-current-line &override) :foreground fg)
   (css-selector             :foreground blue)
   (org-block                :background mocha-mantle    :extend t)
   (org-hide :background base0 :extend t)
   (nav-flash-face :background selection :foreground base8 :weight 'bold)

   (outline-1 :foreground mocha-red                   :weight 'bold :extend t)
   (outline-2 :foreground mocha-peach                 :weight 'bold :extend t)
   (outline-3 :foreground mocha-yellow                :weight 'bold :extend t)
   (outline-4 :foreground mocha-green                 :weight 'bold :extend t)
   (outline-5 :foreground mocha-sapphire              :weight 'bold :extend t)
   (outline-6 :foreground mocha-lavender              :weight 'bold :extend t)
   (outline-7 :foreground mocha-mauve                 :weight 'bold :extend t)
   (outline-8 :foreground mocha-maroon                :weight 'bold :extend t)))

;; (set-face-attribute 'nav-flash-face nil :inherit 'region :background 'unspecified :foreground 'unspecified :weight 'light)

(provide 'catppuccin-mocha-night-theme)
;;; catppuccin-mocha-night-theme.el ends here
