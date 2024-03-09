# Basic Concepts
# 1a. k8s是开源容器编排平台，简化容器管理以及自动化部署容器
# 1b. 两者都提供容器化部署应用，在以前版本k8s依赖docker进行容器化。 docker专注于容器化应用，而K8s专注于编排管理容器。

# Getting started with Minikube
# 2a. kubectl get pods -A
# 2b. 
# NAMESPACE     NAME                               READY   STATUS    RESTARTS      AGE
# kube-system   coredns-5dd5756b68-22ghf           1/1     Running   0             60m
# kube-system   etcd-minikube                      1/1     Running   0             60m
# kube-system   kube-apiserver-minikube            1/1     Running   0             60m
# kube-system   kube-controller-manager-minikube   1/1     Running   0             60m
# kube-system   kube-proxy-pdvrr                   1/1     Running   0             60m
# kube-system   kube-scheduler-minikube            1/1     Running   0             60m
# kube-system   storage-provisioner                1/1     Running   1 (59m ago)   60m
# kubedoom      kubedoom-6bfb65c8b4-7dg4b          1/1     Running   0             54m


# 3a.到此为止，vnc一直需要密码连接，但是怎么改都不对

