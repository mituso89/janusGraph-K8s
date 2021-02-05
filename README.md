# install Janus Graph by K8s
This is a demo of the [Kong API Gateway](https://konghq.com/) which best practice as a proxy for a public web service as well

## Requirements
  - Linux, macOS, Windows 10
  - [Helm](https://helm.sh/docs/intro/install/)
  - [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)


## Git clone

```
https://github.com/mituso89/janusGraph-K8s.git
```

## Running


```
cd janusGraph-K8s

```

Start the demo:

```
helm upgrade --namespace hn-team-db --install hn-team-db .
```

The compose file does 3 things: 

1.  Creates cassandra, elatichsearch.
2.  Create janusGraph.
3.  Create UI graph-explorer


## Verify

```
kubectl get pods
```

## Clean Up

Tear everything down using:

```
helm delete {{ .Release.Name }}
```

***
