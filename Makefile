
.SILENT:


%.js: %.coffee  Makefile
	coffee --compile  $<
	chmod 644  $@


%.css: %.styl  Makefile
	stylus  $<  >/dev/null
	chmod 644  $@


all:  styling.css

