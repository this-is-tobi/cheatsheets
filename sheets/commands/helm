# Helm

## Global

### Install chart

```sh
helm -n <namespace> upgrade --install --create-namespace --dependency-update --values <values_file> <release_name> <chart>
```

### Update chart values

```sh
helm -n <namespace> upgrade --reuse-values --set <key>=<value> <release_name> <chart>
```

## Repositories / Chart

### Update helm repositories

```sh
helm repo update
```

## Add helm repository

```sh
helm repo add <repo_name> <repo_url>
```

### Search for a chart within local repositories

```sh
helm search repo <repo_name>
```

### Search for a chart within artifacthub

```sh
helm search hub <repo_name> --max-col-width 75
```

### List all chart versions

```sh
helm search repo <repo_name>/<chart_name> --versions
```

### Display remote chart readme

```sh
helm show readme <chart_name> --repo <repo_name>
```

### Display remote chart infos

```sh
helm show chart <chart_name> --repo <repo_name>
```

or


```sh
helm show chart oci://<repo_name>/<chart_name>
```

### Display remote chart values

```sh
helm show values <chart_name> --repo <repo_name>
```

or


```sh
helm show values oci://<repo_name>/<chart_name>
```
