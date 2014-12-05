; search the closest Makefile and run make
; 从当前目录向上查找最近的Makefile，并执行make命令
(provide 'compile-make)

(defun get-parent-directory (path)
  "get the parent directory"
  (file-name-directory (directory-file-name path)))


(defun compile-make-ex (target)
  "run make to compile. provide more arguments."
  (interactive "starget: ")
  (let ((path (file-name-directory buffer-file-name))
        (go-on t))
    (while go-on
      (if (file-readable-p (concat path "Makefile"))
          (compilation-start (format "cd %s && make %s" path target)))
      (setq path (get-parent-directory path))
      (if (equal path "/")
          (setq go-on nil)))))

(defun compile-make ()
  "run make to compile"
  (interactive)
  (compile-make-ex ""))
