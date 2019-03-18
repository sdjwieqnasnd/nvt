# OpenVAS Vulnerability Test
# $Id: esoft_slk_ssa_2007_264_01.nasl 14202 2019-03-15 09:16:15Z cfischer $
# Description: Auto-generated from the corresponding slackware advisory
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2012 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or at your option, GNU General Public License version 3,
# as published by the Free Software Foundation
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.59016");
  script_tag(name:"creation_date", value:"2012-09-11 01:34:21 +0200 (Tue, 11 Sep 2012)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-15 10:16:15 +0100 (Fri, 15 Mar 2019) $");
  script_cve_id("CVE-2007-3820", "CVE-2007-4224", "CVE-2007-4225", "CVE-2007-4569");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_version("$Revision: 14202 $");
  script_name("Slackware Advisory SSA:2007-264-01 kdebase, kdelibs");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 E-Soft Inc. http://www.securityspace.com");
  script_family("Slackware Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/slackware_linux", "ssh/login/slackpack", re:"ssh/login/release=SLK12\.0");

  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=SSA:2007-264-01");

  script_tag(name:"insight", value:"New kdebase packages are available for Slackware 12.0 to fix security issues.

A long URL padded with spaces could be used to display a false URL in
Konqueror's addressbar, and KDM when used with no-password login could
be tricked into logging a different user in without a password.  This
is not the way KDM is configured in Slackware by default, somewhat
mitigating the impact of this issue.");

  script_xref(name:"URL", value:"http://www.kde.org/info/security/advisory-20070919-1.txt");

  script_tag(name:"solution", value:"Upgrade to the new package(s).");

  script_tag(name:"summary", value:"The remote host is missing an update as announced
via advisory SSA:2007-264-01.");

  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-slack.inc");

report = "";
res = "";

if((res = isslkpkgvuln(pkg:"kdebase", ver:"3.5.7-i486-3_slack12.0", rls:"SLK12.0")) != NULL) {
  report += res;
}
if((res = isslkpkgvuln(pkg:"kdelibs", ver:"3.5.7-i486-3_slack12.0", rls:"SLK12.0")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}