# OS<sup>1</sup> Theme
A light, warm, modern theme inspired by the combined color palettes of the films *Her* by Spike Jonze and *Paris, Texas* by Wim Wenders. Designed with equal focus on readability and coziness.

<p align="center">
  <img alt="Her" src="https://i.imgur.com/bo81ECG.jpg" width="49%">
&nbsp;
  <img alt="Paris, Texas" src="https://i.imgur.com/EBpt62x.jpg" width="49%">
</p>

This is a work-in-progress. Feel free to submit PRs, but please include before and after screenshots of proposed changes.

### Installation

You can install using straight with,
```emacs-lisp
(use-package os1-theme
  :straight (:type git :host github :repo "sashimacs/os1-theme")
  :defer nil
  :config (load-theme 'os1 t))
```

Or you can install using quelpa with,
```emacs-lisp
;; Install and load `quelpa-use-package'.
(package-install 'quelpa-use-package)
(require 'quelpa-use-package)

;; Install OS1.
(use-package os1-theme
  :quelpa (os1-theme :fetcher github :repo "sashimacs/os1-theme"))
```

### Customization

OS1 supports the following customization options, many based on the great [Solarized for Emacs](https://github.com/bbatsov/solarized-emacs):

```emacs-lisp
;; The amount of padding, in pixels, to add around the modeline.
;; In the previews here, this is set to `8’, but its default is `1’.
(setq os1-modeline-padding 1)

;; Whether or not to use variable-spaced fonts in some faces.
;; See `variable-pitch’ face for more info.
(setq os1-use-variable-pitch t)

;; Use bold weight less often. Default is `nil’.
(setq os1-use-less-bold t)

;; Prefer semibold over bold for emphasis. Default is `nil’.
(setq os1-prefer-semibold t)

;; Use italic slant more often.  Default is `nil’.
(setq os1-use-more-italic t)

;; Font size -1.
(setq os1-height-minus-1 0.8)

;; Font size +1.
(setq os1-height-plus-1 1.1)

;; Font size +2.
(setq os1-height-plus-2 1.15)

;; Font size +3.
(setq os1-height-plus-3 1.2)

;; Font size +4.
(setq os1-height-plus-4 1.3)
```

These options must be set before loading. You can also use for example `:custom (os1-modeline-padding 8)` in your use-package declarations to customize the theme before loading.

### Previews

![os1-elisp-preview](/../previews/elisp.png)
![os1-coding-minibuffer-preview](/../previews/minibuffer-active.png)
