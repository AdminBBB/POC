#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from F5 Networks BIG-IP Solution K11330536.
#
# The text description of this plugin is (C) F5 Networks.
#

include("compat.inc");

if (description)
{
  script_id(126396);
  script_version("1.3");
  script_cvs_date("Date: 2019/07/17 16:36:41");

  script_cve_id("CVE-2019-6635");

  script_name(english:"F5 Networks BIG-IP : BIG-IP Appliance mode vulnerability (K11330536)");
  script_summary(english:"Checks the BIG-IP version.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote device is missing a vendor-supplied security patch."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"When the BIG-IP system is licensed for Appliance mode, a user with
either the Administrator or the Resource Administrator rolecan bypass
Appliance mode restrictions.(CVE-2019-6635)

Impact

BIG-IP

This vulnerability allows local attackers with high-level privileges
to overwrite arbitrary files. This behavior is possible only when the
BIG-IP system runs in Appliance mode on any of the hardware platforms,
and the user account is configured with Administrator or Resource
Administrator role. Resource Administrator roles must have TMOS Shell
( tmsh ) access to perform the attack. Appliance mode is a licensed
feature. This vulnerability does not affect the virtual platforms.

Enterprise Manager /BIG-IQ / F5 iWorkflow / Traffix SDC

There is no impact; F5 products are not affected by this
vulnerability."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://support.f5.com/csp/article/K11330536"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade to one of the non-vulnerable versions listed in the F5
Solution K11330536."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:N/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:H/A:N");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_access_policy_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_advanced_firewall_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_application_acceleration_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_application_security_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_application_visibility_and_reporting");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_global_traffic_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_link_controller");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_local_traffic_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_policy_enforcement_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_webaccelerator");
  script_set_attribute(attribute:"cpe", value:"cpe:/h:f5:big-ip");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/03");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/02");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by WebRAY, Inc. or an Affiliate thereof.");
  script_family(english:"F5 Networks Local Security Checks");

  script_dependencies("f5_bigip_detect.nbin");
  script_require_keys("Host/local_checks_enabled", "Host/BIG-IP/hotfix", "Host/BIG-IP/modules", "Host/BIG-IP/version", "Settings/ParanoidReport");

  exit(0);
}


include("f5_func.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
version = get_kb_item("Host/BIG-IP/version");
if ( ! version ) audit(AUDIT_OS_NOT, "F5 Networks BIG-IP");
if ( isnull(get_kb_item("Host/BIG-IP/hotfix")) ) audit(AUDIT_KB_MISSING, "Host/BIG-IP/hotfix");
if ( ! get_kb_item("Host/BIG-IP/modules") ) audit(AUDIT_KB_MISSING, "Host/BIG-IP/modules");

sol = "K11330536";
vmatrix = make_array();

if (report_paranoia < 2) audit(AUDIT_PARANOID);

# AFM
vmatrix["AFM"] = make_array();
vmatrix["AFM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["AFM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# AM
vmatrix["AM"] = make_array();
vmatrix["AM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["AM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# APM
vmatrix["APM"] = make_array();
vmatrix["APM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["APM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# ASM
vmatrix["ASM"] = make_array();
vmatrix["ASM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["ASM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# AVR
vmatrix["AVR"] = make_array();
vmatrix["AVR"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["AVR"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# GTM
vmatrix["GTM"] = make_array();
vmatrix["GTM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["GTM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# LC
vmatrix["LC"] = make_array();
vmatrix["LC"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["LC"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# LTM
vmatrix["LTM"] = make_array();
vmatrix["LTM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["LTM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# PEM
vmatrix["PEM"] = make_array();
vmatrix["PEM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["PEM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");

# WAM
vmatrix["WAM"] = make_array();
vmatrix["WAM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4","11.6.1-11.6.3","11.5.2-11.5.8");
vmatrix["WAM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1","11.6.4","11.5.9");


if (bigip_is_affected(vmatrix:vmatrix, sol:sol))
{
  if (report_verbosity > 0) security_note(port:0, extra:bigip_report_get());
  else security_note(0);
  exit(0);
}
else
{
  tested = bigip_get_tested_modules();
  audit_extra = "For BIG-IP module(s) " + tested + ",";
  if (tested) audit(AUDIT_INST_VER_NOT_VULN, audit_extra, version);
  else audit(AUDIT_HOST_NOT, "running any of the affected modules");
}
