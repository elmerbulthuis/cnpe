# CNPE practice

This is a practice repository for the Certified Cloud Native Platform Engineering Engineer (CNPE) exam.

## Trivy

We only check our applications manifests with trivy.

## Argo

Get the Argo CD UI admin password via

```sh
kubectl -n argocd get secret argocd-initial-admin-secret \
    -o jsonpath="{.data.password}" | base64 -d; echo
```

Expose Argo CD UI via

```sh
kubectl port-forward -n argocd  services/argocd-server 8080:80
```

Go to [localhost:8080](http://localhost:8080) and ignore the https warnings and login with `admin` and the password you retrieved earlier.
