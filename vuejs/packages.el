;;; packages.el --- vuejs layer packages file for Spacemacs.
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
;; added to `vuejs-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `vuejs/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `vue/pre-init-PACKAGE' and/or
;;   `vuejs/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst vuejs-packages
  '(vue-mode))

(defun vuejs/init-vue-mode ()
  (use-package vue-mode
    :config
    ;; 0, 1, or 2, representing (respectively) none, low, and high coloring
    (setq mmm-submode-decoration-level 0))

  ;; Enable vetur for vue-mode
  (require 'vue-mode)
  (add-to-list 'vue-mode-hook #'smartparens-mode)

  (require 'lsp-mode)
  (require 'lsp-vue)
  (add-hook 'vue-mode-hook #'lsp-vue-mmm-enable)
  (with-eval-after-load 'lsp-mode
    (require 'lsp-flycheck))

  (require 'company-lsp)
  (push 'company-lsp company-backends)

  )

;;; packages.el ends here
