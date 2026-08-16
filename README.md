# Lang-Learn Helm Charts Repository

Centralized repository containing all Helm charts for the **Lang-Learn** Kubernetes platform.

## Charts

| Chart | Directory | Description |
|---|---|---|
| **frontend** | `charts/frontend` | React Frontend application & Nginx/Node BFF service |
| **inference** | `charts/inference` | KServe Gemma LLM inference service, model-loader job, MinIO object store & Prometheus alerting rules |
| **prompt-optimizer** | `charts/prompt-optimizer` | Alertmanager webhook-driven prompt optimization & evaluation service |
| **redis** | `charts/redis` | Redis Stack vector/key-value database for prompt and embedding caching |
| **mlflow** | `charts/mlflow` | MLflow Tracking Server with PostgreSQL backend for prompt optimization experiments |

## Usage with ArgoCD

Each chart can be independently deployed or upgraded in ArgoCD by referencing:
- **Repo URL**: `https://github.com/rickdevma100/lang-learn-helm-charts`
- **Path**: `charts/<service-name>`
- **Target Revision**: `main` or specific release tag (e.g. `v0.1.0`)

Environment-specific configuration overrides are supplied via value files from `lang-learn-gitops`.