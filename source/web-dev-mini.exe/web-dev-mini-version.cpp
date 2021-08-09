//
// Web Dev Mini
//
// Copyright (c) 2020-2021 Grigore Stefan <g_stefan@yahoo.com>
// Created by Grigore Stefan <g_stefan@yahoo.com>
//
// MIT License (MIT) <http://opensource.org/licenses/MIT>
//

#include "web-dev-mini-version.hpp"

namespace WebDevMini {
	namespace Version {

		static const char *version_ = "1.3.0";
		static const char *build_ = "5";
		static const char *versionWithBuild_ = "1.3.0.5";
		static const char *datetime_ = "2021-08-09 20:51:48";

		const char *version() {
			return version_;
		};
		const char *build() {
			return build_;
		};
		const char *versionWithBuild() {
			return versionWithBuild_;
		};
		const char *datetime() {
			return datetime_;
		};

	};
};

