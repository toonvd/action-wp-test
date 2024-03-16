setup() {
      load './bats/bats-support/load'
      load './bats/bats-assert/load'
}

@test 'assert()' {
  assert [ 1 -lt 0 ]
}