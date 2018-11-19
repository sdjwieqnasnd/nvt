###############################################################################
# OpenVAS Vulnerability Test
#
# RedHat Update for automake RHSA-2014:1243-01
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2014 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
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
  script_oid("1.3.6.1.4.1.25623.1.0.871245");
  script_version("$Revision: 12380 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:03:48 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2014-09-17 05:57:56 +0200 (Wed, 17 Sep 2014)");
  script_cve_id("CVE-2012-3386");
  script_tag(name:"cvss_base", value:"4.4");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:P/I:P/A:P");
  script_name("RedHat Update for automake RHSA-2014:1243-01");
  script_tag(name:"insight", value:"Automake is a tool for automatically generating Makefile.in files compliant
with the GNU Coding Standards.

It was found that the distcheck rule in Automake-generated Makefiles made a
directory world-writable when preparing source archives. If a malicious,
local user could access this directory, they could execute arbitrary code
with the privileges of the user running 'make distcheck'. (CVE-2012-3386)

Red Hat would like to thank Jim Meyering for reporting this issue. Upstream
acknowledges Stefano Lattarini as the original reporter.

All automake users are advised to upgrade to this updated package, which
contains a backported patch to correct this issue.");
  script_tag(name:"affected", value:"automake on Red Hat Enterprise Linux (v. 5 server)");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"RHSA", value:"2014:1243-01");
  script_xref(name:"URL" , value:"https://www.redhat.com/archives/rhsa-announce/2014-September/msg00030.html");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'automake'
  package(s) announced via the referenced advisory.");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
  script_family("Red Hat Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/rhel", "ssh/login/rpms", re:"ssh/login/release=RHENT_5");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "RHENT_5")
{

  if ((res = isrpmvuln(pkg:"automake", rpm:"automake~1.9.6~3.el5", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
