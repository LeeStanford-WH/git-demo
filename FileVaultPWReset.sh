#!/bin/sh

#  FileVaultPWReset.sh
#
#  Created by Lee Stanford on 3/21/19.
#
loggedInUser=$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')
sudo fdesetup list

#  note the UUID of your user (should be a string like 3730F99B-ADAD-468F-B8FB-0D237531A770)
sudo diskutil list
#  make note of the Disk Identifier for “Macintosh HD” (should be disk1s1 but may be different)
sudo diskutil apfs changePassphrase disk1s1 -user [UUID]
• enter your current FileVault Password
• change it to your current login password
