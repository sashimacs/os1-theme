;;; os1-utils.el --- Utility functions for os1-theme.  -*- lexical-binding: t; -*-

;; Keywords: os1

;;; Commentary:

;; All credit for these functions to bbatsov/solarized-emacs.

;;; Code:

(defun os1-color-clamp-lab (lab)
  "Restricts a LAB colorspace color if it is out of bounds."
  (list (min (max (nth 0 lab) 0.0) 100.0)
        (min (max (nth 1 lab) -128) 127)
        (min (max (nth 2 lab) -128) 127)))

(defun os1-color-rgb-to-hex (red green blue &optional digits-per-component round)
  "Return hexadecimal #RGB notation for the color specified by RED GREEN BLUE.
RED, GREEN, and BLUE should be numbers between 0.0 and 1.0, inclusive.
Optional argument DIGITS-PER-COMPONENT can be either 4 (the default)
or 2; use the latter if you need a 24-bit specification of a color.
Optional argument ROUND rounds values which probably is what you usually want."
  (or digits-per-component (setq digits-per-component 4))
  (let* ((maxval (if (= digits-per-component 2) 255 65535))
         (fmt (if (= digits-per-component 2) "#%02x%02x%02x" "#%04x%04x%04x")))
    (if round
        (format fmt (+ 0.5 (* red maxval)) (+ 0.5 (* green maxval)) (+ 0.5(* blue maxval)))
        (format fmt (* red maxval) (* green maxval) (* blue maxval)))))

;;;###autoload
(defun os1-color-blend (color1 color2 alpha &optional digits-per-component)
  "Blends COLOR1 onto COLOR2 with ALPHA.

COLOR1 and COLOR2 should be color names (e.g. \"white\") or RGB
triplet strings (e.g. \"#ff12ec\").

Alpha should be a float between 0 and 1.

Optional argument DIGITS-PER-COMPONENT can be either 4 (the default) or 2;
use the latter if you need a 24-bit specification of a color."
  (let ((args (mapcar 'color-clamp
                      (apply 'color-lab-to-srgb
                             (os1-color-clamp-lab
                              (cl-mapcar
                               (lambda (v1 v2) (+ v1 (* alpha (- v2 v1))))
                               (apply 'color-srgb-to-lab (color-name-to-rgb color2))
                               (apply 'color-srgb-to-lab (color-name-to-rgb color1))))))))
    (apply 'os1-color-rgb-to-hex `(,@args ,digits-per-component t))))

(provide 'os1-utils)
;;; os1-utils.el ends here
