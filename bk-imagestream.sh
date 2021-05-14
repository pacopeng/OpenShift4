for i in `oc get is -A | grep -v NAME | awk '{print $1":"$2}'`;\
do  is=${i#*:};ns=${i%:*};echo backup imagestream $is in namespace $ns;\
oc get is $is -n $ns --export -o yaml > /ocpinstall/backup/namespacebackup/imagestream/is-$is-ns-$ns.yaml;done




for i in `oc get template -A | grep -v DESCRIPTION | awk '{print $1":"$2}'`;\
do  is=${i#*:};ns=${i%:*};echo backup template $is in namespace $ns;\
oc get template  $is -n $ns --export -o yaml \
> /ocpinstall/backup/namespacebackup/template/template-$is-ns-$ns.yaml;\
done
