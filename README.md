Systemd Units
=============

This is a collaborative repository for distributions to share unit files.

Layout
------

    /
      /common:   the unit files that we have agreed on as the 'standard' ones, should
             these should be attempted to be pushed upstream
      /{arch,opensuse,mageia,fedora,gentoo,...}/$tarballname/:
             copies of the unit files specific to each distro, as they are
             currently shipped

Guidelines for shared unit files
--------------------------------

[Suggestions]

No references to non-upsteram/non-shared units.

Avoid EnvironmentFile= to the extent possible. If it must be used, don't place
configuration files in distro-specific locations. Probably
/etc/$tarballname/\*.conf or /etc/$tarballname.conf is best. Prefer to patch the
upstream sorce to read config file(s) directly.

Etc.
