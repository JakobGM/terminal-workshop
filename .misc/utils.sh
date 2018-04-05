#!/bin/sh

slide () {
  clear
  rst2ansi *${1}-*.rst
}

note () {
  clear
  rst2ansi .*${1}-*.rst
}

ROOT_FOLDER=$(cd `dirname $0` && pwd)/..

section () {
  cd ${ROOT_FOLDER}/*${1}-*
  clear
}

task () {
  cd ${ROOT_FOLDER}/*${1}-*/workspace
  clear
  rst2ansi ../tasks.rst
}
