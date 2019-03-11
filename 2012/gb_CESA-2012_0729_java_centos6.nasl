###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for java CESA-2012:0729 centos6
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2012-June/018684.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881229");
  script_version("$Revision: 14058 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:25:52 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-07-30 16:53:07 +0530 (Mon, 30 Jul 2012)");
  script_cve_id("CVE-2012-1711", "CVE-2012-1713", "CVE-2012-1716", "CVE-2012-1717",
                "CVE-2012-1718", "CVE-2012-1719", "CVE-2012-1723", "CVE-2012-1724",
                "CVE-2012-1725");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name:"CESA", value:"2012:0729");
  script_name("CentOS Update for java CESA-2012:0729 centos6");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for java");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  script_tag(name:"affected", value:"java on CentOS 6");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"insight", value:"These packages provide the OpenJDK 6 Java Runtime Environment and the
  OpenJDK 6 Software Development Kit.

  Multiple flaws were discovered in the CORBA (Common Object Request Broker
  Architecture) implementation in Java. A malicious Java application or
  applet could use these flaws to bypass Java sandbox restrictions or modify
  immutable object data. (CVE-2012-1711, CVE-2012-1719)

  It was discovered that the SynthLookAndFeel class from Swing did not
  properly prevent access to certain UI elements from outside the current
  application context. A malicious Java application or applet could use this
  flaw to crash the Java Virtual Machine, or bypass Java sandbox
  restrictions. (CVE-2012-1716)

  Multiple flaws were discovered in the font manager's layout lookup
  implementation. A specially-crafted font file could cause the Java Virtual
  Machine to crash or, possibly, execute arbitrary code with the privileges
  of the user running the virtual machine. (CVE-2012-1713)

  Multiple flaws were found in the way the Java HotSpot Virtual Machine
  verified the bytecode of the class file to be executed. A specially-crafted
  Java application or applet could use these flaws to crash the Java Virtual
  Machine, or bypass Java sandbox restrictions. (CVE-2012-1723,
  CVE-2012-1725)

  It was discovered that the Java XML parser did not properly handle certain
  XML documents. An attacker able to make a Java application parse a
  specially-crafted XML file could use this flaw to make the XML parser enter
  an infinite loop. (CVE-2012-1724)

  It was discovered that the Java security classes did not properly handle
  Certificate Revocation Lists (CRL). CRL containing entries with duplicate
  certificate serial numbers could have been ignored. (CVE-2012-1718)

  It was discovered that various classes of the Java Runtime library could
  create temporary files with insecure permissions. A local attacker could
  use this flaw to gain access to the content of such temporary files.
  (CVE-2012-1717)

  Note: If the web browser plug-in provided by the icedtea-web package was
  installed, the issues exposed via Java applets could have been exploited
  without user interaction if a user visited a malicious website.

  This erratum also upgrades the OpenJDK package to IcedTea6 1.11.3. Refer to
  the NEWS file, linked to in the References, for further information.

  All users of java-1.6.0-openjdk are advised to upgrade to these updated
  packages, which resolve these issues. All running instances of OpenJDK Java
  must be restarted for the update to take effect.");
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

if(release == "CentOS6")
{

  if ((res = isrpmvuln(pkg:"java-1.6.0-openjdk", rpm:"java-1.6.0-openjdk~1.6.0.0~1.48.1.11.3.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.6.0-openjdk-demo", rpm:"java-1.6.0-openjdk-demo~1.6.0.0~1.48.1.11.3.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.6.0-openjdk-devel", rpm:"java-1.6.0-openjdk-devel~1.6.0.0~1.48.1.11.3.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.6.0-openjdk-javadoc", rpm:"java-1.6.0-openjdk-javadoc~1.6.0.0~1.48.1.11.3.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.6.0-openjdk-src", rpm:"java-1.6.0-openjdk-src~1.6.0.0~1.48.1.11.3.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
