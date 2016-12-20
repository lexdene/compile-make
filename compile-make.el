; search the closest Makefile and run make
; 从当前目录向上查找最近的Makefile，并执行make命令
(provide 'compile-make)

(defun get-parent-directory (path)
  "get the parent directory"
  (file-name-directory (directory-file-name path)))


(defun compile-make-ex (target)
  "run make to compile. provide more arguments."
  (interactive "starget: ")
  (let ((default-directory (locate-dominating-file default-directory "Makefile")))
    (if default-directory
        (compilation-start (format "make %s" target))
        (message "cannot find Makefile"))))

(defun compile-make ()
  "run make to compile"
  (interactive)
  (compile-make-ex ""))
