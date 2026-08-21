#!/usr/bin/env bats

setup() {
  if [[ -z "${TEST_CONTAINER}" ]]; then
    echo "ERROR: TEST_CONTAINER environment variable is not set"
    echo "Example:"
    echo "  TEST_CONTAINER=my-container bats tests.bats"
    exit 1
  fi
}

@test "node version" {
  run bash -c "docker exec ${TEST_CONTAINER} node --help"
  [[ "${output}" =~ "Usage: node" ]]
}

@test "npm version" {
  run bash -c "docker exec ${TEST_CONTAINER} npm --help"
  [[ "${output}" =~ "npm <command>" ]]
}

@test "ruby version" {
  run bash -c "docker exec ${TEST_CONTAINER} ruby --help"
  [[ "${output}" =~ "Usage: ruby" ]]
}

@test "python version" {
  run bash -c "docker exec ${TEST_CONTAINER} python --help"
  [[ "${output}" =~ "Options" ]]
}

@test "kubectl version" {
  run bash -c "docker exec ${TEST_CONTAINER} kubectl --help"
  [[ "${output}" =~ "kubectl controls" ]]
}

@test "helm version" {
  run bash -c "docker exec ${TEST_CONTAINER} helm --help"
  [[ "${output}" =~ "Kubernetes package manager" ]]
}

@test "aws-cli version" {
  run bash -c "docker exec ${TEST_CONTAINER} aws"
  [[ "${output}" =~ "usage: aws" ]]
}

@test "bats version" {
  run bash -c "docker exec ${TEST_CONTAINER} bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "argocd version" {
  run bash -c "docker exec ${TEST_CONTAINER} argocd --help"
  [[ "${output}" =~ "argocd [command]" ]]
}

@test "flux version" {
  run bash -c "docker exec ${TEST_CONTAINER} flux --help"
  [[ "${output}" =~ "flux [command]" ]]
}

@test "kind version" {
  run bash -c "docker exec ${TEST_CONTAINER} kind --help"
  [[ "${output}" =~ "kind [command]" ]]
}

@test "checkov version" {
  run bash -c "docker exec ${TEST_CONTAINER} checkov --help"
  [[ "${output}" =~ "usage: checkov" ]]
}

@test "trivy version" {
  run bash -c "docker exec ${TEST_CONTAINER} trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec ${TEST_CONTAINER} circlepipe --help"
  [[ "${output}" =~ "circlepipe [command]" ]]
}

@test "px version" {
  run bash -c "docker exec ${TEST_CONTAINER} px --help"
  [[ "${output}" =~ "px [command]" ]]
}

@test "yq version" {
  run bash -c "docker exec ${TEST_CONTAINER} yq --help"
  [[ "${output}" =~ "Usage:" ]]
}
