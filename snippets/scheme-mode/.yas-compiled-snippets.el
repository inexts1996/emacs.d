;;; Compiled snippets and support files for `scheme-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'scheme-mode
                     '(("main" "#!/usr/local/bin/guile -s\n!#\n(display \"hello\\n\")\n" "main" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/scheme-mode/main.yasnippet" nil nil)
                       ("lo" "(display (format #t \"${1:object}=~S\" ${1:$(yas/substr yas-text \"[^ ]*\")})) (newline)\n" "(display \"object=~S\" object)" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/scheme-mode/logobject1.yasnippet" nil nil)
                       ("l" "(display \"${1:hello}\\n\")\n" "(display \"hello\")" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/scheme-mode/log.yasnippet" nil nil)))


;;; Do not edit! File generated at Sun Mar  1 22:29:35 2020
