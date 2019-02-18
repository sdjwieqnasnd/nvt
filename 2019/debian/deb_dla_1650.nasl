###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_1650.nasl 13721 2019-02-18 07:47:09Z asteins $
#
# Auto-generated from advisory DLA 1650-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2019 Greenbone Networks GmbH http://greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.891650");
  script_version("$Revision: 13721 $");
  script_cve_id("CVE-2019-1000018");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1650-1] rssh security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-02-18 08:47:09 +0100 (Mon, 18 Feb 2019) $");
  script_tag(name:"creation_date", value:"2019-01-31 00:00:00 +0100 (Thu, 31 Jan 2019)");
  script_tag(name:"cvss_base", value:"4.6");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2019/01/msg00027.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2019 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8\.[0-9]+");
  script_tag(name:"affected", value:"rssh on Debian Linux");
  script_tag(name:"insight", value:"rssh is a restricted shell, used as a login shell, that allows users to
perform only scp, sftp, cvs, svnserve (Subversion), rdist, and/or rsync
operations. It can also optionally chroot user logins into a restricted
jail.");
  script_tag(name:"solution", value:"For Debian 8 'Jessie', this problem has been fixed in version
2.3.4-4+deb8u1.

We recommend that you upgrade your rssh packages.");
  script_tag(name:"summary", value:"The ESnet security team discovered a vulnerability in rssh, a restricted
shell that allows users to perform only scp, sftp, cvs, svnserve
(Subversion), rdist and/or rsync operations. Missing validation in the
scp support could result in the bypass of this restriction, allowing the
execution of arbitrary shell commands.

Please note that with the update applied, the '-3' option of scp can no
longer be used.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"rssh", ver:"2.3.4-4+deb8u1", rls_regex:"DEB8\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
