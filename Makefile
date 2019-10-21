include config.mk

options:
	@echo build options for bm
	@echo PREFIX = ${PREFIX}
	@echo MANPREFIX = ${MANPREFIX}
	@echo VERSION = ${VERSION}

install:
	@echo installing executable file to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@ sed "s/VERSION/${VERSION}/g" < bm > ${DESTDIR}${PREFIX}/bin/bm
	@chmod 755 ${DESTDIR}${PREFIX}/bin/bm
	@echo installing manual file to ${DESTDIR}${MANPREFIX}/man1
	@mkdir -p ${DESTDIR}${MANPREFIX}/man1
	@sed "s/VERSION/${VERSION}/g" < bm.1 > ${DESTDIR}${MANPREFIX}/man1/bm.1
	@chmod 644 ${DESTDIR}${MANPREFIX}/man1/bm.1

uninstall:
	@echo removing executable file from ${DESTDIR}${PREFIX}/bin
	@rm -f ${DESTDIR}${PREFIX}/bin/bm
	@echo removing manual page from ${DESTDIR}${MANPREFIX}/man1
	@rm -f ${DESTDIR}${MANPREFIX}/man1/bm.1

.PHONY: options install uninstall
	
