# OS<sup>1</sup> Theme
A light, warm, modern theme inspired by the combined color palettes of the films *Her* by Spike Jonze and *Paris, Texas* by Wim Wenders. Designed with equal focus on readability and coziness.

<p align="center">
  <img alt="Light" src="https://i.imgur.com/bo81ECG.jpg" width="49%">
&nbsp;
  <img alt="Dark" src="https://i.imgur.com/EBpt62x.jpg" width="49%">
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

OS<sup>1</sup> currently inherits from the great [Solarized for Emacs](https://github.com/bbatsov/solarized-emacs) theme, so those options apply here too. In addition, the following has been added:

```emacs-lisp
;; The amount of padding, in pixels, to add around the modeline.
;; In the previews here, this is set to `8’, but its default is `1’.
(setq os1-modeline-padding 1)
```

These options must be set before loading. You can also use for example `:custom (os1-modeline-padding 8)` in your use-package declarations to customize the theme before loading.

### Previews

![os1-elisp-preview](/../previews/elisp.png)
![os1-coding-minibuffer-preview](/../previews/minibuffer-active.png)
