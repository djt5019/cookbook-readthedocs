@test "should have installed Python" {
    test -n '$(which python)'
}

@test "should have installed git" {
    test -n '$(which git)'
}

@test "should have cloned the ReadTheDocs repo" {
    test -d '/etc/readthedocs'
}

@test "should install read the docs" {
    echo $(pip show readthedocs)
    test -n '$(pip show readthedocs)'
}
