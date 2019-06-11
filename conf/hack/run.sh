#!/bin/bash

echo "backup jar files"
mv /opt/atlassian/confluence/confluence/WEB-INF/lib/atlassian-extras-decoder-v* /mnt
mv /opt/atlassian/confluence/confluence/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-* /mnt

echo "replace hack files"
cp /opt/hack/atlassian-extras-decoder-v*.jar /opt/atlassian/confluence/confluence/WEB-INF/lib/
cp /opt/hack/atlassian-universal-plugin-manager-plugin*.jar /opt/atlassian/confluence/confluence/WEB-INF/atlassian-bundled-plugins/