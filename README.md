# kubernetes-backup

This is a simple shell script to be used in a kubeadm environment to backup the
etcd database and kubernetes directory.  I use this to backup the config once a
day with a Kubernetes job.  See the `cluster-backup.yaml` for an example of how
this could be used.
