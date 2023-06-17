# Kubernetes Screeps Server

## Initial Configuration

### Load Steam Key

Visit [https://steamcommunity.com/dev/apikey](https://steamcommunity.com/dev/apikey) to get your steam web API key, and place it into a Kubernetes secret so your server can use it to authenticate.

```shell
kubectl create secret generic steam-api-key --from-literal=steam-api-key=<EXAMPLE-STEAM-KEY>
```

### Create a persistent volume to store game data

```shell
kubectl apply -f persistentVolume.yaml
```

### Install the helm chart

```shell
helm install screeps screeps
```

### Find the external NodePort to connect to

```shell
$ kubectl get svc
NAME         TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)           AGE
screeps      NodePort    10.111.61.211   <none>        21025:31152/TCP   10m
```

In the above, port 31152 is the external facing port to connect to.
