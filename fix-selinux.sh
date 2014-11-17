#!/bin/bash
# source - https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Resource_Management_and_Linux_Containers_Guide/sec-Sharing_Data_Across_Containers.html


chcon -Rt svirt_sandbox_file_t config/
