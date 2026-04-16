# Kubernetes Application Deployment with Helm

## Project Overview
This project focuses on transitioning from static Kubernetes manifests to a professional, reusable packaging system using **Helm**. The objective is to create a "Master Blueprint" (Helm Chart) that allows for efficient application management across various environments, such as development and staging, by utilizing centralized logic and environment-specific values.

## Tech Stack
* **Infrastructure:** Azure Kubernetes Service (AKS)
* **Container Registry:** Azure Container Registry (ACR)
* **Package Manager:** Helm
* **Language:** YAML and Go Templating
* **CLI Tools:** `kubectl`, `az cli`, and `helm`

---

## Phase 1: Scaffolding
The initial phase involves establishing the standard folder structure required by Helm. This includes initializing the chart and removing default example files to create a clean workspace for custom templates.

## Phase 2: Templating
In this phase, static YAML manifests are converted into dynamic templates. By defining environment-specific data in a central values file, hardcoded parameters—such as container image names, tags, and replica counts—are replaced with variable references. This ensures that the same deployment logic can be reused across different configurations.



## Phase 3: Multi-Environment Deployment
The final phase demonstrates the power of Helm by deploying the application into isolated namespaces.
* **Namespace Creation:** Logical partitions are created within the cluster to isolate environments and prevent resource conflicts.
* **Dev Deployment:** The application is deployed to the development namespace using the default configuration defined in the chart.
* **Staging Deployment:** The same chart is used to deploy to a staging environment, but with specific overrides applied on the fly to meet different resource or scale requirements.

---

## Verification & Management
Post-deployment, the infrastructure is verified by checking the status of resources within each namespace to ensure high availability and correct configuration. Professional management includes performing application upgrades to roll out new versions and maintaining the cluster by uninstalling releases and removing namespaces when they are no longer needed.

## Conclusion
Adopting Helm simplifies the management of complex multi-service applications. By maintaining a single Chart with multiple values profiles, deployment logic is centralized, ensuring consistency across all environments and significantly reducing the risk of manual configuration errors.