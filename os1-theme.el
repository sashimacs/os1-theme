;;; os1-theme.el --- A light, warm, modern theme powered by solarized.  -*- lexical-binding: t; -*-

;; Package-Requires: ((emacs "24.1") (solarized-theme "1.3"))
;; Keywords: convenience, themes, solarized, os1, her

;;; Commentary:

;; A light, warm, modern theme inspired by the color palettes of movies such as
;; Her and Paris, Texas. Designed with equal focus on readability and coziness.

;;; Code:

(require 'solarized)
(require 'os1-palette)
(require 'os1-customized)

(deftheme os1 "A light, warm, modern theme powered by solarized.")

;; Options

(defgroup os1 nil
  "OS1 theme options.
These should be set before loading. Also see `solarized' options."
  :group 'faces
  :link '(url-link :tag "GitHub" "https://github.com/sashimacs/os1-theme"))

(defcustom os1-modeline-padding 1
  "Amount of padding in pixels around the modeline in GUI sessions."
  :type 'number
  :group 'os1)

;; Theme creation

(solarized-with-color-variables 'light 'os1 os1-theme-palette-alist os1-faces)

(provide-theme 'os1)

;;; Footer

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'os1-theme)
;;; os1-theme.el ends here
