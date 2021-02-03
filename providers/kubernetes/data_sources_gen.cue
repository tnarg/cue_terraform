// Generated by cue-terraform-gen (https://github.com/tnarg/cue_terraform_gen). DO NOT EDIT.
package kubernetes

#KubernetesAllNamespacesDataSource: {}
#KubernetesConfigMapDataSource: metadata?: [{
	annotations?: [_]: string
	labels?: [_]:      string
	namespace?: string
}, ...]
#KubernetesIngressDataSource: metadata?: [{
	annotations?: [_]: string
	labels?: [_]:      string
	namespace?: string
}, ...]
#KubernetesNamespaceDataSource: metadata?: [{
	annotations?: [_]: string
	labels?: [_]:      string
}, ...]
#KubernetesSecretDataSource: metadata?: [{
	annotations?: [_]: string
	labels?: [_]:      string
	namespace?: string
}, ...]
#KubernetesServiceDataSource: metadata?: [{
	annotations?: [_]: string
	labels?: [_]:      string
	namespace?: string
}, ...]
#KubernetesServiceAccountDataSource: metadata?: [{
	annotations?: [_]: string
	labels?: [_]:      string
	namespace?: string
}, ...]
#KubernetesStorageClassDataSource: metadata?: [{
	annotations?: [_]: string
	labels?: [_]:      string
}, ...]
#DataSources: {
	kubernetes_all_namespaces?: [_]:  #KubernetesAllNamespacesDataSource
	kubernetes_config_map?: [_]:      #KubernetesConfigMapDataSource
	kubernetes_ingress?: [_]:         #KubernetesIngressDataSource
	kubernetes_namespace?: [_]:       #KubernetesNamespaceDataSource
	kubernetes_secret?: [_]:          #KubernetesSecretDataSource
	kubernetes_service?: [_]:         #KubernetesServiceDataSource
	kubernetes_service_account?: [_]: #KubernetesServiceAccountDataSource
	kubernetes_storage_class?: [_]:   #KubernetesStorageClassDataSource
}