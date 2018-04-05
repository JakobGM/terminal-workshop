#!/bin/sh

note () {
  rst2ansi 0${1}-*.rst
}

ROOT_FOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
section () {
  cd ${ROOT_FOLDER}/0${1}-*
}
