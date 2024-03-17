setup() {
      load '../bats/bats-support-master/load'
      load '../bats/bats-assert-master/load'
}

parseHeader() {
    echo "${resp}" | grep -Fi "${1}" | cut -d ':' -f 2 | tr -d '\r' | xargs
}

parseHttpCode() {
    echo "${1}" | head -n 1 | cut -d ' ' -f 2
}

@test 'headers()' {
  resp=$(curl -sI "https://example.org")
  assert_equal $(parseHttpCode "${resp}") 200
  assert_equal $(parseHeader "x-cache") "HIT"
}