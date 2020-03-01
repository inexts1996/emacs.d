;;; Compiled snippets and support files for `rhtml-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rhtml-mode
                     '(("<" "<${1:div}>$0</${1:$(yas/substr yas-text \"[^ ]*\")}>\n" "<my-tag>...</mytag>" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/tag.yasnippet" nil nil)
                       ("se" "<tr>\n	<td>sendKeys</td>\n	<td>`(car kill-ring)`</td>\n	<td>\\${KEY_TAB}</td>\n</tr>" "Selenium IDE press TAB" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/selenium-sendkeys-tab.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'rhtml-mode
                     '(("css" "<style type=\"text/css\">\n  $0\n</style>" "<style type=\"text/css\">...</style>" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/css/css.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'rhtml-mode
                     '(("select" "<select name=\"${1:some_name}\" id=\"$0\">\n<option value=\"${2:value1}\">${2:$(yas/substr yas-text \"[^ ]*\")}</option>\n<option value=\"${3:value2}\">${3:$(yas/substr yas-text \"[^ ]*\")}</option>\n</select>\n" "Select Box" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/select.yasnippet" nil nil)
                       ("label" "<label class=\"${1:className}\" for=\"${2:domID}\">${3:labelText}</label>\n$0\n" "label" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/label.yasnippet" nil nil)
                       ("img" "<img src=\"$0\" alt=\"\" width=\"100\" height=\"100\">\n" "<img> with max-width and max-height" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/img.yasnippet" nil nil)
                       ("form" "<form method=\"${1:post}\" id=\"$2\" action=\"$3\">\n<fieldset><legend>${4:formTitle}</legend>\n<p>\n<label for=\"${5:ctrlid}\">${5:labelText}</label>\n<input id=\"${5:$(yas/substr yas-text \"[^ ]*\")}\" name=\"${5:$(yas/substr yas-text \"[^ ]*\")}\" type=\"text\" />\n</p>\n  $0\n</fieldset>\n</form>\n" "<form><fieldset><p><label><input></p></fieldset></form>" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/form.yasnippet" nil nil)
                       ("fieldset" "<fieldset class=\"${1:ClassName}\"}>\n<legend>${2:`yas/selected-text`}</legend>\n\n$0\n</fieldset>" "Fieldset" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/fieldset.yasnippet" nil nil)
                       ("div" "<div class=\"${1:className}\">\n  $0\n</div>\n" "div" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/div.yasnippet" nil nil)
                       ("div" "<div class=\"col-xs-${1:12} col-sm-${1:$(yas/substr yas-text \"[^ ]*\")} col-md-${1:$(yas/substr yas-text \"[^ ]*\")}\">\n  $0\n</div>\n" "<div class=\"col-xs-12 col-sm-12 col-md-12\">...</div>" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/div-bootstrap.yasnippet" nil nil)
                       ("c" "class=\"$0\" " "class=\"blah\"" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/class.yasnippet" nil nil)
                       ("xs" "col-xs-${1:12}$0 col-sm-${1:$(yas/substr yas-text \"[^ ]*\")} col-md-${1:$(yas/substr yas-text \"[^ ]*\")} " "col-xs-12 col-sm-12 col-md-12" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/class-bootstrap.yasnippet" nil nil)
                       ("btn" "<button>$1</button>\n" "button" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/form/button.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'rhtml-mode
                     '(("html5" "<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    <meta charset=\"utf-8\" />\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n    <meta name=\"description\" content=\"\" />\n    <title>${1:mytitle}</title>\n    <style type=\"text/css\"></style>\n    <script src=\"//cdnjs.cloudflare.com/ajax/libs/modernizr/2.7.1/modernizr.min.js\"></script>\n    <script type=\"text/javascript\">\n      Modernizr.load([{\n        test: Modernizr.mq('only all'),\n        nope: '//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'\n      }]);\n    </script>\n  </head>\n  <body>\n    $0\n    <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.2/jquery.js\"></script>\n    <script type=\"text/javascript\">\n      $(document).ready(function (){\n        alert(\"jquery is working\");\n      });\n    </script>\n  </body>\n</html>\n" "<!DOCTYPE html><html>...</html>" nil nil nil "c:/Users/18209/AppData/Roaming/.emacs.d/snippets/rhtml-mode/html5/html5-jquery.yasnippet" nil nil)))


;;; Do not edit! File generated at Sun Mar  1 22:29:33 2020
