##
# 
##

include('compat.inc');

if (description)
{
  script_id(141494);
  script_version("1.1");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/10/16");

  script_cve_id("CVE-2020-9746");
  script_xref(name:"IAVA", value:"2020-A-0464");

  script_name(english:"Adobe Flash Player <= 32.0.0.433 (APSB20-58)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host has a browser plugin installed that is affected by an arbitrary code execution vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Flash Player installed on the remote Windows host is equal or prior to version 32.0.0.433.
It is therefore affected by a NULL pointer dereference flaw. An unauthenticated, remote attacker can exploit this, by
inserting malicious strings in an HTTP response, to execute arbitrary code in the context of the current user.

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported
version number.");
  script_set_attribute(attribute:"see_also", value:"https://helpx.adobe.com/security/products/flash-player/apsb20-58.html");
  # http://helpx.adobe.com/flash-player/kb/archived-flash-player-versions.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?0cb17c10");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Flash Player version 32.0.0.445 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:H/Au:N/C:C/I:C/A:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-9746");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/10/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/10/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/10/16");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:flash_player");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("flash_player_installed.nasl");
  script_require_keys("SMB/Flash_Player/installed");

  exit(0);
}

get_kb_item_or_exit('SMB/Flash_Player/installed');

# Identify vulnerable versions.
info = '';
variants = make_list(
  'Plugin',
  'ActiveX',
  'Chrome',
  'Chrome_Pepper'
);

# we're checking for versions less than *or equal to* the cutoff!
foreach variant (variants)
{
  vers = get_kb_list('SMB/Flash_Player/'+variant+'/Version/*');
  files = get_kb_list('SMB/Flash_Player/'+variant+'/File/*');

  if (isnull(vers) || isnull(files))
    continue;

  foreach key (keys(vers))
  {
    ver = vers[key];
    if (isnull(ver))
      continue;

    # <=32.0.0.433
    if (ver_compare(ver:ver,fix:'32.0.0.433',strict:FALSE) <= 0)
    {
      num = key - ('SMB/Flash_Player/'+variant+'/Version/');
      file = files['SMB/Flash_Player/'+variant+'/File/'+num];
      if (variant == "Plugin")
      {
        info += '\n  Product           : Browser Plugin (for Firefox / Netscape / Opera)';
        fix = '32.0.0.445';
      }
      else if (variant == "ActiveX")
      {
        info += '\n  Product           : ActiveX control (for Internet Explorer)';
        fix = '32.0.0.445';
      }
      else if ('Chrome' >< variant)
      {
        info += '\n  Product           : Browser Plugin (for Google Chrome)';
        if (variant == 'Chrome')
          fix = 'Upgrade to a version of Google Chrome running Flash Player 32.0.0.445';
      }
      info += '\n  Path              : ' + file +
              '\n  Installed version : ' + ver;
      if (variant == "Chrome_Pepper")
        info += '\n  Fixed version     : 32.0.0.445 (Chrome PepperFlash)';
      else if (!isnull(fix))
        info += '\n  Fixed version     : '+fix;
      info += '\n';
    }
  }
}

if (info)
{
  port = get_kb_item('SMB/transport');
  if (!port) port = 445;

  security_report_v4(severity:SECURITY_HOLE, port:port, extra:info);
}
else
{
  if (thorough_tests)
    exit(0, 'No vulnerable versions of Adobe Flash Player were found.');
  else
    exit(1, 'Google Chrome\'s built-in Flash Player may not have been detected because the \'Perform thorough tests\' setting was not enabled.');
}
