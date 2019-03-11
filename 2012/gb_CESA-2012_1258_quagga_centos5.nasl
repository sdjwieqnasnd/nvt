###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for quagga CESA-2012:1258 centos5
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2012-September/018866.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881499");
  script_version("$Revision: 14058 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:25:52 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-09-17 16:49:58 +0530 (Mon, 17 Sep 2012)");
  script_cve_id("CVE-2010-1674", "CVE-2011-3323", "CVE-2011-3324", "CVE-2011-3325",
                "CVE-2011-3326", "CVE-2011-3327", "CVE-2012-0249", "CVE-2012-0250");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_xref(name:"CESA", value:"2012:1258");
  script_name("CentOS Update for quagga CESA-2012:1258 centos5");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for quagga");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS5");
  script_tag(name:"affected", value:"quagga on CentOS 5");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"insight", value:"Quagga is a TCP/IP based routing software suite. The Quagga bgpd daemon
  implements the BGP (Border Gateway Protocol) routing protocol. The Quagga
  ospfd and ospf6d daemons implement the OSPF (Open Shortest Path First)
  routing protocol.

  A heap-based buffer overflow flaw was found in the way the bgpd daemon
  processed malformed Extended Communities path attributes. An attacker could
  send a specially-crafted BGP message, causing bgpd on a target system to
  crash or, possibly, execute arbitrary code with the privileges of the user
  running bgpd. The UPDATE message would have to arrive from an explicitly
  configured BGP peer, but could have originated elsewhere in the BGP
  network. (CVE-2011-3327)

  A NULL pointer dereference flaw was found in the way the bgpd daemon
  processed malformed route Extended Communities attributes. A configured
  BGP peer could crash bgpd on a target system via a specially-crafted BGP
  message. (CVE-2010-1674)

  A stack-based buffer overflow flaw was found in the way the ospf6d daemon
  processed malformed Link State Update packets. An OSPF router could use
  this flaw to crash ospf6d on an adjacent router. (CVE-2011-3323)

  A flaw was found in the way the ospf6d daemon processed malformed link
  state advertisements. An OSPF neighbor could use this flaw to crash
  ospf6d on a target system. (CVE-2011-3324)

  A flaw was found in the way the ospfd daemon processed malformed Hello
  packets. An OSPF neighbor could use this flaw to crash ospfd on a
  target system. (CVE-2011-3325)

  A flaw was found in the way the ospfd daemon processed malformed link state
  advertisements. An OSPF router in the autonomous system could use this flaw
  to crash ospfd on a target system. (CVE-2011-3326)

  An assertion failure was found in the way the ospfd daemon processed
  certain Link State Update packets. An OSPF router could use this flaw to
  cause ospfd on an adjacent router to abort. (CVE-2012-0249)

  A buffer overflow flaw was found in the way the ospfd daemon processed
  certain Link State Update packets. An OSPF router could use this flaw to
  crash ospfd on an adjacent router. (CVE-2012-0250)

  Red Hat would like to thank CERT-FI for reporting CVE-2011-3327,
  CVE-2011-3323, CVE-2011-3324, CVE-2011-3325, and CVE-2011-3326; and the
  CERT/CC for reporting CVE-2012-0249 and CVE-2012-0250. CERT-FI acknowledges
  Riku Hietam�ki, Tuomo Untinen and Jukka Taimisto of the Codenomicon CROSS
  project as the original reporters of CVE-2011-3327, CVE-2011-3323,
  CVE-2011-3324, CVE-2011-3325, and CVE-2011-3326. The CERT/CC acknowledges
  Martin Winte ...

  Description truncated, please see the referenced URL(s) for more information.");
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

if(release == "CentOS5")
{

  if ((res = isrpmvuln(pkg:"quagga", rpm:"quagga~0.98.6~7.el5_8.1", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"quagga-contrib", rpm:"quagga-contrib~0.98.6~7.el5_8.1", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"quagga-devel", rpm:"quagga-devel~0.98.6~7.el5_8.1", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
