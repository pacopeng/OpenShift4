for i in `oc get is -A | grep -v NAME | awk '{print $1":"$2}'`;do  is=${i#*:};ns=${i%:*};echo backup imagestream $is in namespace $ns;oc get is $is -n $ns --export -o yaml > /ocpinstall/backup/namespacebackup/imagestream/is-$is-ns-$ns.yaml;done

