###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_1120.nasl 14281 2019-03-18 14:53:48Z cfischer $
#
# Auto-generated from advisory DLA 1120-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.891120");
  script_version("$Revision: 14281 $");
  script_cve_id("CVE-2017-14867");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1120-1] git security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:53:48 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2018-02-07 00:00:00 +0100 (Wed, 07 Feb 2018)");
  script_tag(name:"cvss_base", value:"9.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:C/I:C/A:C");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2017/10/msg00000.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"git on Debian Linux");
  script_tag(name:"solution", value:"For Debian 7 'Wheezy', these problems have been fixed in version
1:1.7.10.4-1+wheezy6.

We recommend that you upgrade your git packages.");
  script_tag(name:"summary", value:"joernchen discovered that the git-cvsserver subcommand of Git, a
distributed version control system, suffers from a shell command
injection vulnerability due to unsafe use of the Perl backtick
operator. The git-cvsserver subcommand is reachable from the
git-shell subcommand even if CVS support has not been configured
(however, the git-cvs package needs to be installed).");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"git", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-all", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-arch", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-core", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-cvs", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-daemon-run", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-daemon-sysvinit", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-doc", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-el", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-email", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-gui", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-man", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"git-svn", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"gitk", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"gitweb", ver:"1:1.7.10.4-1+wheezy6", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}