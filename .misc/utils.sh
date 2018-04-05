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

help () {
  echo "The workshop is seperated into numerical sections, numbered 1, 2, 3, and so on."
  echo
  echo "Here are the available commands used in order to follow along:"
  echo "section NUMBER :  Go to workshop section NUMBER."
  echo "slide NUMBER   :  Show slide NUMBER in the current section."
  echo "note NUMBER    :  Show the presenter notes for slide NUMBER."
  echo "task NUMBER    :  Go to workspace tasks for section NUMBER."
}
