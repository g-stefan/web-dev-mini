//
// Web Dev Mini
//
// Copyright (c) 2020-2021 Grigore Stefan <g_stefan@yahoo.com>
// Created by Grigore Stefan <g_stefan@yahoo.com>
//
// MIT License (MIT) <http://opensource.org/licenses/MIT>
//

#ifndef WEB_DEV_VERSION_HPP
#define WEB_DEV_VERSION_HPP

#define WEB_DEV_VERSION_ABCD                1,3,0,6
#define WEB_DEV_VERSION_STR                 "1.3.0"
#define WEB_DEV_VERSION_STR_BUILD           "6"
#define WEB_DEV_VERSION_STR_DATETIME        "2021-09-06 15:27:21"

#ifndef XYO_RC

namespace WebDevMini {
	namespace Version {
		const char *version();
		const char *build();
		const char *versionWithBuild();
		const char *datetime();
	};
};

#endif
#endif

