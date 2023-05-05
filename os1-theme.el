;;; os1-theme.el --- A light, warm, modern theme powered by solarized.  -*- lexical-binding: t; -*-

;; Version: 0.2.0
;; Package-Requires: ((emacs "27") (autothemer "0.2"))
;; Keywords: convenience, themes, os1, her

;;; Commentary:

;; A light, warm, modern theme inspired by the color palettes of movies such as
;; Her and Paris, Texas. Designed with equal focus on readability and coziness.

;;; Code:

(require 'autothemer)
(require 'os1-utils)

;; Options

(defgroup os1 nil
  "OS1 theme options. These should be set before loading."
  :group 'faces
  :link '(url-link :tag "GitHub" "https://github.com/sashimacs/os1-theme"))

(defcustom os1-modeline-padding 1
  "Amount of padding in pixels around the modeline in GUI sessions."
  :type 'number
  :group 'os1)

(defcustom os1-use-variable-pitch t
  "Use variable pitch face for some headings and titles."
  :type 'boolean
  :group 'os1)

(defcustom os1-use-less-bold nil
  "Use bold weight less often."
  :type 'boolean
  :group 'os1)

(defcustom os1-prefer-semibold nil
  "Prefer semibold over bold for emphasis."
  :type 'boolean
  :group 'os1)

(defcustom os1-use-more-italic nil
  "Use italic slant more often."
  :type 'boolean
  :group 'os1)

(defcustom os1-height-minus-1 0.8
  "Font size -1."
  :type 'number
  :group 'os1)

(defcustom os1-height-plus-1 1.1
  "Font size +1."
  :type 'number
  :group 'os1)

(defcustom os1-height-plus-2 1.15
  "Font size +2."
  :type 'number
  :group 'os1)

(defcustom os1-height-plus-3 1.2
  "Font size +3."
  :type 'number
  :group 'os1)

(defcustom os1-height-plus-4 1.3
  "Font size +4."
  :type 'number
  :group 'os1)

(autothemer-deftheme
 os1 "A light, warm, modern theme focused on legibility and coziness."

 ((((class color) (min-colors #xFFFFFF)))
  ;; Customization-based variables.
  (maybe-bold (if os1-use-less-bold 'normal (if os1-prefer-semibold 'semibold 'bold)))
  (maybe-italic (if os1-use-more-italic 'italic 'normal))
  (maybe-variable-pitch (if os1-use-variable-pitch 'variable-pitch 'default))

  ;; Core palette.
  (base3       "#140705")
  (base2       "#292624")
  (base1       "#514c48")
  (base0       "#514c48")
  (middle      "#c8b9b6")
  (base00      "#8c8785")
  (base01      "#a39f9e")
  (base02      "#f3e0ce")
  (base03      "#f8ede2")
  (hl-light    "#f5e5d6")
  (superlight  "#faf5eb")
  (yellow      "#cda018")
  (orange      "#c54a28")
  (red         "#c3040f")
  (magenta     "#ff3370")
  (violet      "#6c71c4")
  (blue        "#325892")
  (cyan        "#209e77")
  (green       "#678001")
  (yellow-1bg  "#f8e8c6")
  (yellow-1fg  "#876d26")
  (yellow-2bg  "#f1d49b")
  (yellow-2fg  "#766634")
  (yellow-d    "#866300")
  (yellow-l    "#e1af4b")
  (orange-1bg  "#fedfc5")
  (orange-1fg  "#974727")
  (orange-2bg  "#edc8be")
  (orange-2fg  "#854a33")
  (orange-d    "#992700")
  (orange-l    "#fb7640")
  (red-1bg     "#f2ceca")
  (red-1fg     "#72271d")
  (red-2bg     "#e6a299")
  (red-2fg     "#622f2b")
  (red-d       "#872d22")
  (red-l       "#ff6849")
  (magenta-1bg "#fdded7")
  (magenta-1fg "#db0042")
  (magenta-2bg "#fdbac6")
  (magenta-2fg "#854568")
  (magenta-d   "#a00559")
  (magenta-l   "#ff699e")
  (violet-1bg  "#ebe4e2")
  (violet-1fg  "#4f5e99")
  (violet-2bg  "#d1c9e3")
  (violet-2fg  "#475a8b")
  (violet-d    "#243e9b")
  (violet-l    "#8d85e7")
  (blue-1bg    "#e7e8e4")
  (blue-1fg    "#678fcb")
  (blue-2bg    "#c3d5e9")
  (blue-2fg    "#246792")
  (blue-d      "#0061a8")
  (blue-l      "#91aed9")
  (cyan-1bg    "#e4ecda")
  (cyan-1fg    "#207e7b")
  (cyan-2bg    "#bedfcf")
  (cyan-2fg    "#247374")
  (cyan-d      "#007d76")
  (cyan-l      "#6ccec0")
  (green-1bg   "#cbf1c5")
  (green-1fg   "#2d5430")
  (green-2bg   "#89e28d")
  (green-2fg   "#2d5430")
  (green-d     "#5b7300")
  (green-l     "#b3c34d")

  ;; Blended values must be pre-computed with autothemer.
  (magit-diff-hunk-heading-selection-bg (os1-color-blend yellow base02 0.1))
  (nav-flash-face-fg (os1-color-blend yellow base1 0.2))
  (nav-flash-face-bg (os1-color-blend yellow base03 0.2))
  (outline-minor-1-bg (os1-color-blend base03 yellow .9))
  (solaire-default-face-bg (os1-color-blend base02 base03 0.5))
  (solaire-minibuffer-face-bg (os1-color-blend base02 base03 0.5))
  (solaire-line-number-face-bg (os1-color-blend base02 base03 0.5))
  (solaire-hl-line-face-bg (os1-color-blend base02 base03 0.95))
  (solaire-org-hide-face-bg (os1-color-blend base02 base03 0.5))
  (transient-nonstandard-key-bg (os1-color-blend yellow-l base3 0.2))
  (transient-mismatched-key-bg (os1-color-blend red-l base3 0.2))
  )

 ;; Specifications for Emacs faces.
 ;; Simpler than deftheme, just specify a face name and
 ;; a plist of face definitions (nested for :underline, :box etc.)
 (
  (default (:foreground base3 :background base03))
  (button (:underline t))
  (cursor (:foreground base03 :background base0))
  (error (:foreground red))
  (escape-glyph (:foreground violet))

  (highlight (:background hl-light))
  (hl-line (:background hl-light))
  (minibuffer-prompt (:foreground violet-d :weight 'semibold))

  (fringe (:foreground base01 :background base03))
  (header-line
   (:inverse-video 'unspecified
                   :overline nil
                   :underline base02
                   :foreground base0
                   :background base03
                   :box (:line-width 2 :color base03
                                     :style 'unspecified)))
  (lazy-highlight (:foreground base03 :background yellow
                               :weight 'normal))
  (link (:foreground blue :underline t :weight maybe-bold))
  (link-visited (:foreground blue-1fg :underline t :weight 'normal))
  (match (:background base02 :foreground base1 :weight 'bold))
  (menu (:foreground base0 :background base03))
  (help-key-binding (:box (:line-width '(1 . -1) :color middle :style nil) :background base02))
  (mode-line
   (:inverse-video 'unspecified
                   :underline nil :overline nil
                   :background base02 :foreground base1
                   :box (:line-width os1-modeline-padding :color base02)))
  (mode-line-buffer-id (:foreground base2 :weight 'semibold))
  (mode-line-inactive
   (:inverse-video 'unspecified
                   :underline nil :overline nil
                   :background hl-light
                   :foreground base01
                   :box (:line-width os1-modeline-padding :color hl-light)))
  (region (:background orange-2bg :extend t))
  (secondary-selection (:extend t :background base02))
  (shadow (:foreground base01))
  (success (:foreground green))
  (trailing-whitespace (:background red))
  (vertical-border (:foreground middle))
  (warning (:foreground yellow))
  (next-error (:foreground magenta-2fg :background magenta-2bg :weight 'normal))

  (font-lock-builtin-face (:foreground base0 :weight maybe-bold :slant maybe-italic))
  (font-lock-comment-delimiter-face (:foreground middle :slant maybe-italic))
  (font-lock-comment-face (:foreground base00))
  (font-lock-constant-face (:foreground blue :weight 'bold))
  (font-lock-doc-face (:foreground cyan :slant maybe-italic))
  (font-lock-function-name-face (:foreground blue))
  (font-lock-keyword-face (:foreground green :weight maybe-bold))
  (font-lock-negation-char-face (:foreground yellow :weight 'bold))
  (font-lock-preprocessor-face (:foreground blue))
  (font-lock-regexp-grouping-construct (:foreground yellow :weight 'bold))
  (font-lock-regexp-grouping-backslash (:foreground green :weight 'bold))
  (font-lock-string-face (:foreground cyan))
  (font-lock-type-face (:foreground yellow))
  (font-lock-variable-name-face (:foreground blue))
  (font-lock-warning-face (:inherit 'error :weight 'bold))
  (c-annotation-face (:inherit font-lock-constant-face))

  (compilation-column-face (:foreground cyan :underline nil))
  (compilation-column-number (:inherit 'font-lock-doc-face :foreground cyan
                                       :underline nil))
  (compilation-enter-directory-face (:foreground green :underline nil))
  (compilation-error (:inherit 'error :underline nil))
  (compilation-error-face (:foreground red : :underline nil))
  (compilation-face (:foreground base0 :underline nil))
  (compilation-info (:foreground base01 :underline nil :bold nil))
  (compilation-info-face (:foreground blue :underline nil))
  (compilation-leave-directory-face (:foreground green :underline nil))
  (compilation-line-face (:foreground green :underline nil))
  (compilation-line-number (:foreground green :underline nil))
  (compilation-warning (:inherit 'warning :underline nil))
  (compilation-warning-face (:foreground yellow :weight 'normal :underline nil))

  (compilation-mode-line-exit
   (:foreground 'unspecified :weight 'bold))
  (compilation-mode-line-fail
   (:inherit 'compilation-error :foreground red :weight 'bold))
  (compilation-mode-line-run (:foreground orange :weight 'bold))
;;;;; child-frame
  (child-frame-border (:background red-2bg))
;;;;; completions
  (completions-annotations (:foreground base01))
  (completions-common-part (:foreground violet-d :weight 'semibold))
  (completions-first-difference (:inherit 'unspecified))
;;;;; cua
  (cua-global-mark (:background yellow :foreground base03))
  (cua-rectangle (:inherit 'region
                           :background magenta :foreground base03))
  (cua-rectangle-noselect (:inherit 'region :background base02
                                    :foreground base01))
;;;;; debbugs
  (debbugs-gnu-archived (:inverse-video t))
  (debbugs-gnu-done (:foreground base01))
  (debbugs-gnu-handled (:foreground green))
  (debbugs-gnu-new (:foreground blue))
  (debbugs-gnu-pending (:foreground cyan))
  (debbugs-gnu-stale (:foreground yellow))
  (debbugs-gnu-stale-1 (:foreground yellow))
  (debbugs-gnu-stale-2 (:foreground yellow-1fg))
  (debbugs-gnu-stale-3 (:foreground yellow-2fg))
  (debbugs-gnu-stale-4 (:foreground orange-1fg))
  (debbugs-gnu-stale-5 (:foreground orange-2fg))
  (debbugs-gnu-tagged (:foreground base1 :weight 'bold))
;;;;; diary
  (diary (:foreground yellow))
;;;;; dired
  (dired-directory (:foreground blue :weight 'normal))
  (dired-flagged (:foreground red))
  (dired-header (:foreground base03 :background blue))
  (dired-ignored (:inherit 'shadow))
  (dired-mark (:foreground yellow :weight 'bold))
  (dired-marked (:foreground magenta :weight 'bold))
  (dired-perm-write (:foreground base0 :underline t))
  (dired-symlink (:foreground cyan :weight 'normal :slant 'italic))
  (dired-warning (:foreground orange :underline t))
  (dired-broken-symlink (:foreground red :underline t :slant 'italic))
;;;;; dired-async
  (dired-async-message (:background yellow-l))
  (dired-async-mode-message (:background red-l))
;;;;; dired-efap
  (dired-efap-face (:box nil
                         :background base02
                         :foreground base1
                         :underline middle
                         :weight 'bold))
;;;;; display-fill-column-indicator
  (fill-column-indicator (:foreground base02 :weight 'semilight))
;;;;; dropdown
  (dropdown-list-face (:background base02 :foreground cyan))
  (dropdown-list-selection-face (:background cyan-l :foreground cyan-d))
;;;;; ecb
  (ecb-default-highlight-face (:background blue :foreground base03))
  (ecb-history-bucket-node-dir-soure-path-face
   (:inherit 'ecb-history-bucket-node-face :foreground yellow))
  (ecb-source-in-directories-buffer-face (:inherit 'ecb-directories-general-face
                                                   :foreground base0))
  (ecb-history-dead-buffer-face (:inherit 'ecb-history-general-face
                                          :foreground base01))
  (ecb-directory-not-accessible-face (:inherit 'ecb-directories-general-face
                                               :foreground base01))
  (ecb-bucket-node-face (:inherit 'ecb-default-general-face :weight 'normal
                                  :foreground blue))
  (ecb-tag-header-face (:background base02))
  (ecb-analyse-bucket-element-face (:inherit 'ecb-analyse-general-face
                                             :foreground green))
  (ecb-directories-general-face (:inherit 'ecb-default-general-face :height 1.0))
  (ecb-method-non-semantic-face (:inherit 'ecb-methods-general-face
                                          :foreground cyan))
  (ecb-mode-line-prefix-face (:foreground green))
  (ecb-tree-guide-line-face (:inherit 'ecb-default-general-face
                                      :foreground base02 :height 1.0))
;;;;; ee
  (ee-bookmarked (:foreground base1))
  (ee-category (:foreground blue))
  (ee-link (:inherit 'link))
  (ee-link-visited (:inherit 'link-visited))
  (ee-marked (:foreground magenta :weight 'bold))
  (ee-omitted (:foreground base01))
  (ee-shadow (:inherit 'shadow))
;;;;; eldoc-box
  (eldoc-box-border (:background red-2bg))
  (eldoc-box-body (:inherit maybe-variable-pitch :background base02))
;;;;; enh-ruby-mode
  (enh-ruby-string-delimiter-face (:foreground yellow))
  (enh-ruby-heredoc-delimiter-face (:inherit 'enh-ruby-string-delimiter-face))
  (enh-ruby-regexp-delimiter-face (:inherit 'enh-ruby-string-delimiter-face))
  (enh-ruby-op-face (:foreground base0))
  (erm-syn-errline (:inherit 'flymake-errline))
  (erm-syn-warnline (:inherit 'flymake-warnline))
;;;;; grep
  (grep-context-face (:foreground base0))
  (grep-error-face (:foreground red :weight 'bold :underline t))
  (grep-hit-face (:foreground blue))
  (grep-match-face (:foreground orange :weight 'bold))
;;;;; isearch
  (isearch (:foreground base03 :background magenta :weight 'normal))
  (isearch-fail (:foreground red :background base03 :bold t))
;;;;; man
  (Man-overstrike (:foreground blue :weight 'bold))
  (Man-reverse (:foreground orange))
  (Man-underline (:foreground green :underline t))
;;;;; pulse
  (pulse-highlight-start-face (:background yellow-2bg))
;;;;; wid-edit
  (widget-field (:background base02))

  ;; Third-party extensions.

  ;; ace-jump
  (ace-jump-face-background (:foreground base01 :background base03
                                         :inverse-video nil))
  (ace-jump-face-foreground (:foreground red :background base03 :inverse-video nil :weight 'bold))

  ;; all-the-icons
  (spaceline-all-the-icons-info-face (:foreground blue))
  (spaceline-all-the-icons-sunrise-face (:foreground yellow))
  (spaceline-all-the-icons-sunrise-face (:foreground orange))
  (all-the-icons-dired-dir-face (:foreground base0))
  (all-the-icons-red (:foreground red))
  (all-the-icons-lred (:foreground red-l))
  (all-the-icons-dred (:foreground red-d))
  (all-the-icons-red-alt (:foreground red))
  (all-the-icons-green (:foreground green))
  (all-the-icons-lgreen (:foreground green-l))
  (all-the-icons-dgreen (:foreground green-d))
  (all-the-icons-yellow (:foreground yellow))
  (all-the-icons-lyellow (:foreground yellow-l))
  (all-the-icons-dyellow (:foreground yellow-d))
  (all-the-icons-blue (:foreground blue))
  (all-the-icons-blue-alt (:foreground blue))
  (all-the-icons-lblue (:foreground blue-l))
  (all-the-icons-dblue (:foreground blue-d))
  (all-the-icons-maroon (:foreground magenta-d))
  (all-the-icons-lmaroon (:foreground magenta-d))
  (all-the-icons-dmaroon (:foreground magenta-d))
  (all-the-icons-purple (:foreground violet))
  (all-the-icons-lpurple (:foreground violet-l))
  (all-the-icons-dpurple (:foreground violet-d))
  (all-the-icons-orange (:foreground orange))
  (all-the-icons-lorange (:foreground orange-l))
  (all-the-icons-dorange (:foreground orange-d))
  (all-the-icons-cyan (:foreground cyan))
  (all-the-icons-cyan-alt (:foreground cyan))
  (all-the-icons-lyan (:foreground cyan-l))
  (all-the-icons-dcyan (:foreground cyan-d))
  (all-the-icons-pink (:foreground magenta))
  (all-the-icons-lpink (:foreground magenta-l))
  (all-the-icons-dpink (:foreground magenta-d))
  (all-the-icons-silver (:foreground base0))
  (all-the-icons-lsilver (:foreground base01))
  (all-the-icons-dsilver (:foreground base1))

;;;;; anzu-mode
  (anzu-mode-line (:foreground yellow :weight 'bold))

  ;;;;; auctex
  (font-latex-bold-face (:inherit 'bold :foreground base1))
  (font-latex-doctex-documentation-face (:background 'unspecified))
  (font-latex-doctex-preprocessor-face
   (:inherit ('font-latex-doctex-documentation-face
              'font-lock-builtin-face
              'font-lock-preprocessor-face)))
  (font-latex-italic-face (:inherit 'italic :foreground base1))
  (font-latex-math-face (:foreground violet))
  (font-latex-sectioning-0-face (:inherit 'font-latex-sectioning-1-face
                                          :height os1-height-plus-1))
  (font-latex-sectioning-1-face (:inherit 'font-latex-sectioning-2-face
                                          :height os1-height-plus-1))
  (font-latex-sectioning-2-face (:inherit 'font-latex-sectioning-3-face
                                          :height os1-height-plus-1))
  (font-latex-sectioning-3-face (:inherit 'font-latex-sectioning-4-face
                                          :height os1-height-plus-1))
  (font-latex-sectioning-4-face (:inherit 'font-latex-sectioning-5-face
                                          :height os1-height-plus-1))
  (font-latex-sectioning-5-face (:inherit maybe-variable-pitch :foreground yellow
                                          :weight 'bold))
  (font-latex-sedate-face (:foreground base1))
  (font-latex-slide-title-face (:inherit (maybe-variable-pitch 'font-lock-type-face)
                                         :weight 'bold :height os1-height-plus-3))
  (font-latex-string-face (:foreground cyan))
  (font-latex-subscript-face (:height os1-height-minus-1))
  (font-latex-superscript-face (:height os1-height-minus-1))
  (font-latex-verbatim-face (:inherit 'fixed-pitch :foreground base0
                                      :slant 'italic))
  (font-latex-warning-face (:inherit 'bold :foreground orange))

  ;; auto-dim-other-buffers-face
  (auto-dim-other-buffers-face (:background superlight))

  ;; auto-highlight-symbol
  (ahs-definition-face (:foreground magenta :background 'unspecified
                                    :slant 'normal))
  (ahs-definition-face-unfocused (:foreground magenta :background 'unspecified
                                              :slant 'normal))
  (ahs-edit-mode-face (:foreground base03 :background magenta))
  (ahs-face (:foreground magenta :background 'unspecified))
  (ahs-face-unfocused (:foreground magenta :background 'unspecified))
  (ahs-plugin-bod-face (:foreground magenta :background 'unspecified ))
  (ahs-plugin-default-face (:foreground magenta :background 'unspecified))
  (ahs-plugin-default-face-unfocused (:foreground magenta :background 'unspecified))
  (ahs-plugin-whole-buffer-face (:foreground magenta  :background 'unspecified))
  (ahs-warning-face (:foreground red :weight 'bold))
;;;;; avy-mode
  (avy-lead-face (:inherit 'isearch))
  (avy-lead-face-0 (:inherit 'isearch :background violet))
  (avy-lead-face-1 (:inherit 'isearch :background orange))
  (avy-lead-face-2 (:inherit 'isearch :background cyan))
  (avy-background-face (:inherit 'font-lock-comment-face))

  ;; bm
  (bm-face (:overline base0))
  (bm-fringe-face (:overline base0))
  (bm-fringe-persistent-face (:overline base0))
  (bm-persistent-face (:overline base0))
;;;;; calfw
  (cfw:face-day-title (:background base02))
  (cfw:face-annotation (:inherit 'cfw:face-day-title :foreground yellow))
  (cfw:face-default-content (:foreground green))
  (cfw:face-default-day (:inherit 'cfw:face-day-title :weight 'bold))
  (cfw:face-disable (:inherit 'cfw:face-day-title
                              :foreground base01))
  (cfw:face-grid (:foreground base01))
  (cfw:face-header (:foreground blue-d :background blue-l :weight 'bold))
  (cfw:face-holiday (:background 'unspecified :foreground red :weight 'bold))
  (cfw:face-periods (:foreground magenta))
  (cfw:face-select (:background magenta-l :foreground magenta-d))
  (cfw:face-saturday (:foreground cyan-d :background cyan-l))
  (cfw:face-sunday (:foreground red-d :background red-l :weight 'bold))
  (cfw:face-title (:inherit 'maybe-variable-pitch :foreground yellow
                            :weight 'bold :height os1-height-plus-4))
  (cfw:face-today (:weight 'bold :background base02 :foreground nil))
  (cfw:face-today-title (:background yellow-l
                                     :foreground yellow-d :weight 'bold))
  (cfw:face-toolbar (:background base02 :foreground base0))
  (cfw:face-toolbar-button-off (:background yellow-l :foreground yellow-d
                                            :weight 'bold))
  (cfw:face-toolbar-button-on (:background yellow-d :foreground yellow-l
                                           :weight 'bold))
;;;;; cider
  (cider-result-overlay-face (:background 'unspecified))
  (cider-enlightened-face (:box (:color magenta :line-width -1)))
  (cider-enlightened-local-face (:weight 'bold :foreground green-l))
  (cider-deprecated-face (:underline (:color yellow)))
  (cider-instrumented-face (:box (:color red-l :line-width -1)))
  (cider-traced-face (:box (:color cyan :line-width -1)))
  (cider-fringe-good-face (:foreground green-l))
;;;;; cider-repl-mode
  (cider-repl-err-output-face (:inherit 'font-lock-warning-face :underline 'unspecified))
;;;;; cider-test-mode
  (cider-test-failure-face (:foreground orange :weight 'bold :underline t))
  (cider-test-error-face (:foreground red :weight 'bold :underline t))
  (cider-test-success-face (:foreground green :weight 'bold :underline t))
;;;;; coffee
  (coffee-mode-class-name (:foreground yellow :weight 'bold))
  (coffee-mode-function-param (:foreground violet :slant 'italic))
;;;;; column-enforce-mode
  (column-enforce-face (:background 'unspecified :foreground magenta
                                    :inverse-video 'unspecified))
;;;;; col-highlight
  (col-highlight (:background base02))

;;;;; corfu
  (corfu-default (:background base02 :foreground base3))
  (corfu-current (:foreground cyan-2fg :background cyan-2bg))
  (corfu-bar (:background base2))

;;;;; company
  (company-box-scrollbar (:background base01))
  (company-echo nil)
  (company-echo-common (:background red))
  (company-preview (:background base02 :foreground base1))
  (company-preview-common (:foreground base1))
  (company-preview-search (:foreground magenta))
  (company-scrollbar-bg (:background base02 :foreground cyan))
  (company-scrollbar-fg (:foreground base03 :background base0))
  (company-template-field (:background yellow :foreground base02))
  (company-tooltip (:foreground base1 :background base02))
  (company-tooltip-annotation (:foreground cyan))
  (company-tooltip-annotation-selection (:foreground cyan))
  (company-tooltip-common (:foreground base0))
  (company-tooltip-common-selection (:weight 'bold))
  (company-tooltip-mouse (:background cyan-2bg :foreground cyan-2fg))
  (company-tooltip-search (:foreground magenta))
  (company-tooltip-search-selection (:foreground magenta :weight 'bold))
  (company-tooltip-selection (:weight 'bold))

;;;;; consult
  (consult-preview-insertion (:background base02))
  (consult-preview-line (:background base02))

  ;;;;; deadgrep
  (deadgrep-filename-face (:foreground base01 :underline t))
  (deadgrep-match-face (:background base02 :foreground base1))
  (deadgrep-meta-face (:inherit 'font-lock-comment-face))
  (deadgrep-regexp-metachar-face (:inherit 'font-lock-constant-face))
  (deadgrep-search-term-face (:inherit 'font-lock-variable-name-face))
;;;;; diff
  (diff-added (:background green-1bg :foreground green-1fg))
  (diff-changed nil)
  (diff-removed (:background red-1bg :foreground red-1fg))
  (diff-refine-added (:background green-2bg :foreground green-2fg))
  (diff-refine-changed (:background blue-2bg :foreground blue-2fg))
  (diff-refine-removed (:background red-2bg :foreground red-2fg))
  (diff-header (:background base02))
  (diff-file-header (:background base03 :foreground base0 :weight 'bold))
  (diff-context (:foreground base0))
  (diff-indicator-added (:foreground green))
  (diff-indicator-changed (:foreground blue))
  (diff-indicator-removed (:foreground red))
;;;;; diff-hl
  (diff-hl-change (:background blue-1bg :foreground blue-1fg))
  (diff-hl-delete (:background red-1bg :foreground red-1fg))
  (diff-hl-insert (:background green-1bg :foreground green-1fg))
  (diff-hl-reverted-hunk-highlight (:background yellow-1bg :foreground yellow-1fg))
;;;;; doom-modeline
  (doom-modeline-bar (:background violet-d :inherit 'mode-line-highlight))
  (doom-modeline-bar-inactive (:background violet-2bg :inherit t))
;;;;; ediff
  (ediff-even-diff-A (:background base02))
  (ediff-even-diff-Ancestor (:background base02))
  (ediff-even-diff-B (:background base02))
  (ediff-even-diff-C (:background base02))
  (ediff-odd-diff-A (:background base02))
  (ediff-odd-diff-Ancestor (:background base02))
  (ediff-odd-diff-B (:background base02))
  (ediff-odd-diff-C (:background base02))
  (ediff-current-diff-A (:background red-1bg :foreground red-1fg))
  (ediff-current-diff-Ancestor (:background yellow-1bg :foreground yellow-1fg))
  (ediff-current-diff-B (:background green-1bg :foreground green-1fg))
  (ediff-current-diff-C (:background blue-1bg :foreground blue-1fg))
  (ediff-fine-diff-A (:background red-2bg :foreground red-2fg))
  (ediff-fine-diff-Ancestor (:background yellow-2bg :foreground yellow-2fg))
  (ediff-fine-diff-B (:background green-2bg :foreground green-2fg))
  (ediff-fine-diff-C (:background blue-2bg :foreground blue-2fg))
;;;;; smerge
  (smerge-base (:background yellow-1bg :foreground yellow-1fg))
  (smerge-lower (:background green-1bg :foreground green-1fg))
  (smerge-markers (:background base02))
  (smerge-refined-added (:background green-2bg :foreground green-2fg))
  (smerge-refined-removed (:background red-2bg :foreground red-2fg))
  (smerge-upper (:background red-1bg :foreground red-1fg))
;;;;; edts
  (edts-face-error-line (:underline (:style 'line :color red-l) :inherit 'unspecified))
  (edts-face-warning-line (:underline (:style 'line :color yellow-l) :inherit 'unspecified))
  (edts-face-error-fringe-bitmap (:foreground red-l :background 'unspecified :weight 'bold))
  (edts-face-warning-fringe-bitmap (:foreground yellow-l :background 'unspecified :weight 'bold))
  (edts-face-error-mode-line (:background red-l :foreground 'unspecified))
  (edts-face-warning-mode-line (:background yellow-l :foreground 'unspecified))
;;;;; elfeed
  (elfeed-search-date-face (:foreground base01))
  (elfeed-search-feed-face (:foreground base01))
  (elfeed-search-tag-face (:foreground base0))
  (elfeed-search-title-face (:foreground base0))

;;;;; elscreen
  (elscreen-tab-background-face (:background base03))
  (elscreen-tab-current-screen-face (:background base1 :foreground base03 :underline t))
  (elscreen-tab-other-screen-face (:background base02 :foreground base01))
  (elscreen-tab-control-face (:background base03 :foreground base0))
;;;;; epa
  (epa-mark (:foreground magenta :weight 'bold))
  (epa-string (:foreground violet))
  (epa-validity-disabled (:inverse-video t :slant 'italic))
  (epa-validity-high (:weight 'bold))
  (epa-validity-low (:slant 'italic))
  (epa-validity-medium (:slant 'italic))
;;;;; epc
  (epc:face-title (:foreground blue :background base03
                               :weight 'normal :underline 'unspecified))
;;;;; erc
  (erc-action-face (:inherit 'erc-default-face))
  (erc-bold-face (:weight 'bold))
  (erc-current-nick-face (:foreground blue :weight 'bold))
  (erc-dangerous-host-face (:inherit 'font-lock-warning-face))
  (erc-default-face (:foreground base0))
  (erc-highlight-face (:inherit 'erc-default-face :background base02))
  (erc-direct-msg-face (:inherit 'erc-default-face))
  (erc-error-face (:inherit 'font-lock-warning-face))
  (erc-fool-face (:inherit 'erc-default-face))
  (erc-input-face (:foreground yellow))
  (erc-keyword-face (:foreground blue :weight 'bold))
  (erc-nick-default-face (:foreground yellow :weight 'bold))
  (erc-my-nick-face (:foreground red :weight 'bold))
  (erc-nick-msg-face (:inherit 'erc-default-face))
  (erc-notice-face (:foreground green))
  (erc-pal-face (:foreground orange :weight 'bold))
  (erc-prompt-face (:foreground orange :background base03 :weight 'bold))
  (erc-timestamp-face (:foreground green))
  (erc-underline-face (:underline t))
;;;;; eros
  (eros-result-overlay-face (:background 'unspecified))
;;;;; eshell
  (eshell-prompt (:foreground yellow :weight 'bold))
  (eshell-ls-archive (:foreground red :weight 'bold))
  (eshell-ls-backup (:inherit 'font-lock-comment-face))
  (eshell-ls-clutter (:inherit 'font-lock-comment-face))
  (eshell-ls-directory (:foreground blue :weight 'bold))
  (eshell-ls-executable (:foreground red :weight 'bold))
  (eshell-ls-unreadable (:foreground base0))
  (eshell-ls-missing (:inherit 'font-lock-warning-face))
  (eshell-ls-product (:inherit 'font-lock-doc-face))
  (eshell-ls-special (:foreground yellow :weight 'bold))
  (eshell-ls-symlink (:foreground cyan :weight 'bold))

  ;;;;; evil-search-highlight-persist
  (evil-search-highlight-persist-highlight-face (:background green-l))

  ;;;;; flx
  (flx-highlight-face (:foreground blue :weight 'normal :underline 'unspecified))

  ;;;;; flycheck
  (flycheck-fringe-error (:foreground red-d :background red-l :weight 'bold))
  (flycheck-fringe-warning (:foreground yellow-d :background yellow-l :weight 'bold))
  (flycheck-fringe-info (:foreground blue-d :background blue-l :weight 'bold))

;;;;; fold-this
  (fold-this-overlay (:inherit 'default :foreground violet))
;;;;; form-feed
  (form-feed-line (:strike-through middle))
;;;;; git-commit
  (git-commit-comment-action  (:foreground base0  :weight 'bold))
  (git-commit-comment-branch (:foreground blue :weight 'bold))
  (git-commit-comment-branch-local (:foreground blue :weight 'bold))
  (git-commit-comment-branch-remote (:foreground green :weight 'bold))
  (git-commit-comment-heading (:foreground yellow :weight 'bold))
  (git-commit-summary (:foreground violet-d))
;;;;; gnus
  (gnus-group-mail-1 (:weight 'bold :inherit 'gnus-group-mail-1-empty))
  (gnus-group-mail-1-empty (:inherit 'gnus-group-news-1-empty))
  (gnus-group-mail-2 (:weight 'bold :inherit 'gnus-group-mail-2-empty))
  (gnus-group-mail-2-empty (:inherit 'gnus-group-news-2-empty))
  (gnus-group-mail-3 (:weight 'bold :inherit 'gnus-group-mail-3-empty))
  (gnus-group-mail-3-empty (:inherit 'gnus-group-news-3-empty))
  (gnus-group-mail-low (:weight 'bold :inherit 'gnus-group-mail-low-empty))
  (gnus-group-mail-low-empty (:inherit 'gnus-group-news-low-empty))
  (gnus-group-news-1 (:weight 'bold :inherit 'gnus-group-news-1-empty))
  (gnus-group-news-2 (:weight 'bold :inherit 'gnus-group-news-2-empty))
  (gnus-group-news-3 (:weight 'bold :inherit 'gnus-group-news-3-empty))
  (gnus-group-news-4 (:weight 'bold :inherit 'gnus-group-news-4-empty))
  (gnus-group-news-5 (:weight 'bold :inherit 'gnus-group-news-5-empty))
  (gnus-group-news-6 (:weight 'bold :inherit 'gnus-group-news-6-empty))
  (gnus-group-news-low (:weight 'bold :inherit 'gnus-group-news-low-empty))
  (gnus-header-content (:inherit 'message-header-other))
  (gnus-header-from (:inherit 'message-header-other))
  (gnus-header-name (:inherit 'message-header-name))
  (gnus-header-newsgroups (:inherit 'message-header-other))
  (gnus-header-subject (:inherit 'message-header-subject))
  (gnus-summary-cancelled (:foreground orange))
  (gnus-summary-high-ancient (:foreground blue :weight 'bold))
  (gnus-summary-high-read (:foreground green :weight 'bold))
  (gnus-summary-high-ticked (:foreground orange :weight 'bold))
  (gnus-summary-high-unread (:foreground base0 :weight 'bold))
  (gnus-summary-low-ancient (:foreground blue))
  (gnus-summary-low-read ((t (:foreground green))))
  (gnus-summary-low-ticked (:foreground orange))
  (gnus-summary-low-unread (:foreground base0))
  (gnus-summary-normal-ancient (:foreground blue))
  (gnus-summary-normal-read (:foreground green))
  (gnus-summary-normal-ticked (:foreground orange))
  (gnus-summary-normal-unread (:foreground base0))
  (gnus-summary-selected (:foreground yellow :weight 'bold))
  (gnus-cite-1 (:foreground blue))
  (gnus-cite-2 (:foreground blue))
  (gnus-cite-3 (:foreground blue))
  (gnus-cite-4 (:foreground green))
  (gnus-cite-5 (:foreground green))
  (gnus-cite-6 (:foreground green))
  (gnus-cite-7 (:foreground red))
  (gnus-cite-8 (:foreground red))
  (gnus-cite-9 (:foreground red))
  (gnus-cite-10 (:foreground yellow))
  (gnus-cite-11 (:foreground yellow))
  (gnus-group-news-1-empty (:foreground yellow))
  (gnus-group-news-2-empty (:foreground green))
  (gnus-group-news-3-empty (:foreground green))
  (gnus-group-news-4-empty (:foreground blue))
  (gnus-group-news-5-empty (:foreground blue))
  (gnus-group-news-6-empty (:foreground blue-l))
  (gnus-group-news-low-empty (:foreground base01))
  (gnus-signature (:foreground yellow))
  (gnus-x-face (:background base0 :foreground base03))

;;;;; guide-key
  (guide-key/highlight-command-face (:foreground blue))
  (guide-key/key-face (:foreground base01))
  (guide-key/prefix-command-face (:foreground green))

;;;;; helm
  ;; These probably needs tweaking.
  (helm-apt-deinstalled (:foreground base01))
  (helm-apt-installed (:foreground green))
  (helm-bookmark-directory (:inherit 'helm-ff-directory))
  (helm-bookmark-file (:foreground base0))
  (helm-bookmark-gnus (:foreground cyan))
  (helm-bookmark-info (:foreground green))
  (helm-bookmark-man (:foreground violet))
  (helm-bookmark-w3m (:foreground yellow))
  (helm-bookmarks-su (:foreground orange))
  (helm-buffer-not-saved (:foreground orange))
  (helm-buffer-saved-out (:foreground red :background base03 :inverse-video t))
  (helm-buffer-size (:foreground base01))
  (helm-candidate-number (:background base02 :foreground base1 :weight 'bold))
  (helm-ff-dotted-directory (:foreground base03 :background base01))
  (helm-ff-directory (:background base03  :foreground blue))
  (helm-ff-executable (:foreground green))
  (helm-ff-socket (:foreground magenta))
  (helm-ff-pipe (:foreground yellow))
  (helm-ff-suid (:foreground base03 :background red))
  (helm-ff-file (:background base03 :foreground base0))
  (helm-ff-backup-file (:foreground base01))
  (helm-ff-invalid-symlink (:background base03 :foreground orange :slant 'italic))
  (helm-ff-prefix (:background yellow :foreground base03))
  (helm-ff-symlink (:foreground cyan))
  (helm-grep-file (:foreground cyan :underline t))
  (helm-grep-finish (:foreground green))
  (helm-grep-lineno (:foreground orange))
  (helm-grep-match (:inherit 'match))
  (helm-grep-running (:foreground red))
  (helm-header (:inherit 'header-line))
  (helm-header-line-left-margin (:inherit 'header-line))
  (helm-lisp-completion-info (:foreground base0))
  (helm-lisp-show-completion (:foreground yellow  :background base02 :weight 'bold))
  (helm-M-x-key (:foreground orange :underline t))
  (helm-moccur-buffer (:foreground cyan :underline t))
  (helm-match (:inherit 'match))
  (helm-selection (:background base02 :underline t))
  (helm-selection-line (:background base02 :foreground base1 :underline 'unspecified))
  (helm-separator (:foreground red))
  (helm-source-header (:background blue-l :foreground base03 :underline 'unspecified))
  (helm-time-zone-current (:foreground green))
  (helm-time-zone-home (:foreground red))
  (helm-visible-mark (:background base03 :foreground magenta :weight 'bold))
;;;;; helm-css-scss
  (helm-css-scss-selector-depth-face-1 (:foreground base0))
  (helm-css-scss-selector-depth-face-2 (:foreground blue))
  (helm-css-scss-selector-depth-face-3 (:foreground cyan))
  (helm-css-scss-selector-depth-face-4 (:foreground green))
  (helm-css-scss-selector-depth-face-5 (:foreground yellow))
  (helm-css-scss-selector-depth-face-6 (:foreground violet))
  (helm-css-scss-target-line-face (:background 'unspecified :foreground magenta))
;;;;; helm-go-package
  (helm-source-go-package-godoc-description (:foreground base01))
;;;;; helm-swoop
  (helm-swoop-target-line-face (:foreground 'unspecified :background base02))
  (helm-swoop-target-line-block-face (:foreground 'unspecified :background base02))
  (helm-swoop-target-word-face (:foreground magenta :background 'unspecified))
;;;;; highlight-changes
  (highlight-changes (:foreground orange))
  (highlight-changes-delete (:foreground red :underline t))
;;;;; highlight-indentation
  (highlight-indentation-face (:background base02))
  (highlight-indentation-current-column-face(:background base02))
;;;;; highlight-numbers
  (highlight-numbers-number (:foreground violet :weight 'semibold))
;;;;; highlight-symbol
  (highlight-symbol-face (:foreground magenta))
;;;;; hydra
  (hydra-face-red (:foreground base1 :weight 'bold))
  (hydra-face-blue (:foreground blue))
  (hydra-face-amaranth (:foreground orange))
  (hydra-face-pink (:foreground magenta))
  (hydra-face-teal (:foreground cyan))

;;;;; ido-mode
  (ido-first-match (:foreground yellow :weight 'normal))
  (ido-only-match (:foreground base03 :background yellow :weight 'normal))
  (ido-subdir (:foreground blue))
  (ido-incomplete-regexp (:foreground red :weight 'bold ))
  (ido-indicator (:background red :foreground base03 :width 'condensed))
  (ido-virtual (:foreground cyan))
;;;;; iedit-mode
  (iedit-occurrence (:background base03 :foreground magenta :weight 'bold))
;;;;; imenu-list
  (imenu-list-entry-face-0 (:inherit 'font-lock-type-face))
  (imenu-list-entry-face-1 (:inherit 'font-lock-function-name-face))
  (imenu-list-entry-face-2 (:inherit 'font-lock-variable-name-face))
  (imenu-list-entry-face-3 (:inherit 'font-lock-string-face))
;;;;; info
  (info-title-1 (:foreground base1 :weight 'bold))
  (info-title-2 (:foreground base1 :weight 'bold))
  (info-title-3 (:weight 'bold))
  (info-title-4 (:weight 'bold))
  (info-node (:foreground base1 :slant 'italic :weight 'bold))
  (info-header-node (:inherit 'info-node))
  (info-header-xref (:inherit 'info-xref))
  (info-index-match (:inherit 'match))
  (info-menu-header (:inherit maybe-variable-pitch :weight 'bold))
  (info-menu-star (:foreground orange))
  (info-xref (:inherit 'link))
  (info-xref-visited (:inherit ('link-visited 'info-xref)))
;;;;; info+
  (info-file
    (:foreground yellow :background base02))
  (info-menu
    (:foreground violet :background base02))
  (info-single-quote
    (:foreground cyan :inherit 'font-lock-string-face))
  (info-quoted-name
    (:foreground orange :inherit 'font-lock-string-face))
  (info-string
    (:foreground blue :inherit 'font-lock-string-face))
  (info-command-ref-item
    (:foreground green :background base02))
  (info-constant-ref-item
    (:foreground red :background base02))
  (info-function-ref-item
    (:foreground cyan :background base02))
  (info-macro-ref-item
    (:foreground green :background base02))
  (info-reference-item
    (:background base02))
  (info-special-form-ref-item
    (:foreground magenta :background base02))
  (info-syntax-class-item
    (:foreground magenta :background base02))
  (info-user-option-ref-item
    (:foreground orange :background base02))
;;;;; ivy
  (ivy-confirm-face (:foreground green))
  (ivy-current-match (:weight 'bold :background base02 :underline t))
  (ivy-match-required-face (:foreground red))
  (ivy-minibuffer-match-face-1 (:foreground base1))
  (ivy-minibuffer-match-face-2 (:foreground yellow))
  (ivy-minibuffer-match-face-3 (:foreground yellow))
  (ivy-minibuffer-match-face-4 (:foreground yellow))
  (ivy-remote (:foreground blue))
;;;;; jabber
  (jabber-activity-face (:weight 'bold :foreground red))
  (jabber-activity-personal-face (:weight 'bold :foreground blue))
  (jabber-chat-error (:weight 'bold :foreground red))
  (jabber-chat-prompt-foreign (:weight 'bold :foreground red))
  (jabber-chat-prompt-local (:weight 'bold :foreground blue))
  (jabber-chat-prompt-system (:weight 'bold :foreground green))
  (jabber-chat-text-foreign (:foreground base1))
  (jabber-chat-text-local (:foreground base0))
  (jabber-chat-rare-time-face (:underline t :foreground green))
  (jabber-roster-user-away (:slant 'italic :foreground green))
  (jabber-roster-user-chatty (:weight 'bold :foreground orange))
  (jabber-roster-user-dnd (:slant 'italic :foreground red))
  (jabber-roster-user-error (:weight 'light :slant 'italic :foreground red))
  (jabber-roster-user-offline (:foreground base01))
  (jabber-roster-user-online (:weight 'bold :foreground blue))
  (jabber-roster-user-xa (:slant 'italic :foreground magenta))
;;;;; jedi
  (jedi:highlight-function-argument (:inherit 'bold))
;;;;; js2-mode
  (js2-error (:foreground red))
  (js2-external-variable (:foreground orange))
  (js2-function-param (:foreground green))
  (js2-instance-member (:foreground magenta))
  (js2-jsdoc-html-tag-delimiter (:foreground cyan))
  (js2-jsdoc-html-tag-name (:foreground orange))
  (js2-jsdoc-tag (:foreground cyan))
  (js2-jsdoc-type (:foreground blue))
  (js2-jsdoc-value (:foreground violet))
  (js2-magic-paren (:underline t))
  (js2-private-function-call (:foreground yellow))
  (js2-private-member (:foreground blue))
  (js2-warning (:underline orange))
;;;;; js3-mode
  (js3-error (:foreground red))
  (js3-external-variable (:foreground orange))
  (js3-function-param (:foreground green))
  (js3-instance-member (:foreground magenta))
  (js3-jsdoc-html-tag-delimiter (:foreground cyan))
  (js3-jsdoc-html-tag-name (:foreground orange))
  (js3-jsdoc-tag (:foreground cyan))
  (js3-jsdoc-type (:foreground blue))
  (js3-jsdoc-value (:foreground violet))
  (js3-magic-paren (:underline t))
  (js3-private-function-call (:foreground yellow))
  (js3-private-member (:foreground blue))
  (js3-warning (:underline orange))
;;;;; langtool
  (langtool-correction-face (:inherit 'default :weight 'bold))
;;;;; ledger-mode
  (ledger-font-payee-uncleared-face (:foreground red))
  (ledger-font-payee-cleared-face (:foreground green :weight 'normal))
  (ledger-font-xact-highlight-face (:background base02))
  (ledger-font-pending-face (:foreground yellow :weight 'normal))
  (ledger-font-other-face (:foreground base0))
  (ledger-font-posting-account-face (:foreground cyan))
  (ledger-font-posting-account-cleared-face (:foreground base0))
  (ledger-font-posting-account-pending-face (:foreground yellow))
  (ledger-font-posting-amount-face (:foreground yellow))
  (ledger-occur-narrowed-face (:foreground base3 :invisible t))
  (ledger-occur-xact-face (:background base02))
  (ledger-font-comment-face (:foreground base01))
  (ledger-font-reconciler-uncleared-face (:foreground red :weight 'bold))
  (ledger-font-reconciler-cleared-face (:foreground base0 :weight 'normal))
  (ledger-font-reconciler-pending-face (:foreground yellow :weight 'normal))
  (ledger-font-report-clickable-face (:foreground yellow :weight 'normal))
;;;;; display-line-number-mode
  (line-number (:weight 'light :underline nil :foreground base01 :background base03))
  (line-number-minor-tick (:inherit 'line-number :weight 'normal))
  (line-number-major-tick (:inherit 'line-number-minor-tick :weight 'bold))
  (line-number-current-line (:inherit 'line-number :background base03 :foreground base1))
;;;;; lsp-ui
  (lsp-ui-doc-background (:background base03))
  (lsp-ui-doc-header (:background yellow-1bg :foreground yellow-1fg))
  (lsp-ui-doc-url (:inherit 'link))
  (lsp-ui-sideline-code-action (:foreground yellow-1fg :background yellow-1bg :weight 'normal))
  (lsp-ui-sideline-current-symbol (:foreground magenta :weight 'normal))
  (lsp-ui-sideline-global (:underline middle))
  (lsp-ui-sideline-symbol (:foreground base1 :background base02))
;;;;; lusty-explorer
  (lusty-directory-face (:inherit 'dired-directory))
  (lusty-file-face ('unspecified))
  (lusty-match-face (:inherit 'ido-first-match))
  (lusty-slash-face (:foreground cyan :weight 'bold))
;;;;; macrostep
  (macrostep-expansion-highlight-face (:background base02))

;;;;; magit
;;;;;; headings and diffs
     (magit-section-highlight (:extend t :background base02))
     (magit-section-heading (:foreground violet-d :weight 'bold :inherit maybe-variable-pitch :height os1-height-plus-3))
     (magit-section-heading-selection (:foreground orange :weight 'bold))
     (magit-diff-file-heading (:weight 'bold))
     (magit-diff-file-heading-highlight (:extend t :background base02))
     (magit-diff-file-heading-selection (:extend t :background base02 :foreground orange))
     (magit-diff-hunk-heading
       (:extend t
            :background yellow-1bg
            :foreground yellow-1fg))
     (magit-diff-hunk-heading-highlight
       (:extend t
            :background yellow-2bg
            :foreground yellow-2fg))
     (magit-diff-hunk-heading-selection
       (:extend t
            :background magit-diff-hunk-heading-selection-bg
            :foreground orange
            :weight 'bold))
     (magit-diff-lines-heading
       (:extend t
            :background orange
            :foreground base3))
     (magit-diff-context-highlight
       (:extend t
            :background base02
            :foreground base1))
     (magit-diff-added
      (:extend t
               :background green-1bg
               :foreground green-1fg))
     (magit-diff-added-highlight
      (:extend t
               :background green-1bg
               :foreground green-1fg))
     (magit-diff-base
      (:extend t
               :background yellow-1bg
               :foreground yellow-1fg))
     (magit-diff-base-highlight
      (:extend t
               :background yellow-1bg
               :foreground yellow-1fg))
     (magit-diff-conflict-heading (:inherit 'magit-diff-hunk-heading))
     (magit-diff-context (:foreground base0))
     (magit-diff-removed
      (:extend t
               :background red-1bg
               :foreground red-1fg))
     (magit-diff-removed-highlight
      (:extend t
               :background red-1bg
               :foreground red-1fg))
     (magit-diffstat-added   (:foreground green))
     (magit-diffstat-removed (:foreground red))
;;;;;; process
     (magit-process-ok    (:foreground green :weight 'bold))
     (magit-process-ng    (:foreground red   :weight 'bold))
;;;;;; log
     (magit-log-author    (:foreground base01 :weight 'bold))
     (magit-log-date      (:foreground base01))
     (magit-log-graph     (:foreground base1))
;;;;;; sequence
     (magit-sequence-pick (:foreground yellow-d))
     (magit-sequence-stop (:foreground green))
     (magit-sequence-part (:foreground yellow))
     (magit-sequence-head (:foreground blue))
     (magit-sequence-drop (:foreground red))
     (magit-sequence-done (:foreground base01))
     (magit-sequence-onto (:foreground base01))
;;;;;; bisect
     (magit-bisect-good (:foreground green))
     (magit-bisect-skip (:foreground yellow))
     (magit-bisect-bad  (:foreground red))
;;;;;; blame
     (magit-blame-highlight
       (:extend t
            :background base02))
     (magit-blame-heading
       (:extend t
            :background base02
            :box (:color base02 :line-width 2)))
     (magit-blame-summary   (:foreground base0))
     (magit-blame-hash      (:foreground violet))
     (magit-blame-name      (:foreground violet))
     (magit-blame-date      (:foreground violet))
;;;;;; references etc.
     (magit-dimmed         (:foreground base01))
     (magit-hash           (:foreground base01))
     (magit-tag            (:foreground cyan   :weight 'bold))
     (magit-branch-remote  (:foreground green  :weight 'bold))
     (magit-branch-local   (:foreground blue   :weight 'bold))
     (magit-head           (:foreground blue   :weight 'bold))
     (magit-refname        (:background base02 :foreground base01 :weight 'bold))
     (magit-refname-stash  (:background base02 :foreground base01 :weight 'bold))
     (magit-refname-wip    (:background base02 :foreground base01 :weight 'bold))
     (magit-signature-good      (:foreground green))
     (magit-signature-bad       (:foreground red))
     (magit-signature-untrusted (:foreground yellow))
     (magit-cherry-unmatched    (:foreground cyan))
     (magit-cherry-equivalent   (:foreground magenta))
     (magit-reflog-commit       (:foreground green))
     (magit-reflog-amend        (:foreground magenta))
     (magit-reflog-merge        (:foreground green))
     (magit-reflog-checkout     (:foreground blue))
     (magit-reflog-reset        (:foreground red))
     (magit-reflog-rebase       (:foreground magenta))
     (magit-reflog-cherry-pick  (:foreground green))
     (magit-reflog-remote       (:foreground cyan))
     (magit-reflog-other        (:foreground cyan))
;;;;; magit-popup
     (magit-popup-heading             (:foreground yellow  :weight 'bold))
     (magit-popup-key                 (:foreground base1   :weight 'bold))
     (magit-popup-argument            (:foreground cyan    :weight 'bold))
     (magit-popup-disabled-argument   (:foreground base01  :weight 'normal))
     (magit-popup-option-value        (:foreground cyan    :weight 'bold))
;;;;; marginalia
     (marginalia-date (:foreground blue-d :weight 'normal))
;;;;; markdown-mode
     (markdown-blockquote-face (:inherit 'font-lock-doc-face))
     (markdown-bold-face (:inherit 'bold))
     (markdown-code-face (:inherit 'fixed-pitch :foreground base01 :background 'unspecified))
     (markdown-comment-face (:foreground base01 :strike-through t))
     (markdown-footnote-face (:inherit 'default))
     (markdown-header-delimiter-face (:foreground base01))
     (markdown-header-face (:foreground blue))
     (markdown-header-face-1 (:inherit 'markdown-header-face :height os1-height-plus-4))
     (markdown-header-face-2 (:inherit 'markdown-header-face :height os1-height-plus-3))
     (markdown-header-face-3 (:inherit 'markdown-header-face :height os1-height-plus-2))
     (markdown-header-face-4 (:inherit 'markdown-header-face :height os1-height-plus-1))
     (markdown-header-face-5 (:inherit 'markdown-header-face))
     (markdown-header-face-6 (:inherit 'markdown-header-face))
     (markdown-header-rule-face (:foreground base01))
     (markdown-inline-code-face (:foreground base01))
     (markdown-italic-face (:inherit 'italic))
     (markdown-language-keyword-face (:inherit 'default))
     (markdown-line-break-face (:inherit 'default :underline t))
     (markdown-link-face (:inherit 'default :foreground yellow))
     (markdown-link-title-face (:inherit 'font-lock-comment-face))
     (markdown-list-face (:inherit 'font-lock-builtin-face))
     (markdown-math-face (:inherit 'font-lock-string-face))
     (markdown-metadata-key-face (:inherit 'font-lock-comment-face))
     (markdown-metadata-value-face (:inherit 'default))
     (markdown-missing-link-face (:inherit 'font-lock-warning-face))
     (markdown-pre-face (:foreground base01))
     (markdown-reference-face (:inherit 'default :foreground base01))
     (markdown-url-face (:foreground base01))
;;;;; message-mode
     (message-cited-text (:foreground base01))
     (message-header-name (:foreground base01))
     (message-header-other (:foreground base0 :weight 'normal))
     (message-header-to (:foreground base0 :weight 'normal))
     (message-header-cc (:foreground base0 :weight 'normal))
     (message-header-newsgroups (:foreground yellow :weight 'bold))
     (message-header-subject (:foreground cyan :weight 'normal))
     (message-header-xheader (:foreground cyan))
     (message-mml (:foreground yellow :weight 'bold))
     (message-separator (:foreground base01 :slant 'italic))
;;;;; mew
     (mew-face-header-subject (:foreground orange))
     (mew-face-header-from (:foreground yellow))
     (mew-face-header-date (:foreground green))
     (mew-face-header-to (:foreground red))
     (mew-face-header-key (:foreground green))
     (mew-face-header-private (:foreground green))
     (mew-face-header-important (:foreground blue))
     (mew-face-header-marginal (:foreground base0 :weight 'bold))
     (mew-face-header-warning (:foreground red))
     (mew-face-header-xmew (:foreground green))
     (mew-face-header-xmew-bad (:foreground red))
     (mew-face-body-url (:foreground orange))
     (mew-face-body-comment (:foreground base0 :slant 'italic))
     (mew-face-body-cite1 (:foreground green))
     (mew-face-body-cite2 (:foreground blue))
     (mew-face-body-cite3 (:foreground orange))
     (mew-face-body-cite4 (:foreground yellow))
     (mew-face-body-cite5 (:foreground red))
     (mew-face-mark-review (:foreground blue))
     (mew-face-mark-escape (:foreground green))
     (mew-face-mark-delete (:foreground red))
     (mew-face-mark-unlink (:foreground yellow))
     (mew-face-mark-refile (:foreground green))
     (mew-face-mark-unread (:foreground red))
     (mew-face-eof-message (:foreground green))
     (mew-face-eof-part (:foreground yellow))
;;;;; mic-paren
     (paren-face-match
      (:foreground magenta :background 'unspecified :weight maybe-bold))
     (paren-face-mismatch (:foreground base02 :background red :weight maybe-bold))
     (paren-face-no-match (:foreground base02 :background red :weight maybe-bold))
;;;;; mingus
     (mingus-directory-face (:foreground blue))
     (mingus-pausing-face (:foreground magenta))
     (mingus-playing-face (:foreground cyan))
     (mingus-playlist-face (:foreground cyan ))
     (mingus-song-file-face (:foreground yellow))
     (mingus-stopped-face (:foreground red))
;;;;; moccur
     (moccur-current-line-face (:underline t))
     (moccur-edit-done-face (:foreground base01 :background base03 :slant 'italic))
     (moccur-edit-face
       (:background yellow :foreground base03))
     (moccur-edit-file-face (:background base02))
     (moccur-edit-reject-face (:foreground red))
     (moccur-face (:background base02 :foreground base1
                                         :weight 'bold))
     (search-buffers-face (:background base02 :foreground base1
                                                 :weight 'bold))
     (search-buffers-header-face (:background base02 :foreground yellow
                                              :weight 'bold))
;;;;; mu4e
     (mu4e-cited-1-face (:foreground green :slant 'italic :weight 'normal))
     (mu4e-cited-2-face (:foreground blue :slant 'italic :weight 'normal))
     (mu4e-cited-3-face (:foreground orange :slant 'italic :weight 'normal))
     (mu4e-cited-4-face (:foreground yellow :slant 'italic :weight 'normal))
     (mu4e-cited-5-face (:foreground cyan :slant 'italic :weight 'normal))
     (mu4e-cited-6-face (:foreground green :slant 'italic :weight 'normal))
     (mu4e-cited-7-face (:foreground blue :slant 'italic :weight 'normal))
     (mu4e-flagged-face (:foreground blue :weight 'normal))
     (mu4e-unread-face (:foreground green :weight 'normal))
     (mu4e-view-url-number-face (:foreground yellow :weight 'normal))
     (mu4e-warning-face (:foreground red :slant 'normal :weight 'bold))
     (mu4e-header-highlight-face
       (:extend t :inherit 'unspecified :foreground 'unspecified :background base02
                :underline 'unspecified  :weight 'unspecified))
     (mu4e-view-contact-face (:foreground base0  :weight 'normal))
     (mu4e-view-header-key-face (:inherit 'message-header-name :weight 'normal))
     (mu4e-view-header-value-face (:foreground cyan :weight 'normal :slant 'normal))
     (mu4e-view-link-face (:inherit 'link))
     (mu4e-view-special-header-value-face (:foreground blue :weight 'normal :underline 'unspecified))

;;;;; multiple-cursors
     (mc/cursor-face (:inherit 'cursor :inverse-video 'unspecified))
;;;;; mumamo
     (mumamo-background-chunk-submode1 (:background base02))
;;;;; nav
     (nav-face-heading (:foreground yellow))
     (nav-face-button-num (:foreground cyan))
     (nav-face-dir (:foreground green))
     (nav-face-hdir (:foreground red))
     (nav-face-file (:foreground base0))
     (nav-face-hfile (:foreground red))
;;;;; nav-flash
     (nav-flash-face
       (:foreground nav-flash-face-fg :background nav-flash-face-bg))
;;;;; navi2ch
     (navi2ch-list-category-face (:foreground blue ))
     (navi2ch-list-add-board-name-face (:foreground yellow))
     (navi2ch-list-board-name-face (:foreground blue))
     (navi2ch-list-change-board-name-face (:foreground green :weight 'bold))
     (navi2ch-bm-unread-face (:foreground green))
     (navi2ch-bm-view-face (:foreground yellow))
     (navi2ch-bm-cache-face (:foreground blue))
     (navi2ch-bm-update-face (:foreground orange))
     (navi2ch-bm-down-face (:foreground base1))
     (navi2ch-bm-mark-face (:foreground red))
     (navi2ch-bm-new-unread-face (:foreground green))
     (navi2ch-bm-new-view-face (:foreground yellow))
     (navi2ch-bm-new-cache-face (:foreground blue))
     (navi2ch-bm-new-update-face (:foreground orange))
     (navi2ch-bm-new-mark-face (:foreground red))
     (navi2ch-bm-updated-unread-face (:foreground green))
     (navi2ch-bm-updated-view-face (:foreground yellow))
     (navi2ch-bm-updated-cache-face (:foreground blue))
     (navi2ch-bm-updated-update-face (:foreground orange))
     (navi2ch-bm-updated-navi2ch-bm-updated-mark-facemark-face (:foreground red))
     (navi2ch-bm-seen-unread-face (:foreground green))
     (navi2ch-bm-seen-view-face (:foreground yellow))
     (navi2ch-bm-seen-cache-face (:foreground blue))
     (navi2ch-bm-seen-update-face (:foreground orange))
     (navi2ch-bm-seen-mark-face (:foreground red))
     (navi2ch-article-header-face (:foreground base1))
     (navi2ch-article-header-contents-face (:foreground blue))
     (navi2ch-article-header-fusianasan-face (:foreground blue :underline t))
     (navi2ch-article-link-face (:weight 'bold))
     (navi2ch-article-url-face (:weight 'bold))
     (navi2ch-article-citation-face (:foreground yellow))
     (navi2ch-article-auto-decode-face (:foreground base03))
     (navi2ch-article-message-separator-face (:foreground green))
     (navi2ch-splash-screen-face (:foreground cyan))
     (navi2ch-message-link-face (:weight 'bold))
     (navi2ch-message-url-face (:weight 'bold))
     (navi2ch-message-citation-face (:foreground magenta))
;;;;; neotree
     (neo-banner-face (:foreground base01))
     (neo-header-face (:foreground blue))
     (neo-root-dir-face (:foreground base1 :weight 'bold))
     (neo-dir-link-face (:foreground blue))
     (neo-file-link-face (:foreground base0))
     (neo-expand-btn-face (:foreground base01))
;;;;; notmuch
     (notmuch-message-summary-face (:inherit 'highlight))
     (notmuch-search-date (:inherit 'default))
     (notmuch-search-count (:inherit 'default))
     (notmuch-search-subject (:inherit 'default))
     (notmuch-search-matching-authors (:inherit 'default))
     (notmuch-search-non-matching-authors (:inherit 'shadow))
     (notmuch-tag-face (:foreground yellow))
     (notmuch-tag-unread (:foreground magenta))
     (notmuch-search-flagged-face (:foreground blue))
     (notmuch-search-unread-face (:weight 'bold))
     (notmuch-tree-match-author-face (:foreground blue))
     (notmuch-tree-match-date-face (:foreground yellow))
     (notmuch-tree-match-tag-face (:foreground cyan))
     (notmuch-tree-no-match-face (:inherit 'font-lock-comment-face))
;;;;; orderless
     (orderless-match-face-0 (:foreground blue))
     (orderless-match-face-1 (:foreground magenta))
     (orderless-match-face-2 (:foreground yellow))
     (orderless-match-face-3 (:foreground green))
;;;;; org-mode
     (org-agenda-structure
       (:foreground base1 :background base02
                             :weight 'bold :slant 'normal :inverse-video 'unspecified :height os1-height-plus-1
                             :underline 'unspecified
                             :box (:line-width 2 :color base03)))
     (org-agenda-calendar-event (:foreground base1))
     (org-agenda-calendar-sexp (:foreground base0 :slant 'italic))
     (org-agenda-date
       (:foreground base01 :background base03 :weight 'normal
                             :box (:line-width 2 :color base03)
                             :inverse-video 'unspecified :overline 'unspecified :slant 'normal :height 1.0))
     (org-agenda-date-weekend
       (:inherit 'org-agenda-date :inverse-video 'unspecified :background 'unspecified
                          :foreground base01 :weight 'unspecified
                          :underline t :overline 'unspecified :box 'unspecified))
     (org-agenda-date-today
       (:inherit 'org-agenda-date :inverse-video t :weight 'bold
                          :underline 'unspecified :overline 'unspecified :box 'unspecified
                          :foreground blue :background base03))
     (org-agenda-done (:foreground base01 :slant 'italic))
     (org-archived (:foreground base01 :weight 'normal))
     (org-block nil)
     (org-block-begin-line (:inherit 'org-meta-line :underline t))
     (org-block-end-line (:inherit 'org-meta-line :overline t))
     (org-checkbox (:background base03 :foreground base0 :box (:line-width 1 :style 'released-button)))
     (org-code (:foreground base01))
     (org-date (:foreground blue :underline t))
     (org-done (:weight 'bold :foreground green))
     (org-ellipsis (:foreground base01))
     (org-formula (:foreground yellow))
     (org-headline-done (:foreground green))
     (org-hide (:foreground base03))
     (org-level-1 (:inherit maybe-variable-pitch :foreground orange :height os1-height-plus-4))
     (org-level-2 (:inherit maybe-variable-pitch :foreground green :height os1-height-plus-3))
     (org-level-3 (:inherit maybe-variable-pitch :foreground blue :height os1-height-plus-2))
     (org-level-4 (:inherit maybe-variable-pitch :foreground yellow :height os1-height-plus-1))
     (org-level-5 (:inherit maybe-variable-pitch :foreground cyan))
     (org-level-6 (:inherit maybe-variable-pitch :foreground green))
     (org-level-7 (:inherit maybe-variable-pitch :foreground red))
     (org-level-8 (:inherit maybe-variable-pitch :foreground blue))
     (org-link (:inherit 'link))
     (org-meta-line (:foreground base01 :slant 'italic))
     (org-macro (:foreground base01))
     (org-sexp-date (:foreground violet))
     (org-scheduled (:foreground green))
     (org-scheduled-previously (:foreground cyan))
     (org-scheduled-today (:foreground blue :weight 'normal))
     (org-special-keyword (:foreground base01 :weight 'bold))
     (org-table (:foreground green))
     (org-tag (:weight 'bold))
     (org-time-grid (:foreground base01))
     (org-todo (:foreground cyan :weight 'bold))
     (org-upcoming-deadline (:foreground yellow  :weight 'normal :underline nil))
     (org-warning (:foreground orange :weight 'normal :underline 'unspecified))
     ;; org-habit
     (org-habit-clear-face (:background blue-l :foreground blue-d))
     (org-habit-clear-future-face (:background blue-l))
     (org-habit-ready-face (:background green-l :foreground green))
     (org-habit-ready-future-face (:background green-l))
     (org-habit-alert-face (:background yellow :foreground yellow-l))
     (org-habit-alert-future-face (:background yellow-l))
     (org-habit-overdue-face (:background red :foreground red-l))
     (org-habit-overdue-future-face (:background red-l))
     ;; latest additions
     (org-agenda-dimmed-todo-face (:foreground base01))
     (org-agenda-restriction-lock (:background yellow))
     (org-clock-overlay (:background base02))
     (org-column (:background base02 :strike-through 'unspecified
                                        :underline 'unspecified :slant 'normal :weight 'normal :inherit 'default))
     (org-column-title (:background base02 :underline t :weight 'bold))
     (org-date-selected (:foreground red :inverse-video t))
     (org-document-info (:foreground base0))
     (org-document-title (:foreground base1  :weight 'bold :height os1-height-plus-4 :inherit maybe-variable-pitch))
     (org-drawer (:foreground cyan))
     (org-footnote (:foreground magenta :underline t))
     (org-latex-and-export-specials (:foreground orange))
     (org-mode-line-clock-overrun (:inherit 'mode-line :background red))
;;;;; outline
     (outline-1 (:inherit maybe-variable-pitch :foreground orange :height os1-height-plus-4))
     (outline-2 (:inherit maybe-variable-pitch :foreground green :height os1-height-plus-3))
     (outline-3 (:inherit maybe-variable-pitch :foreground blue :height os1-height-plus-2))
     (outline-4 (:inherit maybe-variable-pitch :foreground yellow :height os1-height-plus-1))
     (outline-5 (:inherit maybe-variable-pitch :foreground cyan))
     (outline-6 (:inherit maybe-variable-pitch :foreground green))
     (outline-7 (:inherit maybe-variable-pitch :foreground red))
     (outline-8 (:inherit maybe-variable-pitch :foreground blue))
;;;;; outline-minor-faces
     (outline-minor-0 (:extend t
                 :weight 'bold
                 :background base02))
     (outline-minor-1 (:extend t
                 :inherit '(outline-minor-0 outline-1)
                 :background outline-minor-1-bg))
;;;;; paren-face
     (paren-face  (:foreground base01))
;;;;; perspective
     (persp-selected-face (:foreground orange :weight 'semibold))
;;;;; pophint
     (pophint:tip-face (:background magenta :foreground base03))
     (pophint:match-face (:background blue :foreground base03))
     (pophint:pos-tip-face (:background base02 :foreground base0))
;;;;; popup
     (popup-face (:background base02 :foreground base0))
     (popup-isearch-match (:background yellow :foreground base03))
     (popup-menu-face (:background base02 :foreground base0))
     (popup-menu-mouse-face (:background blue :foreground base03))
     (popup-menu-selection-face (:background magenta :foreground base03))
     (popup-scroll-bar-background-face (:background base01))
     (popup-scroll-bar-foreground-face (:background base1))
     (popup-tip-face (:background base02 :foreground base0))
;;;;; powerline
     (powerline-active1 (:background base00 :foreground base03))
     (powerline-active2 (:background base01 :foreground base03))
     (powerline-inactive1 (:background base03 :foreground base1))
     (powerline-inactive2 (:background base02 :foreground base1))
;;;;; pretty-mode
     (pretty-mode-symbol-face (:foreground yellow :weight 'normal))
;;;;; prodigy
     (prodigy-green-face (:foreground green))
     (prodigy-red-face (:foreground orange))
     (prodigy-yellow-face (:foreground yellow))
     (prodigy-line-face (:background base02))
;;;;; rainbow-blocks
     (rainbow-blocks-depth-1-face (:foreground cyan))
     (rainbow-blocks-depth-2-face (:foreground yellow))
     (rainbow-blocks-depth-3-face (:foreground blue))
     (rainbow-blocks-depth-4-face (:foreground violet))
     (rainbow-blocks-depth-5-face (:foreground green))
     (rainbow-blocks-depth-6-face (:foreground yellow))
     (rainbow-blocks-depth-7-face (:foreground blue))
     (rainbow-blocks-depth-8-face (:foreground violet))
     (rainbow-blocks-depth-9-face (:foreground green))
     (rainbow-blocks-unmatched-face (:foreground red))
;;;;; rainbow-delimiters
     (rainbow-delimiters-depth-1-face (:foreground cyan))
     (rainbow-delimiters-depth-2-face (:foreground yellow))
     (rainbow-delimiters-depth-3-face (:foreground blue))
     (rainbow-delimiters-depth-4-face (:foreground violet))
     (rainbow-delimiters-depth-5-face (:foreground green))
     (rainbow-delimiters-depth-6-face (:foreground yellow))
     (rainbow-delimiters-depth-7-face (:foreground blue))
     (rainbow-delimiters-depth-8-face (:foreground violet))
     (rainbow-delimiters-depth-9-face (:foreground green))
     (rainbow-delimiters-depth-10-face (:foreground yellow))
     (rainbow-delimiters-depth-11-face (:foreground blue))
     (rainbow-delimiters-depth-12-face (:foreground violet))
     (rainbow-delimiters-unmatched-face
      (:foreground base0 :background base03 :inverse-video t))
;;;;; rpm-mode
     (rpm-spec-dir-face (:foreground green))
     (rpm-spec-doc-face (:foreground green))
     (rpm-spec-ghost-face (:foreground red))
     (rpm-spec-macro-face (:foreground yellow))
     (rpm-spec-obsolete-tag-face (:foreground red))
     (rpm-spec-package-face (:foreground red))
     (rpm-spec-section-face (:foreground yellow))
     (rpm-spec-tag-face (:foreground blue))
     (rpm-spec-var-face (:foreground red))
;;;;; rst-mode
     (rst-level-1 (:inherit 'org-level-1))
     (rst-level-2 (:inherit 'org-level-2))
     (rst-level-3 (:inherit 'org-level-3))
     (rst-level-4 (:inherit 'org-level-4))
     (rst-level-5 (:inherit 'org-level-5))
     (rst-level-6 (:inherit 'org-level-6))
;;;;; selectrum-mode
     (selectrum-current-candidate (:weight 'bold :background base02 :underline t))
     (selectrum-primary-highlight (:foreground yellow))
     (selectrum-secondary-highlight (:foreground blue))
;;;;; sh-mode
     (sh-quoted-exec (:foreground violet :weight 'bold))
     (sh-escaped-newline (:foreground yellow :weight 'bold))
     (sh-heredoc (:foreground yellow :weight 'bold))
;;;;; show-paren
     (show-paren-match (:foreground magenta :background 'unspecified :weight maybe-bold))
     (show-paren-mismatch (:foreground base02 :background red :weight maybe-bold))
;;;;; skewer-mode
     (skewer-error-face (:foreground orange :underline 'unspecified))
     (skewer-repl-log-face (:foreground violet))
;;;;; slime
     (slime-repl-inputed-output-face (:foreground red))
;;;;; smart-mode-line
     (sml/filename (:foreground base1 :weight 'bold))
     (sml/prefix (:foreground 'unspecified))
     (sml/git (:foreground 'unspecified))
     (sml/process (:weight 'bold))
     (sml/sudo  (:foreground orange :weight 'bold))
     (sml/read-only (:foreground cyan))
     (sml/outside-modified (:foreground  cyan))
     (sml/modified (:foreground cyan))
     (sml/vc-edited (:foreground green))
     (sml/charging (:foreground base1))
     (sml/discharging (:foreground base1 :weight 'bold))
;;;;; solaire
     (solaire-default-face (:inherit 'default :background solaire-default-face-bg))
     (solaire-minibuffer-face (:inherit 'default :background solaire-minibuffer-face-bg))
     (solaire-line-number-face (:inherit '(line-number solaire-default-face) :background solaire-line-number-face-bg))
     (solaire-hl-line-face (:inherit 'hl-line :background solaire-hl-line-face-bg))
     (solaire-org-hide-face (:inherit 'org-hide :background solaire-org-hide-face-bg))
     (solaire-mode-line-face (:inherit 'default :background base02))
     (solaire-mode-line-inactive-face (:inherit 'default :background hl-light))
;;;;; smartparens
     (sp-pair-overlay-face (:background base02))
     (sp-wrap-overlay-face (:background base02))
     (sp-wrap-tag-overlay-face (:background base02))
     (sp-show-pair-enclosing (:inherit 'highlight))
     (sp-show-pair-match-face (:background 'unspecified :foreground magenta :weight maybe-bold))
     (sp-show-pair-mismatch-face (:foreground base02 :background red :weight maybe-bold))
;;;;; spaceline
     (spaceline-highlight-face (:foreground base1 :background yellow-l))
     (spaceline-flycheck-error (:foreground red))
     (spaceline-flycheck-warning (:foreground yellow))
     (spaceline-flycheck-info (:foreground cyan))
;;;;; speedbar
     (speedbar-button-face (:inherit maybe-variable-pitch :foreground base01))
     (speedbar-directory-face (:inherit maybe-variable-pitch :foreground blue))
     (speedbar-file-face (:inherit maybe-variable-pitch :foreground base0))
     (speedbar-highlight-face (:inherit maybe-variable-pitch :background base02))
     (speedbar-selected-face (:inherit maybe-variable-pitch :foreground yellow :underline t))
     (speedbar-separator-face (:inherit maybe-variable-pitch :background blue :foreground base03 :overline cyan-l))
     (speedbar-tag-face (:inherit maybe-variable-pitch :foreground green))
;;;;; stripe-buffer
     (stripe-highlight (:background base02))
;;;;; structured-haskell
     (shm-current-face (:background base02))
     (shm-quarantine-face (:background base01))
;;;;; swiper
     (swiper-line-face (:background base02))
     (swiper-match-face-1 (:weight 'bold :foreground base1))
     (swiper-match-face-2 (:weight 'bold :foreground yellow))
     (swiper-match-face-3 (:weight 'bold :foreground yellow))
     (swiper-match-face-4 (:weight 'bold :foreground yellow))
;;;;; swoop
     (swoop-face-header-format-line (:foreground yellow :weight 'bold :height 'unspecified))
     (swoop-face-line-buffer-name (:background base02 :foreground base1 :weight 'bold :height 'unspecified))
     (swoop-face-line-number (:foreground base01))
     (swoop-face-target-line (:background base02 :foreground 'unspecified))
     (swoop-face-target-words (:background 'unspecified :foreground magenta))
;;;;; sx (WIP)
     (sx-custom-button (:background base02 :foreground base1 :box (:line-width 2 :style 'released-button :height 0.9)))
     (sx-question-list-answers (:inherit 'sx-question-list-parent :foreground green :height 1.0))
     (sx-question-list-answers-accepted (:inherit 'sx-question-list-answers :weight 'bold :underline t))
     (sx-question-list-bounty (:foreground cyan))
     (sx-question-list-date (:inherit 'font-lock-comment-face))
     (sx-question-list-favorite (:inherit 'sx-question-list-score-upvoted))
     (sx-question-list-parent (:inherit 'default))
     (sx-question-list-read-question (:inherit 'sx-question-list-parent :height 1.0))
     (sx-question-list-score (:inherit 'sx-question-list-parent :foreground base01 :height 1.0))
     (sx-question-list-score-upvoted (:inherit 'sx-question-list-score :weight 'bold))
     (sx-question-list-unread-question (:inherit 'sx-question-list-read-question :weight 'bold))
     (sx-question-mode-accepted (:inherit 'sx-question-mode-title :foreground green :height 1.3))
     (sx-question-mode-closed (:inherit 'font-lock-warning-face :box 2))
     (sx-question-mode-closed-reason (:inherit 'sx-question-mode-title :box (:line-width 2 :color yellow)))
     (sx-question-mode-content-face (:background 'unspecified))
     (sx-question-mode-date (:inherit 'font-lock-string-face))
     (sx-question-mode-header (:inherit 'message-header-name :weight 'normal))
     (sx-question-mode-kbd-tag (:box (:line-width 3 :style 'released-button :color base02) :weight 'semibold :height 0.9))
     (sx-question-mode-score nil)
     (sx-question-mode-score-downvoted (:inherit '(font-lock-warning-face sx-question-mode-score)))
     (sx-question-mode-score-upvoted (:inherit '(font-lock-function-name-face sx-question-mode-score) :weight 'bold))
     (sx-question-mode-sub-sup-tag (:height 0.7))
     (sx-question-mode-title (:inherit 'default :weight 'bold))
     (sx-question-mode-title-comments (:inherit 'sx-question-mode-title))
     (sx-tag (:foreground base0))
     (sx-user-accept-rate nil)
     (sx-user-name (:inherit 'font-lock-builtin-face))
     (sx-user-reputation (:inherit 'font-lock-comment-face))
;;;;; syslog-mode
     (syslog-ip (:background 'unspecified
                                       :foreground green
                                       :underline 'unspecified
                                       :weight 'normal
                                       :slant 'normal))
     (syslog-hour (:background 'unspecified
                                         :foreground yellow))
     (syslog-error (:background 'unspecified
                                          :foreground orange
                                          :weight 'bold))
     (syslog-warn (:background 'unspecified
                                         :foreground yellow
                                         :weight 'bold))
     (syslog-info (:background 'unspecified
                                         :foreground blue
                                         :weight 'bold))
     (syslog-debug (:background 'unspecified
                                          :foreground cyan
                                          :weight 'bold))
     (syslog-su (:background 'unspecified
                                       :foreground violet
                                       :weight 'normal))
;;;;;; headings
     (sr-active-path-face (:background blue :foreground base03
                                                 :height os1-height-plus-1  :weight 'bold))
     (sr-editing-path-face (:background yellow :foreground base03
                                                  :weight 'bold :height os1-height-plus-1))
     (sr-highlight-path-face (:background green :foreground base03
                                                    :weight 'bold :height os1-height-plus-1))
     (sr-passive-path-face (:background base01 :foreground base03
                                        :weight 'bold :height os1-height-plus-1))
;;;;;; marked
     (sr-marked-dir-face (:inherit 'dired-marked))
     (sr-marked-file-face (:inherit 'dired-marked))
     (sr-alt-marked-dir-face (:background magenta :foreground base03 :weight 'bold))
     (sr-alt-marked-file-face (:background magenta :foreground base03 :weight 'bold))
;;;;;; fstat
     (sr-directory-face (:inherit 'dired-directory :weight 'normal))
     (sr-symlink-directory-face (:inherit 'dired-directory :slant 'italic :weight 'normal))
     (sr-symlink-face (:inherit 'dired-symlink :slant 'italic :weight 'normal))
     (sr-broken-link-face (:inherit 'dired-warning :slant 'italic :weight 'normal))
;;;;;; file types
     (sr-compressed-face (:foreground base0))
     (sr-encrypted-face (:foreground base0))
     (sr-log-face (:foreground base0))
     (sr-packaged-face (:foreground base0))
     (sr-html-face (:foreground base0))
     (sr-xml-face (:foreground base0))
;;;;;; misc
     (sr-clex-hotchar-face (:background red  :foreground base03 :weight 'bold))
;;;;; tab-bar
     (tab-bar (:background base03 :foreground base0))
     (tab-bar-tab (:background base03 :foreground base1))
     (tab-bar-tab-inactive (:background base02 :foreground base01))
;;;;; tabbar
     (tabbar-default (:foreground base03 :background base03))
     (tabbar-highlight (:underline t))
     (tabbar-button (:foreground base3 :background base03))
     (tabbar-button-highlight (:inherit 'tabbar-button :inverse-video t))
     (tabbar-modified (:inherit 'tabbar-button :foreground blue :weight 'light :slant 'italic))
     (tabbar-unselected (:inherit 'tabbar-default :background base02 :slant 'italic :underline 'unspecified :box (:line-width 1 :color base03)))
     (tabbar-unselected-modified (:inherit 'tabbar-modified :background base02 :underline 'unspecified :box (:line-width 1 :color base03)))
     (tabbar-selected (:inherit 'tabbar-default :foreground base3 :background base03 :weight 'bold :underline 'unspecified :box (:line-width 1 :color base03)))
     (tabbar-selected-modified (:inherit 'tabbar-selected :foreground blue :underline 'unspecified :box (:line-width 1 :color base03)))
;;;;; centaur-tabs
     (centaur-tabs-default (:background base03 :foreground base0 :box 'unspecified))
     (centaur-tabs-selected (:background base03 :foreground base1 :box 'unspecified))
     (centaur-tabs-unselected (:background base02 :foreground base01 :box 'unspecified))
     (centaur-tabs-selected-modified (:background base03 :foreground orange :box 'unspecified))
     (centaur-tabs-unselected-modified (:background base02 :foreground orange :box 'unspecified))
     (centaur-tabs-active-bar-face (:background yellow :box 'unspecified))
     (centaur-tabs-modified-marker-selected (:inherit 'centaur-tabs-selected-modified :foreground yellow :box 'unspecified))
     (centaur-tabs-modified-marker-unselected (:inherit 'centaur-tabs-unselected-modified :foreground yellow :box 'unspecified))
;;;;; table
     (table-cell (:foreground base0 :background base02))
;;;;; term
     (term ( :background base03 :foreground base0))
     (term-color-black (:foreground base02 :background base02))
     (term-color-red (:foreground red :background red))
     (term-color-green (:foreground green :background green))
     (term-color-yellow (:foreground yellow :background yellow))
     (term-color-blue (:foreground blue :background blue))
     (term-color-magenta (:foreground magenta :background magenta))
     (term-color-cyan (:foreground cyan :background cyan))
     (term-color-white (:foreground base2 :background base2))
;;;;; terraform-mode
     (terraform--resource-name-face (:foreground green))
     (terraform--resource-type-face (:foreground yellow))

;;;;; todotxt
     (todotxt-priority-a-face (:foreground orange))
     (todotxt-priority-b-face (:foreground yellow))
     (todotxt-priority-c-face (:foreground violet))
;;;;; tooltip
     (tooltip (:background yellow-1bg :foreground yellow-1fg :inherit maybe-variable-pitch))
;;;;; transient
     (transient-heading            (:foreground yellow  :weight 'bold))
     (transient-key                (:foreground base1   :weight 'bold))
     (transient-argument           (:foreground cyan    :weight 'bold))
     (transient-value              (:foreground cyan    :weight 'bold))
     (transient-inactive-argument  (:foreground base01  :weight 'normal))
     (transient-inactive-value     (:foreground base01  :weight 'normal))
     (transient-unreachable        (:foreground base01  :weight 'normal))
     (transient-unreachable-key    (:foreground base01  :weight 'normal))
     (transient-enabled-suffix     (:foreground base3 :background green :weight 'bold))
     (transient-disabled-suffix    (:foreground base3 :background red :weight 'bold))
     (transient-nonstandard-key (:underline nil :background transient-nonstandard-key-bg))
     (transient-mismatched-key (:underline nil :background transient-mismatched-key-bg))
     (transient-separator (:extend t :background middle))
;;;;; tuareg
     (tuareg-font-lock-governing-face (:foreground magenta :weight 'bold))
     (tuareg-font-lock-multistage-face (:foreground blue :background base02 :weight 'bold))
     (tuareg-font-lock-operator-face (:foreground base1))
     (tuareg-font-lock-error-face (:foreground yellow :background red :weight 'bold))
     (tuareg-font-lock-interactive-output-face (:foreground cyan))
     (tuareg-font-lock-interactive-error-face (:foreground red))
;;;;; undo-tree
     (undo-tree-visualizer-default-face (:foreground base01 :background base03))
     (undo-tree-visualizer-unmodified-face (:foreground green))
     (undo-tree-visualizer-current-face (:foreground blue :inverse-video t))
     (undo-tree-visualizer-active-branch-face (:foreground base1 :background base03 :weight 'bold))
     (undo-tree-visualizer-register-face (:foreground yellow))
;;;;; volatile highlights
     (vhl/default-face (:background green-l :foreground green-d))
;;;;; w3m
     (w3m-anchor (:inherit 'link))
     (w3m-arrived-anchor (:inherit 'link-visited))
     (w3m-form (:background base03 :foreground base0))
     (w3m-header-line-location-title (:background base02 :foreground yellow))
     (w3m-header-line-location-content (:background base02 :foreground base0))
     (w3m-bold (:foreground base1 :weight 'bold))
     (w3m-image-anchor (:background base03 :foreground cyan :inherit 'link))
     (w3m-image (:background base03 :foreground cyan))
     (w3m-lnum-minibuffer-prompt (:foreground base1))
     (w3m-lnum-match (:background base02))
     (w3m-lnum (:underline 'unspecified :weight 'normal :foreground red))
     (w3m-session-select (:foreground base0))
     (w3m-session-selected (:foreground base1 :weight 'bold :underline t))
     (w3m-tab-background (:background base03 :foreground base0))
     (w3m-tab-selected-background (:background base03 :foreground base0))
     (w3m-tab-mouse (:background base02 :foreground yellow))
     (w3m-tab-selected (:background base02 :foreground base1 :weight 'bold))
     (w3m-tab-unselected (:background base02 :foreground base0))
     (w3m-tab-selected-retrieving (:background base02 :foreground red))
     (w3m-tab-unselected-retrieving (:background base02 :foreground orange))
     (w3m-tab-unselected-unseen (:background base02 :foreground violet))
;;;;; wanderlust
     (wl-highlight-folder-few-face (:foreground red))
     (wl-highlight-folder-many-face (:foreground red))
     (wl-highlight-folder-path-face (:foreground orange))
     (wl-highlight-folder-unread-face (:foreground blue))
     (wl-highlight-folder-zero-face (:foreground base0))
     (wl-highlight-folder-unknown-face (:foreground blue))
     (wl-highlight-message-citation-header (:foreground red))
     (wl-highlight-message-cited-text-1 (:foreground red))
     (wl-highlight-message-cited-text-2 (:foreground green))
     (wl-highlight-message-cited-text-3 (:foreground blue))
     (wl-highlight-message-cited-text-4 (:foreground blue))
     (wl-highlight-message-header-contents-face (:foreground green))
     (wl-highlight-message-headers-face (:foreground red))
     (wl-highlight-message-important-header-contents (:foreground green))
     (wl-highlight-message-header-contents (:foreground green))
     (wl-highlight-message-important-header-contents2 (:foreground green))
     (wl-highlight-message-signature (:foreground green))
     (wl-highlight-message-unimportant-header-contents (:foreground base0))
     (wl-highlight-summary-answered-face (:foreground blue))
     (wl-highlight-summary-disposed-face (:foreground base0 :slant 'italic))
     (wl-highlight-summary-new-face (:foreground blue))
     (wl-highlight-summary-normal-face (:foreground base0))
     (wl-highlight-summary-thread-top-face (:foreground yellow))
     (wl-highlight-thread-indent-face (:foreground magenta))
     (wl-highlight-summary-refiled-face (:foreground base0))
     (wl-highlight-summary-displaying-face (:underline t :weight 'bold))
;;;;; web-mode
     (web-mode-builtin-face (:inherit 'font-lock-builtin-face))
     (web-mode-comment-face (:foreground base01))
     (web-mode-constant-face (:foreground blue :weight 'bold))
     (web-mode-current-element-highlight-face (:underline 'unspecified :weight 'unspecified :background base02))
     (web-mode-css-at-rule-face (:foreground violet :slant 'italic))
     (web-mode-css-pseudo-class-face (:foreground green :slant 'italic))
     (web-mode-doctype-face (:foreground base01 :slant 'italic :weight 'bold))
     (web-mode-folded-face (:underline t))
     (web-mode-function-name-face (:foreground blue))
     (web-mode-html-attr-name-face (:foreground blue :slant 'normal))
     (web-mode-html-attr-value-face (:foreground cyan :slant 'italic))
     (web-mode-html-tag-face (:foreground green))
     (web-mode-keyword-face (:foreground yellow :weight 'normal))
     (web-mode-preprocessor-face (:foreground yellow :slant 'normal :weight 'unspecified))
     (web-mode-string-face (:foreground cyan))
     (web-mode-type-face (:foreground yellow))
     (web-mode-variable-name-face (:foreground base0))
     (web-mode-warning-face (:inherit 'font-lock-warning-face))
     (web-mode-block-attr-name-face (:inherit 'web-mode-html-attr-name-face))
     (web-mode-block-attr-value-face (:inherit 'web-mode-html-attr-value-face))
     (web-mode-block-comment-face (:inherit 'web-mode-comment-face))
     (web-mode-block-control-face (:foreground base0))
     (web-mode-block-face (:background 'unspecified))
     (web-mode-block-string-face (:inherit 'web-mode-string-face))
     (web-mode-comment-keyword-face (:box 1 :weight 'bold))
     (web-mode-css-color-face (:inherit 'font-lock-builtin-face))
     (web-mode-css-function-face (:inherit 'font-lock-builtin-face))
     (web-mode-css-priority-face (:inherit 'font-lock-builtin-face))
     (web-mode-css-property-name-face (:inherit 'font-lock-variable-name-face))
     (web-mode-css-selector-face (:inherit 'font-lock-keyword-face))
     (web-mode-css-string-face (:inherit 'web-mode-string-face))
     (web-mode-javascript-string-face (:inherit 'web-mode-string-face))
     (web-mode-json-context-face (:foreground violet))
     (web-mode-json-key-face (:foreground violet))
     (web-mode-json-string-face (:inherit 'web-mode-string-face))
     (web-mode-param-name-face (:foreground base0))
     (web-mode-part-comment-face (:inherit 'web-mode-comment-face))
     (web-mode-part-face (:inherit 'web-mode-block-face))
     (web-mode-part-string-face (:inherit 'web-mode-string-face))
     (web-mode-symbol-face (:foreground yellow))
     (web-mode-whitespace-face (:background red))
     (web-mode-html-tag-bracket-face (:foreground base01))
     (web-mode-block-delimiter-face (:foreground base01 :weight 'bold))
     (web-mode-css-comment-face (:inherit 'web-mode-comment-face))
     (web-mode-css-variable-face (:inherit 'web-mode-variable-name-face :slant 'italic))
     (web-mode-error-face (:background red))
     (web-mode-function-call-face (:inherit 'font-lock-function-name-face))
     (web-mode-html-attr-custom-face (:inherit 'web-mode-html-attr-name-face))
     (web-mode-html-attr-engine-face (:inherit 'web-mode-html-attr-custom-face))
     (web-mode-html-attr-equal-face (:inherit 'web-mode-html-attr-name-face))
     (web-mode-html-tag-custom-face (:inherit 'web-mode-html-tag-face))
     (web-mode-javascript-comment-face (:inherit 'web-mode-comment-face))
     (web-mode-json-comment-face (:inherit 'web-mode-comment-face))
;;;;; weather-metno
     (weather-metno-date (:foreground yellow :height os1-height-plus-3))
     (weather-metno-date-range (:foreground blue))
     (weather-metno-entry (:foreground cyan))
     (weather-metno-footer (:inherit 'font-lock-comment-face))
     (weather-metno-header (:inherit 'header-line))
;;;;; weechat
     (weechat-error-face (:inherit 'error))
     (weechat-highlight-face (:foreground base0 :weight 'bold))
     (weechat-nick-self-face (:foreground base01 :weight 'unspecified))
     (weechat-prompt-face (:inherit 'minibuffer-prompt))
     (weechat-time-face (:foreground base01))
;;;;; wgrep
     (wgrep-delete-face (:background 'unspecified :foreground blue))
     (wgrep-done-face (:foreground green))
     (wgrep-face (:background 'unspecified :foreground blue))
     (wgrep-file-face (:background 'unspecified :foreground magenta))
     (wgrep-reject-face (:foreground red :weight 'unspecified))
;;;;; which-func-mode
     (which-func (:foreground green))
;;;;; which-key-mode
     (which-key-command-description-face (:foreground base0))
     (which-key-group-description-face (:foreground cyan))
     (which-key-key-face (:weight 'bold))
;;;;; whitespace-mode
     (whitespace-space (:background 'unspecified :foreground base01
                                              :inverse-video 'unspecified :slant 'italic))
     (whitespace-hspace (:background 'unspecified :foreground base1
                                               :inverse-video 'unspecified))
     (whitespace-tab (:background 'unspecified :foreground red
                                            :inverse-video t))
     (whitespace-newline(:background 'unspecified :foreground base01
                                               :inverse-video 'unspecified))
     (whitespace-trailing (:background 'unspecified :foreground orange-l
                                                 :inverse-video t))
     (whitespace-line (:background 'unspecified :foreground magenta
                                             :inverse-video 'unspecified))
     (whitespace-space-before-tab (:background red-l :foreground 'unspecified
                                                         :inverse-video 'unspecified))
     (whitespace-indentation (:background 'unspecified :foreground yellow
                                                    :inverse-video 'unspecified :weight 'bold))
     (whitespace-empty (:background 'unspecified :foreground red-l
                                              :inverse-video t))
     (whitespace-space-after-tab (:background 'unspecified :foreground orange
                                              :inverse-video t :weight 'bold))
;;;;; window-divider-mode
     (window-divider (:foreground base02))
     (window-divider-first-pixel (:foreground base02))
     (window-divider-last-pixel (:foreground base02))
;;;;; window-number-mode
     (window-number-face (:foreground green))
;;;;; woman
     (woman-bold (:inherit 'Man-overstrike))
     (woman-italic (:inherit 'Man-underline))
;;;;; yascroll
     (yascroll:thumb-text-area (:foreground base01 :background base01))
     (yascroll:thumb-fringe (:foreground base01 :background base01))
;;;;; yasnippet
     (yas-field-highlight-face (:inherit 'secondary-selection))
;;;;; zencoding
     (zencoding-preview-input (:background base02 :box base1))
;;;;; ztree
     (ztreep-arrow-face (:foreground base01))
     (ztreep-diff-header-face (:foreground base01 :weight 'bold :height 1.2))
     (ztreep-diff-header-small-face (:foreground base01 :weight 'bold))
     (ztreep-diff-model-add-face (:foreground blue))
     (ztreep-diff-model-diff-face (:foreground red))
     (ztreep-diff-model-normal-face (:foreground base0))
     (ztreep-expand-sign-face (:foreground base01))
     (ztreep-header-face (:foreground base01 :weight 'bold :height 1.2))
     (ztreep-leaf-face (:foreground base0))
     (ztreep-node-face (:foreground blue))
  )

 ;; There are a few things we can't do in the main deftheme block, so that
 ;; happens here instead.
 (custom-theme-set-faces
  'os1
  `(flycheck-error
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,red) :inherit unspecified)))
     (t (:foreground ,red-d :background ,red-l :weight bold :underline t)))
  `(flycheck-warning
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,yellow) :inherit unspecified))
     (t (:foreground ,yellow-d :background ,yellow-l :weight bold :underline t))))
  `(flycheck-info
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,blue) :inherit unspecified))
     (t (:foreground ,blue-d :background ,blue-l :weight bold :underline t))))
  `(flymake-errline
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,red) :inherit unspecified))
     (t (:foreground ,red-d :background ,red-l :weight bold :underline t))))
  `(flymake-infoline
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,green) :inherit unspecified))
     (t (:foreground ,green-d :background ,green-l :weight bold :underline t))))
  `(flymake-warnline
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,yellow) :inherit unspecified))
     (t (:foreground ,yellow-d :background ,yellow-l :weight bold :underline t))))
  `(flyspell-duplicate
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,yellow) :inherit unspecified))
     (t (:foreground ,yellow :weight bold :underline t))))
  `(flyspell-incorrect
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,red) :inherit unspecified))
     (t (:foreground ,red :weight bold :underline t))))
  `(langtool-errline
    ((((supports :underline (:style wave)))
      (:underline (:style wave :color ,green) :inherit unspecified))
     (t (:foreground ,red :weight bold :underline t))))
  )

 (custom-theme-set-variables
  'os1
  `(ansi-color-names-vector [,base3
                             ,red
                             ,green
                             ,blue
                             ,violet
                             ,yellow
                             ,orange
                             ,cyan]))
 )

;;; Footer

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'os1)
;;; os1-theme.el ends here
