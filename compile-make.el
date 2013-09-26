; search the closest Makefile and run make
; 从当前目录向上查找最近的Makefile，并执行make命令
(provide 'compile-make)

(defun get-parent-directory (path)
  "get the parent directory"
  (file-name-directory (directory-file-name path)))

(defun compile-make ()
  "run make to compile"
  (interactive)
  (let ((path (file-name-directory buffer-file-name))
        (go-on t))
    (while go-on
      (if (file-readable-p (concat path "Makefile"))
          (compilation-start (format "cd %s && make" path)))
      (setq path (get-parent-directory path))
      (if (equal path "/")
          (setq go-on nil)))))
