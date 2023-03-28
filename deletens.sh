kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl get --show-kind --ignore-not-found -n crossplane-system


kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl patch -n crossplane-system --type=merge --patch '{"metadata":{"finalizers":[]}}'

kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl delete --all --ignore-not-found -n crossplane-system


kubectl delete ns  crossplane-system --force --grace-period=0