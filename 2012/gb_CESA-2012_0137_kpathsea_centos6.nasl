###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for kpathsea CESA-2012:0137 centos6
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2012-February/018439.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881092");
  script_version("$Revision: 14058 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:25:52 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-07-30 16:07:16 +0530 (Mon, 30 Jul 2012)");
  script_cve_id("CVE-2010-2642", "CVE-2011-0433", "CVE-2011-0764", "CVE-2011-1552",
                "CVE-2011-1553", "CVE-2011-1554");
  script_tag(name:"cvss_base", value:"7.6");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:N/C:C/I:C/A:C");
  script_xref(name:"CESA", value:"2012:0137");
  script_name("CentOS Update for kpathsea CESA-2012:0137 centos6");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for kpathsea");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  script_tag(name:"affected", value:"kpathsea on CentOS 6");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"insight", value:"TeX Live is an implementation of TeX. TeX takes a text file and a set of
  formatting commands as input, and creates a typesetter-independent DeVice
  Independent (DVI) file as output. The texlive packages provide a number of
  utilities, including dvips.

  TeX Live embeds a copy of t1lib. The t1lib library allows you to rasterize
  bitmaps from PostScript Type 1 fonts. The following issues affect t1lib
  code:

  Two heap-based buffer overflow flaws were found in the way t1lib processed
  Adobe Font Metrics (AFM) files. If a specially-crafted font file was opened
  by a TeX Live utility, it could cause the utility to crash or, potentially,
  execute arbitrary code with the privileges of the user running the utility.
  (CVE-2010-2642, CVE-2011-0433)

  An invalid pointer dereference flaw was found in t1lib. A specially-crafted
  font file could, when opened, cause a TeX Live utility to crash or,
  potentially, execute arbitrary code with the privileges of the user running
  the utility. (CVE-2011-0764)

  A use-after-free flaw was found in t1lib. A specially-crafted font file
  could, when opened, cause a TeX Live utility to crash or, potentially,
  execute arbitrary code with the privileges of the user running the utility.
  (CVE-2011-1553)

  An off-by-one flaw was found in t1lib. A specially-crafted font file could,
  when opened, cause a TeX Live utility to crash or, potentially, execute
  arbitrary code with the privileges of the user running the utility.
  (CVE-2011-1554)

  An out-of-bounds memory read flaw was found in t1lib. A specially-crafted
  font file could, when opened, cause a TeX Live utility to crash.
  (CVE-2011-1552)

  Red Hat would like to thank the Evince development team for reporting
  CVE-2010-2642. Upstream acknowledges Jon Larimer of IBM X-Force as the
  original reporter of CVE-2010-2642.

  All users of texlive are advised to upgrade to these updated packages,
  which contain backported patches to correct these issues.");
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

  if ((res = isrpmvuln(pkg:"kpathsea", rpm:"kpathsea~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"kpathsea-devel", rpm:"kpathsea-devel~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"mendexk", rpm:"mendexk~2.6e~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive", rpm:"texlive~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-afm", rpm:"texlive-afm~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-context", rpm:"texlive-context~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-dvips", rpm:"texlive-dvips~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-dviutils", rpm:"texlive-dviutils~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-east-asian", rpm:"texlive-east-asian~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-latex", rpm:"texlive-latex~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-utils", rpm:"texlive-utils~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"texlive-xetex", rpm:"texlive-xetex~2007~57.el6_2", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
