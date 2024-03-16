setup() {
      load '/usr/local/bats/bats-support/load'
      load '/usr/local/bats/bats-assert/load'
}

@test 'assert()' {
  assert [ 1 -lt 0 ]
}