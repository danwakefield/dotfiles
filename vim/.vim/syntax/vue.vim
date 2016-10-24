syntax include @HTML syntax/html.vim
if exists("b:current_syntax")
  unlet b:current_syntax
endif
syntax region html keepend start=/^<template>/ end=/^<\/template>/ contains=@HTML fold

syntax include @JS syntax/javascript.vim
if exists("b:current_syntax")
  unlet b:current_syntax
endif
syntax region javascript keepend start=/<script\( lang="babel"\)\?\( type="text\/babel"\)\?>/ end="</script>" contains=@JS fold

syntax include @CSS syntax/css.vim
if exists("b:current_syntax")
  unlet b:current_syntax
endif
syntax region css keepend start=/<style\( \+scoped\)\?>/ end="</style>" contains=@CSS fold

let b:current_syntax = "vue"
