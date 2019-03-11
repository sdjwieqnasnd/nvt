###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for HelixPlayer-uninstall CESA-2010:0981 centos4 x86_64
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2012 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2011-January/017238.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881242");
  script_version("$Revision: 14056 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:00:00 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-07-30 17:08:10 +0530 (Mon, 30 Jul 2012)");
  script_cve_id("CVE-2010-2997", "CVE-2010-4375", "CVE-2010-4378", "CVE-2010-4379", "CVE-2010-4382", "CVE-2010-4383", "CVE-2010-4384", "CVE-2010-4385", "CVE-2010-4386", "CVE-2010-4392");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name:"CESA", value:"2010:0981");
  script_name("CentOS Update for HelixPlayer-uninstall CESA-2010:0981 centos4 x86_64");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for HelixPlayer-uninstall");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS4");
  script_tag(name:"affected", value:"HelixPlayer-uninstall on CentOS 4");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"insight", value:"Helix Player is a media player.

  Multiple security flaws were discovered in RealPlayer. Helix Player and
  RealPlayer share a common source code base; therefore, some of the flaws
  discovered in RealPlayer may also affect Helix Player. Some of these flaws
  could, when opening, viewing, or playing a malicious media file or stream,
  lead to arbitrary code execution with the privileges of the user running
  Helix Player. (CVE-2010-2997, CVE-2010-4375, CVE-2010-4378, CVE-2010-4379,
  CVE-2010-4382, CVE-2010-4383, CVE-2010-4384, CVE-2010-4385, CVE-2010-4386,
  CVE-2010-4392)

  The Red Hat Security Response Team is unable to properly determine the
  impact or fix all of these issues in Helix Player, due to the source code
  for RealPlayer being unavailable.

  Due to the security concerns this update removes the HelixPlayer package
  from Red Hat Enterprise Linux 4. Users wishing to continue to use Helix
  Player should download it directly from <a  rel= &qt nofollow &qt  href= &qt https://player.helixcommunity.org/ &qt >https://player.helixcommunity.org/</a>");
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

if(release == "CentOS4")
{

  if ((res = isrpmvuln(pkg:"HelixPlayer-uninstall", rpm:"HelixPlayer-uninstall~1.0.6~3.el4_8.1", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"HelixPlayer", rpm:"HelixPlayer~1.0.6~3.el4_8.1", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
