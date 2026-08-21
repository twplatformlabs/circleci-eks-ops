#!/usr/bin/env bats

if [[ -z "${TEST_CONTAINER}" ]]; then
  echo "ERROR: TEST_CONTAINER environment variable is not set"
  exit 1
fi

bash -c "docker exec ${TEST_CONTAINER} aws --version"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} kubectl version | head -n 1")
echo "kubectl ${RESULT}"
bash -c "docker exec ${TEST_CONTAINER} kind version"
RESULT=$(docker exec "${TEST_CONTAINER}" karmadactl version | sed -n 's/.*GitVersion:"\([^"]*\)".*/\1/p')
echo "karmadactl ${RESULT}"
bash -c "docker exec ${TEST_CONTAINER} flux --version"
bash -c "docker exec ${TEST_CONTAINER} argocd version --client --short"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} px version")
echo "Pixie CLI ${RESULT}"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} helm version --short")
echo "helm ${RESULT}"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} checkov --version")
echo "checkov ${RESULT}"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} awspec --version")
echo "awspec ${RESULT}"
bash -c "docker exec ${TEST_CONTAINER} bats --version"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} trivy --version | grep Version")
echo "trivy ${RESULT}"
bash -c "docker exec ${TEST_CONTAINER} python -V"
bash -c "docker exec ${TEST_CONTAINER} ruby -v"
bash -c "docker exec ${TEST_CONTAINER} yq --version"