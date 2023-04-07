;;; os1-customized.el --- os1-theme face customization   -*- lexical-binding: t -*-
(defvar os1-faces
  '("OS1 customization."
    (custom-theme-set-faces
     'os1
     `(default ((,class :foreground ,base3)))
     `(region ((,class (:background ,orange-2bg))))
     `(highlight ((,class :background ,hl-light)))
     `(hl-line ((,class :background ,hl-light)))
     `(minibuffer-prompt ((,class :foreground ,violet-d :weight semibold)))
     `(mode-line-buffer-id ((,class (:foreground ,base2 :weight semibold))))
     `(mode-line
       ((,class (
                 :underline nil :overline nil
                 :background ,base02 :foreground ,base1
                 :box (:line-width 8 :color ,base02)))))
     `(mode-line-inactive
       ((,class (
                 :underline nil :overline nil
                 :background ,hl-light
                 :foreground ,base01
                 :box (:line-width 8 :color ,hl-light)))))

     `(font-lock-comment-face ((,class (:foreground ,base00))))
     `(font-lock-keyword-face ((,class (:foreground ,green :weight semibold))))
     `(font-lock-comment-delimiter-face ((,class (:foreground ,middle))))

     `(corfu-default ((,class (:background ,base02 :foreground ,base3))))
     `(corfu-current ((,class (:foreground ,cyan-2fg :background ,cyan-2bg))))
     `(corfu-bar ((,class (:background ,base2))))

     `(completions-first-difference ((,class (:inherit nil))))
     `(completions-common-part ((,class :foreground ,violet-d :weight semibold)))

     `(persp-selected-face ((,class :weight semibold :foreground ,orange)))

     `(link ((,class :foreground ,blue :weight semibold)))
     `(link-visited ((,class :foreground ,blue-1fg :weight semibold)))

     `(doom-modeline-bar ((,class :background ,red :inherit mode-line-highlight)))
     `(doom-modeline-bar-inactive ((,class :background ,red-2bg :inherit t)))
     )))
(provide 'os1-customized)
