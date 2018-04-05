#!/bin/sh

slide () {
  rst2ansi 0${1}-*.rst
}

note () {
  rst2ansi .0${1}-*.rst
}

ROOT_FOLDER=$(cd `dirname $0` && pwd)/..
section () {
  cd ${ROOT_FOLDER}/0${1}-*
}
