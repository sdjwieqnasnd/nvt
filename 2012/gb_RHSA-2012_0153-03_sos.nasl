###############################################################################
# OpenVAS Vulnerability Test
#
# RedHat Update for sos RHSA-2012:0153-03
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
  script_xref(name:"URL" , value:"https://www.redhat.com/archives/rhsa-announce/2012-February/msg00044.html");
  script_oid("1.3.6.1.4.1.25623.1.0.870560");
  script_version("$Revision: 12382 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:51:56 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2012-02-21 18:57:04 +0530 (Tue, 21 Feb 2012)");
  script_cve_id("CVE-2011-4083");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_xref(name:"RHSA", value:"2012:0153-03");
  script_name("RedHat Update for sos RHSA-2012:0153-03");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'sos'
  package(s) announced via the referenced advisory.");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("Red Hat Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/rhel", "ssh/login/rpms", re:"ssh/login/release=RHENT_5");
  script_tag(name:"affected", value:"sos on Red Hat Enterprise Linux (v. 5 server)");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_tag(name:"insight", value:"Sos is a set of tools that gather information about system hardware and
  configuration.

  The sosreport utility incorrectly included Certificate-based Red Hat
  Network private entitlement keys in the resulting archive of debugging
  information. An attacker able to access the archive could use the keys to
  access Red Hat Network content available to the host. This issue did not
  affect users of Red Hat Network Classic. (CVE-2011-4083)

  This updated sos package also includes numerous bug fixes and enhancements.
  Space precludes documenting all of these changes in this advisory. Users
  are directed to the Red Hat Enterprise Linux 5.8 Technical Notes, linked
  to in the References, for information on the most significant of these
  changes.

  All sos users are advised to upgrade to this updated package, which
  resolves these issues and adds these enhancements.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "RHENT_5")
{

  if ((res = isrpmvuln(pkg:"sos", rpm:"sos~1.7~9.62.el5", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
