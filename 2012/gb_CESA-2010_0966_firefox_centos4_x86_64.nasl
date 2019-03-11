###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for firefox CESA-2010:0966 centos4 x86_64
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2011-January/017228.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881398");
  script_version("$Revision: 14056 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 14:00:00 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-07-30 17:43:42 +0530 (Mon, 30 Jul 2012)");
  script_cve_id("CVE-2010-3766", "CVE-2010-3767", "CVE-2010-3768", "CVE-2010-3770",
                "CVE-2010-3771", "CVE-2010-3772", "CVE-2010-3773", "CVE-2010-3774",
                "CVE-2010-3775", "CVE-2010-3776", "CVE-2010-3777", "CVE-2010-0179");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name:"CESA", value:"2010:0966");
  script_name("CentOS Update for firefox CESA-2010:0966 centos4 x86_64");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for firefox");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS4");
  script_tag(name:"affected", value:"firefox on CentOS 4");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"insight", value:"Mozilla Firefox is an open source web browser.

  Several flaws were found in the processing of malformed web content. A web
  page containing malicious content could cause Firefox to crash or,
  potentially, execute arbitrary code with the privileges of the user running
  Firefox. (CVE-2010-3766, CVE-2010-3767, CVE-2010-3772, CVE-2010-3776,
  CVE-2010-3777)

  A flaw was found in the way Firefox handled malformed JavaScript. A website
  with an object containing malicious JavaScript could cause Firefox to
  execute that JavaScript with the privileges of the user running Firefox.
  (CVE-2010-3771)

  This update adds support for the Sanitiser for OpenType (OTS) library to
  Firefox. This library helps prevent potential exploits in malformed
  OpenType fonts by verifying the font file prior to use. (CVE-2010-3768)

  A flaw was found in the way Firefox loaded Java LiveConnect scripts.
  Malicious web content could load a Java LiveConnect script in a way that
  would result in the plug-in object having elevated privileges, allowing it
  to execute Java code with the privileges of the user running Firefox.
  (CVE-2010-3775)

  It was found that the fix for CVE-2010-0179 was incomplete when the Firebug
  add-on was used. If a user visited a website containing malicious
  JavaScript while the Firebug add-on was enabled, it could cause Firefox to
  execute arbitrary JavaScript with the privileges of the user running
  Firefox. (CVE-2010-3773)

  A flaw was found in the way Firefox presented the location bar to users. A
  malicious website could trick a user into thinking they are visiting the
  site reported by the location bar, when the page is actually content
  controlled by an attacker. (CVE-2010-3774)

  A cross-site scripting (XSS) flaw was found in the Firefox x-mac-arabic,
  x-mac-farsi, and x-mac-hebrew character encodings. Certain characters were
  converted to angle brackets when displayed. If server-side script filtering
  missed these cases, it could result in Firefox executing JavaScript code
  with the permissions of a different website. (CVE-2010-3770)

  For technical details regarding these flaws, refer to the Mozilla security
  advisories for Firefox 3.6.13. You can find a link to the Mozilla
  advisories in the References section of this erratum.

  All Firefox users should upgrade to these updated packages, which contain
  Firefox version 3.6.13, which corrects these issues. After installing the
  update, Firefox must be restarted for the changes to take effect.");
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

  if ((res = isrpmvuln(pkg:"firefox", rpm:"firefox~3.6.13~3.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
