###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_1117.nasl 14270 2019-03-18 14:24:29Z cfischer $
#
# Auto-generated from advisory DLA 1117-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.891117");
  script_version("$Revision: 14270 $");
  script_cve_id("CVE-2016-1516", "CVE-2017-12597", "CVE-2017-12598", "CVE-2017-12599", "CVE-2017-12601", "CVE-2017-12603", "CVE-2017-12604", "CVE-2017-12605", "CVE-2017-12606", "CVE-2017-12862", "CVE-2017-12863", "CVE-2017-12864", "CVE-2017-14136");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1117-1] opencv security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:24:29 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2018-02-07 00:00:00 +0100 (Wed, 07 Feb 2018)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2017/09/msg00034.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"opencv on Debian Linux");
  script_tag(name:"solution", value:"For Debian 7 'Wheezy', these problems have been fixed in version
2.3.1-11+deb7u2.

We recommend that you upgrade your opencv packages.");
  script_tag(name:"summary", value:"OpenCV through version 3.3 has out-of-bounds read/write errors, buffer
overflows and double free issues in different functions.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libcv-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libcv2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libcvaux-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libcvaux2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhighgui-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhighgui2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-calib3d-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-calib3d2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-contrib-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-contrib2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-core-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-core2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-features2d-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-features2d2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-flann-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-flann2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-gpu-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-gpu2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-highgui-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-highgui2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-imgproc-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-imgproc2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-legacy-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-legacy2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-ml-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-ml2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-objdetect-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-objdetect2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-video-dev", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libopencv-video2.3", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"opencv-doc", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"python-opencv", ver:"2.3.1-11+deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}