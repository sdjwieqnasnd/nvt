# Copyright (C) 2019 Greenbone Networks GmbH
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (C) the respective author(s)
#
# SPDX-License-Identifier: GPL-2.0-or-later
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.891703");
  script_version("$Revision: 13979 $");
  script_cve_id("CVE-2018-11307", "CVE-2018-12022", "CVE-2018-12023", "CVE-2018-14718", "CVE-2018-14719",
                "CVE-2018-14720", "CVE-2018-14721", "CVE-2018-19360", "CVE-2018-19361", "CVE-2018-19362");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1703-1] jackson-databind security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-04 14:26:37 +0100 (Mon, 04 Mar 2019) $");
  script_tag(name:"creation_date", value:"2019-03-04 00:00:00 +0100 (Mon, 04 Mar 2019)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2019/03/msg00005.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8\.[0-9]+");
  script_tag(name:"affected", value:"jackson-databind on Debian Linux");
  script_tag(name:"solution", value:"For Debian 8 'Jessie', these problems have been fixed in version
2.4.2-2+deb8u5.

We recommend that you upgrade your jackson-databind packages.");
  script_tag(name:"summary", value:"Several deserialization flaws were discovered in jackson-databind, a fast
and powerful JSON library for Java, which could allow an unauthenticated
user to perform code execution. The issue was resolved by extending
the blacklist and blocking more classes from polymorphic deserialization.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"libjackson2-databind-java", ver:"2.4.2-2+deb8u5", rls_regex:"DEB8\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libjackson2-databind-java-doc", ver:"2.4.2-2+deb8u5", rls_regex:"DEB8\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
