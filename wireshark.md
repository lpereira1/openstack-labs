
---
date: "2017-04-18"
draft: true
weight: 999999
title: "Lab XX - Wireshark"
---
[Click here to find out more about Alta3 Research's Openstack Training](https://alta3.com/courses/openstack)

### TUESDAY - &#x2B50;REQUIRED&#x2B50;

### Lab Objective

The objective of this lab is to further your understanding of HTTP transactions issued between the python-openstackclient, and various OpenStack API endpoints.

### Procedure
 
0. Like every lab, take a moment and clean up your remote desktop screen. Close any old terminal windows you have open.

0. Now click on the the Wireshark icon in the lower left-hand corner of the screen. The icon you are looking for is blue, and depicts a sharkfin.

0. Once Wireshark is open, double click on the click on the **ens3** interface. This will ask Wireshark to capture on all physical interfaces.

0. Wireshark will begin capturing packets, however, we *only* want to display those message that are type HTTP. Type **http** (lowercase) in the bar at the top of Wireshark that currently reads, "Apply a display filter..."

0. Press enter after you type **http** to apply the display filter. This should Wireshark to display no packets, as you should not yet have captured any HTTP traffic. 

0. Now open a terminal session. The python-openstackclient has already been installed on the local remote desktop. 

    `student@beachhead:/$` `ssh controller`

0. Once logged into the controller, type the following command (it won't work!):

    `student@controller:~$`  `openstack flavor list`
