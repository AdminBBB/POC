#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1639.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(126329);
  script_version("1.1");
  script_cvs_date("Date: 2019/06/28 11:31:56");

  script_cve_id("CVE-2019-9928");

  script_name(english:"openSUSE Security Update : gstreamer-plugins-base (openSUSE-2019-1639)");
  script_summary(english:"Check for the openSUSE-2019-1639 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for gstreamer-plugins-base fixes the following issue:
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
    value:"Update the affected gstreamer-plugins-base packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base-devel-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gstreamer-plugins-base-lang");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstallocators-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstallocators-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstallocators-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstallocators-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstapp-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstaudio-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstaudio-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstaudio-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstaudio-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstfft-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstfft-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstfft-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstfft-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstpbutils-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstpbutils-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstpbutils-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstpbutils-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstriff-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstriff-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstriff-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstriff-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtp-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtp-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtp-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtp-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtsp-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtsp-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtsp-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstrtsp-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstsdp-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstsdp-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstsdp-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstsdp-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgsttag-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgsttag-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgsttag-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgsttag-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstvideo-1_0-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstvideo-1_0-0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstvideo-1_0-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libgstvideo-1_0-0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstAllocators-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstApp-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstAudio-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstFft-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstPbutils-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstRtp-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstRtsp-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstSdp-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstTag-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-GstVideo-1_0");
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

if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-plugins-base-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-plugins-base-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-plugins-base-debugsource-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-plugins-base-devel-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"gstreamer-plugins-base-lang-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstallocators-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstallocators-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstapp-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstapp-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstaudio-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstaudio-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstfft-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstfft-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstpbutils-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstpbutils-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstriff-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstriff-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstrtp-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstrtp-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstrtsp-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstrtsp-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstsdp-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstsdp-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgsttag-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgsttag-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstvideo-1_0-0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libgstvideo-1_0-0-debuginfo-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstAllocators-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstApp-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstAudio-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstFft-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstPbutils-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstRtp-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstRtsp-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstSdp-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstTag-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"typelib-1_0-GstVideo-1_0-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"gstreamer-plugins-base-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"gstreamer-plugins-base-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"gstreamer-plugins-base-devel-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstallocators-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstallocators-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstapp-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstapp-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstaudio-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstaudio-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstfft-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstfft-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstpbutils-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstpbutils-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstriff-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstriff-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstrtp-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstrtp-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstrtsp-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstrtsp-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstsdp-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstsdp-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgsttag-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgsttag-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstvideo-1_0-0-32bit-1.8.3-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libgstvideo-1_0-0-debuginfo-32bit-1.8.3-8.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "gstreamer-plugins-base / gstreamer-plugins-base-32bit / etc");
}
