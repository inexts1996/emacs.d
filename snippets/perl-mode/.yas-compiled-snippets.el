;;; Compiled snippets and support files for `perl-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'perl-mode
                     '(("main" "#!/usr/bin/perl\nuse strict;\nuse warnings;\n\n# @see http://www.perlmonks.org/?node_id=88222\nuse Getopt::Std;\n\nmy %args;\ngetopts('h',\\%args);\n\nsub usage() {\nprint <<END\nUsage: ${1:program} [options]\nEND\n}\n\n## main\nif( $args{h} ) {\n  usage();\n  exit(1);\n}\n\nprint \"hello world\\n\";" "main" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/perl-mode/main.snippet" nil nil)
                       ("lo" "print \"\\\\\\$${1:object}=\",\\$${1:$(yas/substr yas-text \"[^ ]*\")},\"\\n\";\n" "print \"name=\",val,\"\\n\";" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/perl-mode/logobject1.yasnippet" nil nil)
                       ("lhash" "print \"hash \\\\\\$${1:h}:\\n\"; print \"\\$_=>[\".join(\" \",@{\\$${1:$(yas/substr yas-text \"[^ ]*\")}->{\\$_}}).\"]\\n\" for (keys %\\$${1:$(yas/substr yas-text \"[^ ]*\")});\n" "print $hashref { key => [e1,e2] }" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/perl-mode/loghashref1.yasnippet" nil nil)
                       ("lhash" "print \"hash \\\\\\$${1:h}:\\n\"; print \"\\$_=>\\$${1:$(yas/substr yas-text \"[^ ]*\")}->{\\$_}\\n\" for (keys %\\$${1:$(yas/substr yas-text \"[^ ]*\")});\n" "print $hashref" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/perl-mode/loghashref.yasnippet" nil nil)
                       ("lhash" "print \"hash %${1:h}:\\n\"; print \"\\$_=>\\$${1:$(yas/substr yas-text \"[^ ]*\")}{\\$_}\\n\" for (keys %${1:$(yas/substr yas-text \"[^ ]*\")});\n" "print %hash" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/perl-mode/loghash.yasnippet" nil nil)
                       ("larray" "print \"array @${1:arr}:\\n\"; print \"(\".join(\" \",@${1:$(yas/substr yas-text \"[^ ]*\")}).\")\\n\";\n" "print @array" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/perl-mode/logarray.yasnippet" nil nil)
                       ("l" "print \"${1:hello}\\n\";\n" "print \"hello\\n\";" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/perl-mode/log.yasnippet" nil nil)))


;;; Do not edit! File generated at Sun Mar  1 22:29:33 2020
