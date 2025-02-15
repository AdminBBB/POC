#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1638.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(126328);
  script_version("1.1");
  script_cvs_date("Date: 2019/06/28 11:31:56");

  script_cve_id("CVE-2019-9928");

  script_name(english:"openSUSE Security Update : gstreamer-0_10-plugins-base (openSUSE-2019-1638)");
  script_summary(english:"Check for the openSUSE-2019-1638 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for gstreamer-0_10-plugins-base fixes the following 
issues :

Security issue fixed :

  - CVE-2019-9928: Fixed a heap-based overflow in the rtsp
    connection parser (bsc#1133375).

This update was imported from the SUSE:SLE-12-SP2:Update update
project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1133375"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected gstreamer-0_10-plugins-base packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugin-gnomevfs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugin-gnomevfs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugins-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugins-base-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugins-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugins-base-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugins-base-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugins-base-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-0_10-plugins-base-lang");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-0_10-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-0_10-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-0_10-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-0_10-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstinterfaces-0_10-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstinterfaces-0_10-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstinterfaces-0_10-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstinterfaces-0_10-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstApp-0_10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstInterfaces-0_10");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/24");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/28");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by WebRAY, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE42\.3)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "42.3", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-0_10-plugin-gnomevfs-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-0_10-plugin-gnomevfs-debuginfo-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-0_10-plugins-base-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-0_10-plugins-base-debuginfo-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-0_10-plugins-base-debugsource-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-0_10-plugins-base-devel-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-0_10-plugins-base-lang-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstapp-0_10-0-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstapp-0_10-0-debuginfo-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstinterfaces-0_10-0-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstinterfaces-0_10-0-debuginfo-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstApp-0_10-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstInterfaces-0_10-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"gstreamer-0_10-plugins-base-32bit-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"gstreamer-0_10-plugins-base-debuginfo-32bit-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstapp-0_10-0-32bit-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstapp-0_10-0-debuginfo-32bit-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstinterfaces-0_10-0-32bit-0.10.36-18.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstinterfaces-0_10-0-debuginfo-32bit-0.10.36-18.3.1") ) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "gstreamer-0_10-plugin-gnomevfs / etc");
}
