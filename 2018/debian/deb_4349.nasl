###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_4349.nasl 12615 2018-12-03 07:20:51Z cfischer $
#
# Auto-generated from advisory DSA 4349-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.704349");
  script_version("$Revision: 12615 $");
  script_cve_id("CVE-2017-11613", "CVE-2017-17095", "CVE-2018-10963", "CVE-2018-15209", "CVE-2018-16335",
                "CVE-2018-17101", "CVE-2018-18557", "CVE-2018-5784", "CVE-2018-7456", "CVE-2018-8905");
  script_name("Debian Security Advisory DSA 4349-1 (tiff - security update)");
  script_tag(name:"last_modification", value:"$Date: 2018-12-03 08:20:51 +0100 (Mon, 03 Dec 2018) $");
  script_tag(name:"creation_date", value:"2018-11-30 00:00:00 +0100 (Fri, 30 Nov 2018)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://www.debian.org/security/2018/dsa-4349.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9\.[0-9]+");
  script_tag(name:"affected", value:"tiff on Debian Linux");
  script_tag(name:"insight", value:"libtiff is a library providing support for the Tag Image File Format
(TIFF), a widely used format for storing image data.");
  script_tag(name:"solution", value:"For the stable distribution (stretch), these problems have been fixed in
version 4.0.8-2+deb9u4.

We recommend that you upgrade your tiff packages.

For the detailed security status of tiff please refer to
its security tracker page at:
https://security-tracker.debian.org/tracker/tiff");
  script_tag(name:"summary",  value:"Multiple vulnerabilities have been discovered in the libtiff library and
the included tools, which may result in denial of service or the
execution of arbitrary code if malformed image files are processed.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"libtiff-doc", ver:"4.0.8-2+deb9u4", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libtiff-opengl", ver:"4.0.8-2+deb9u4", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.0.8-2+deb9u4", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libtiff5", ver:"4.0.8-2+deb9u4", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libtiff5-dev", ver:"4.0.8-2+deb9u4", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libtiffxx5", ver:"4.0.8-2+deb9u4", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
