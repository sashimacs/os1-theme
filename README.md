# OS<sup>1</sup> Theme
A light, warm, modern theme inspired by the combined color palettes of the films *Her* by Spike Jonze and *Paris, Texas* by Wim Wenders. Designed with equal focus on readability and coziness.

<p align="center">
  <img alt="Light" src="https://i.imgur.com/bo81ECG.jpg" width="49%">
&nbsp;
  <img alt="Dark" src="https://i.imgur.com/EBpt62x.jpg" width="49%">
</p>

This is a work-in-progress. Feel free to submit PRs, but please include before and after screenshots of proposed changes.

### Installation

```emacs-lisp
(use-package os1-theme
  :straight (:type git :host github :repo "sashimacs/os1-theme")
  :defer nil
  :config (load-theme 'os1 t))
```

### Previews

![os1-elisp-preview](/../previews/elisp.png)
![os1-coding-minibuffer-preview](/../previews/minibuffer-active.png)
