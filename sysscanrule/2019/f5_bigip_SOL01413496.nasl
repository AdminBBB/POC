#
# (C) WebRAY Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from F5 Networks BIG-IP Solution K01413496.
#
# The text description of this plugin is (C) F5 Networks.
#

include("compat.inc");

if (description)
{
  script_id(126394);
  script_version("1.3");
  script_cvs_date("Date: 2019/07/17 16:36:41");

  script_cve_id("CVE-2019-6632");

  script_name(english:"F5 Networks BIG-IP : vCMP vulnerability (K01413496)");
  script_summary(english:"Checks the BIG-IP version.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote device is missing a vendor-supplied security patch."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Under certain circumstances, attackers can decrypt configuration items
that are encrypted because the vCMP configuration unit key is
generated with insufficient randomness. The attack prerequisite is
direct access to encrypted configuration and/or UCS files.
(CVE-2019-6632)

Impact

BIG-IP

This vulnerability may allow an attacker to decrypt configuration
and/or user configuration set (UCS) files that are encrypted.

BIG-IQ / F5 iWorkflow / Enterprise Manager / ARX / LineRate / Traffix
SDC

There is no impact; these F5 products are not affected by this
vulnerability."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://support.f5.com/csp/article/K01413496"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade to one of the non-vulnerable versions listed in the F5
Solution K01413496."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N");

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

sol = "K01413496";
vmatrix = make_array();

if (report_paranoia < 2) audit(AUDIT_PARANOID);

# AFM
vmatrix["AFM"] = make_array();
vmatrix["AFM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["AFM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# AM
vmatrix["AM"] = make_array();
vmatrix["AM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["AM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# APM
vmatrix["APM"] = make_array();
vmatrix["APM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["APM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# ASM
vmatrix["ASM"] = make_array();
vmatrix["ASM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["ASM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# AVR
vmatrix["AVR"] = make_array();
vmatrix["AVR"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["AVR"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# GTM
vmatrix["GTM"] = make_array();
vmatrix["GTM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["GTM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# LC
vmatrix["LC"] = make_array();
vmatrix["LC"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["LC"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# LTM
vmatrix["LTM"] = make_array();
vmatrix["LTM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["LTM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# PEM
vmatrix["PEM"] = make_array();
vmatrix["PEM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["PEM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# WAM
vmatrix["WAM"] = make_array();
vmatrix["WAM"]["affected"  ] = make_list("14.1.0","14.0.0","13.0.0-13.1.1","12.1.0-12.1.4");
vmatrix["WAM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");


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
