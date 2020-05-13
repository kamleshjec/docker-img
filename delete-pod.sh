#!/bin/bash
 p=$(oc get pods | awk '{print $1}')
 echo $p
 for i in $p ;do oc delete po $i; done
