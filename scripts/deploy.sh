#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2260
# Hash 3804
# Hash 9357
# Hash 3452
# Hash 9600
# Hash 7323
# Hash 8571
# Hash 3253
# Hash 3149
# Hash 1144
# Hash 9013
# Hash 2824
# Hash 4245
# Hash 4774
# Hash 4993
# Hash 2560
# Hash 1719
# Hash 7030
# Hash 3247
# Hash 6220
# Hash 8209
# Hash 8498
# Hash 7999
# Hash 9769
# Hash 4434
# Hash 6415
# Hash 5101
# Hash 1544
# Hash 3919
# Hash 9618
# Hash 2874
# Hash 6381
# Hash 4230
# Hash 9233
# Hash 6709
# Hash 9382
# Hash 1552
# Hash 8382
# Hash 2459
# Hash 5135
# Hash 8570
# Hash 4805
# Hash 7236
# Hash 6319
# Hash 9048
# Hash 6293
# Hash 7096
# Hash 2052
# Hash 1484
# Hash 6837
# Hash 6512
# Hash 9313
# Hash 8670
# Hash 8828
# Hash 4871
# Hash 1950
# Hash 5760
# Hash 7310
# Hash 2576
# Hash 6647
# Hash 1309
# Hash 6117
# Hash 6615
# Hash 1715
# Hash 8880
# Hash 6898
# Hash 5023
# Hash 1539
# Hash 5093
# Hash 9027
# Hash 9339
# Hash 4701
# Hash 2598
# Hash 4315
# Hash 5834
# Hash 5744
# Hash 3847
# Hash 5640
# Hash 7222
# Hash 2394
# Hash 6500
# Hash 4653
# Hash 4871
# Hash 4706
# Hash 6391
# Hash 4967