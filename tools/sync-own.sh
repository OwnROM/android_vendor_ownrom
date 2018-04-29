#!/bin/bash
#
# Copyright � 2015-2016, Akhil Narang "akhilnarang" <akhilnarang.1999@gmail.com>, Team OwnROM
# Custom Sync Script for OwnROM repositories
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it
#

if [ -d ".repo" ]
then
. build/envsetup.sh > /dev/null
dir=${PWD}
tools=${dir}/vendor/ownrom/tools
. $tools/colors
echo -e "$bldred Syncing OwnROM repositories......"
$normal
for repository in $(cat $tools/ownrom-repos)
do
rm -rf ${repository}
echo -e "$bldblu Syncing $repository"
echo -e "$bldcya `repo sync -c -q -f --force-sync --no-clone-bundle --no-tags $repository`"
echo -e "$bldgrn Synced $repository"
echo -e ""
done
$normal
else
echo -e "Please make sure you are running this in the root of OwnROM Source! "
exit 1;
fi
© 2018 GitHub, Inc.
Terms
Privacy
Security
Stat
