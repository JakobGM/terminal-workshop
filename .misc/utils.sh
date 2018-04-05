#!/bin/sh

ROOT_FOLDER=$(cd `dirname $0` && pwd)/..
export ORIGINAL_PS1=$PS1

slide () {
  clear
  rst2ansi ${SECTION_PATH}/*${1}-*.rst
}

note () {
  clear
  rst2ansi ${SECTION_PATH}/.*${1}-*.rst
}


section () {
  export SECTION=$1
  export SECTION_PATH=$(echo ${ROOT_FOLDER}/*${1}-*)
  export PS1="(Section ${SECTION}) ${ORIGINAL_PS1}"
  cd ${SECTION_PATH}
  clear
}

tasks () {
  cd ${SECTION_PATH}/workspace
  clear
  rst2ansi ../tasks.rst
}

help () {
  echo "The workshop is seperated into numerical sections, numbered 1, 2, 3, and so on."
  echo
  echo "Here are the available commands used in order to follow along:"
  echo "section NUMBER :  Go to workshop section NUMBER."
  echo "slide NUMBER   :  Show slide NUMBER in the current section."
  echo "note NUMBER    :  Show the presenter notes for slide NUMBER in the current section."
  echo "tasks          :  Go to workspace tasks for section."
}
