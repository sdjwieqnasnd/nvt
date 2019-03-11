###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for firefox CESA-2013:1476 centos5
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2013 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.881817");
  script_version("$Revision: 14056 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:00:00 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2013-11-08 10:44:02 +0530 (Fri, 08 Nov 2013)");
  script_cve_id("CVE-2013-5590", "CVE-2013-5595", "CVE-2013-5597", "CVE-2013-5599",
                "CVE-2013-5600", "CVE-2013-5601", "CVE-2013-5602", "CVE-2013-5604");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_name("CentOS Update for firefox CESA-2013:1476 centos5");

  script_tag(name:"affected", value:"firefox on CentOS 5");
  script_tag(name:"insight", value:"Mozilla Firefox is an open source web browser. XULRunner provides the XUL
Runtime environment for Mozilla Firefox.

Several flaws were found in the processing of malformed web content. A web
page containing malicious content could cause Firefox to terminate
unexpectedly or, potentially, execute arbitrary code with the privileges of
the user running Firefox. (CVE-2013-5590, CVE-2013-5597, CVE-2013-5599,
CVE-2013-5600, CVE-2013-5601, CVE-2013-5602)

It was found that the Firefox JavaScript engine incorrectly allocated
memory for certain functions. An attacker could combine this flaw with
other vulnerabilities to execute arbitrary code with the privileges of the
user running Firefox. (CVE-2013-5595)

A flaw was found in the way Firefox handled certain Extensible Stylesheet
Language Transformations (XSLT) files. An attacker could combine this flaw
with other vulnerabilities to execute arbitrary code with the privileges of
the user running Firefox. (CVE-2013-5604)

Red Hat would like to thank the Mozilla project for reporting these
issues. Upstream acknowledges Jesse Ruderman, Christoph Diehl, Dan Gohman,
Byoungyoung Lee, Nils, and Abhishek Arya as the original reporters of these
issues.

For technical details regarding these flaws, refer to the Mozilla security
advisories for Firefox 17.0.10 ESR. You can find a link to the Mozilla
advisories in the References section of this erratum.

All Firefox users should upgrade to these updated packages, which contain
Firefox version 17.0.10 ESR, which corrects these issues. After installing
the update, Firefox must be restarted for the changes to take effect.");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name:"CESA", value:"2013:1476");
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2013-October/019998.html");
  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for firefox");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2013 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS5");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS5")
{

  if ((res = isrpmvuln(pkg:"firefox", rpm:"firefox~17.0.10~1.el5.centos", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"xulrunner", rpm:"xulrunner~17.0.10~1.el5_10", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"xulrunner-devel", rpm:"xulrunner-devel~17.0.10~1.el5_10", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
