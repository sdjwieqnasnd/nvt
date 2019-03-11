###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for cscope CESA-2009:1101 centos3 i386
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2011 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2009-June/015971.html");
  script_oid("1.3.6.1.4.1.25623.1.0.880701");
  script_version("$Revision: 14056 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:00:00 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2011-08-09 08:20:34 +0200 (Tue, 09 Aug 2011)");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name:"CESA", value:"2009:1101");
  script_cve_id("CVE-2004-2541", "CVE-2006-4262", "CVE-2009-0148", "CVE-2009-1577");
  script_name("CentOS Update for cscope CESA-2009:1101 centos3 i386");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for cscope");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2011 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS3");
  script_tag(name:"affected", value:"cscope on CentOS 3");
  script_tag(name:"insight", value:"cscope is a mature, ncurses-based, C source-code tree browsing tool.

  Multiple buffer overflow flaws were found in cscope. An attacker could
  create a specially crafted source code file that could cause cscope to
  crash or, possibly, execute arbitrary code when browsed with cscope.
  (CVE-2004-2541, CVE-2006-4262, CVE-2009-0148, CVE-2009-1577)

  All users of cscope are advised to upgrade to this updated package, which
  contains backported patches to fix these issues. All running instances of
  cscope must be restarted for this update to take effect.");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS3")
{

  if ((res = isrpmvuln(pkg:"cscope", rpm:"cscope~15.5~16.RHEL3", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
