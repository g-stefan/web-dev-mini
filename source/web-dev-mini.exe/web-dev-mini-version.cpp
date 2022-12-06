//
// Web Dev Mini
//
// Copyright (c) 2020-2022 Grigore Stefan <g_stefan@yahoo.com>
// Created by Grigore Stefan <g_stefan@yahoo.com>
//
// MIT License (MIT) <http://opensource.org/licenses/MIT>
//

#include "web-dev-mini-version.hpp"

namespace WebDevMini {
	namespace Version {

		static const char *version_ = "1.6.0";
		static const char *build_ = "11";
		static const char *versionWithBuild_ = "1.6.0.11";
		static const char *datetime_ = "2022-02-01 17:35:53";

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
