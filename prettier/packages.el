;;; packages.el --- prettier layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Eric Gardner <eric@Erics-MacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `prettier-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `prettier/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `prettier/pre-init-PACKAGE' and/or
;;   `prettier/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst prettier-packages
  '(prettier-js))

(defun prettier/init-prettier-js ()
  (use-package prettier-js)

  ;; (add-hook 'js2-mode-hook 'prettier-js-mode)
  ;; (add-hook 'web-mode-hook 'prettier-js-mode)

  (setq prettier-js-args '(
                           "--no-semi"
                           "--single-quote"
                           "--space-before-function-paren"
                           ))
  )
;;; packages.el ends here
