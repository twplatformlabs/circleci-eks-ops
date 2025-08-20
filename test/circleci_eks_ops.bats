#!/usr/bin/env bats

@test "node version" {
  run bash -c "docker exec container-test node --help"
  [[ "${output}" =~ "Usage: node" ]]
}

@test "npm version" {
  run bash -c "docker exec container-test npm --help"
  [[ "${output}" =~ "npm <command>" ]]
}

@test "ruby version" {
  run bash -c "docker exec container-test ruby --help"
  [[ "${output}" =~ "Usage: ruby" ]]
}

@test "python version" {
  run bash -c "docker exec container-test python --help"
  [[ "${output}" =~ "Options" ]]
}

@test "kubectl version" {
  run bash -c "docker exec container-test kubectl --help"
  [[ "${output}" =~ "kubectl controls" ]]
}

@test "helm version" {
  run bash -c "docker exec container-test helm --help"
  [[ "${output}" =~ "Kubernetes package manager" ]]
}

@test "aws-cli version" {
  run bash -c "docker exec container-test aws"
  [[ "${output}" =~ "usage: aws" ]]
}

@test "bats version" {
  run bash -c "docker exec container-test bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "argocd version" {
  run bash -c "docker exec container-test argocd --help"
  [[ "${output}" =~ "argocd [command]" ]]
}

@test "flux version" {
  run bash -c "docker exec container-test flux --help"
  [[ "${output}" =~ "flux [command]" ]]
}

@test "kind version" {
  run bash -c "docker exec container-test kind --help"
  [[ "${output}" =~ "kind [command]" ]]
}

@test "checkov version" {
  run bash -c "docker exec container-test checkov --help"
  [[ "${output}" =~ "usage: checkov" ]]
}

@test "trivy version" {
  run bash -c "docker exec container-test trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec container-test circlepipe --help"
  [[ "${output}" =~ "circlepipe [command]" ]]
}

@test "px version" {
  run bash -c "docker exec container-test px --help"
  [[ "${output}" =~ "px [command]" ]]
}
