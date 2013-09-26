compile-make
============

search the closest Makefile and run make

从当前目录向上查找最近的Makefile，并执行make命令

INSTALL
============

run this in shell:

    cd ~/.emacs.d
    git clone https://github.com/lexdene/compile-make.git

append this to your ~/.emacs :

    ; compile make
    (add-to-list 'load-path "~/.emacs.d/compile-make")
    (require 'compile-make)

if you want to bind _compile-make_ to a key,
append this to your ~/.emacs :

    (global-set-key (kbd "<f9>") 'compile-make)

add this to scroll output when compilation:

    (setq compilation-scroll-output t)

LICENSE
============

GNU GENERAL PUBLIC LICENSE, Version 3
