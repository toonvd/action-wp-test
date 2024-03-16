setup() {
      load '../bats/bats-support-master/load'
      load '../bats/bats-assert-master/load'
}

@test 'assert()' {
  assert [ 1 -lt 0 ]
}