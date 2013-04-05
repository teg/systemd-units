Systemd cross distro unit repository. 
=====================================

Each unit file here is written for systemd v30 or higher and 
binary's residing in /usr and aimed at being as much distro 
agnostic as possible thou many were originally written for 
Fedora,OpenSuse,Debian,Arch,Gentoo or any other GNU/Linux 
distribution so you might have to tailor it to your distribution.

Especially pay attention to $PATH in units! 

Distributions
-------------

Each distribution is welcome to add a branch with their currently shipped
systemd units. These are meant both as a central location for their packages
to pull from, and also to help unification so everyone will eventually end
up with the common units.

Each distribution is welcome to add distro-specific scripts related to this
package to scripts/${distroname}.

Guidelines for master branch
-----------------------------

Unit files should stay in a subdirectory with the same name as the upstream
tarball of the project.

The unit(s) residing in this repository should be upstream acceptable 
and work across all GNU/Linux distributions that use systemd.

No references to non-upsteram/non-shared units.

Avoid EnvironmentFile= to the extent possible. If it must be used, don't place
configuration files in distro-specific locations. Probably
/etc/$tarballname/\*.conf or /etc/$tarballname.conf is best. Prefer to patch the
upstream sorce to read config file(s) directly.

License
-------

All files in this repo are licensed under the MIT license.

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
