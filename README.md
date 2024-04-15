## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  ```bash
  helm repo add mhrznamn068 https://mhrznamn068.github.io/helm-charts
  ```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
<alias>` to see the charts.

To install the chart-name chart:

    helm install my-chart-name mhrznamn068/chart-name

To uninstall the chart:

    helm delete my-chart-name

# Install Refresh ECR Token chart
```bash
helm upgrade --install ecr-token mhrznamn068/refresh-ecr-token -n ops --create-namespace --set ecrCredentials.awsAccessKeyId=<aws_access-key> --set ecrCredentials.awsSecretAccessKey=<aws_secret_access_key> --set ecrCredentials.region=ap-northeast-3 --set secretName=regcred
```
