# New ports collection makefile for:   crtmpserver
# Date created:        5 December 1994
# Whom:                shiretu
#
# $FreeBSD$
#

PORTNAME=	##_PORTNAME_##
PORTVERSION=	##_PORTVERSION_##
CATEGORIES=	##_PORTCATEGORIES_##
MASTER_SITES=	http://freebsd.rtmpd.com/

MAINTAINER=	support@rtmpd.com
COMMENT=	C++ RTSP/RTMP/MPEG-TS Server

LIB_DEPENDS=    execinfo:${PORTSDIR}/devel/libexecinfo

USE_CMAKE=	yes
CMAKE_OUTSOURCE=	yes
CMAKE_SOURCE_PATH=	${WRKSRC}/builders/cmake
#CMAKE_VERBOSE=	yes
CMAKE_ARGS=	-DCRTMPSERVER_INSTALL_PREFIX:STRING=${CMAKE_INSTALL_PREFIX} -DTEMP_FRAMEWORK_VER=##_PORTVERSION_##

USERS=  crtmpserver
GROUPS= crtmpserver

USE_RC_SUBR=	crtmpserver

MAN1=	crtmpserver.1

pre-install:
	@sh $(WRKSRC)/fixConfFile.sh "${WRKSRC}/builders/cmake/crtmpserver/crtmpserver.lua" "${PREFIX}" "${WRKSRC}"

post-install:
	@if [ ! -f ${PREFIX}/etc/crtmpserver.lua ]; then \
		${CP} -p ${PREFIX}/etc/crtmpserver.lua.sample ${PREFIX}/etc/crtmpserver.lua ; \
	fi

.include <bsd.port.mk>