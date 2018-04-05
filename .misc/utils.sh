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
  clear
  cd ${ROOT_FOLDER}/*${1}-*
}

workspace () {
  clear
  cd ${ROOT_FOLDER}/*${1}-*/workspace
}
