#!/bin/sh

# Save the root directory of this git repository
ROOT_FOLDER=$(cd `dirname -- $0` && pwd)/

# Save the user prompt before editing it,
# taking care that it is only saved once.
if [ "$ORIGINAL_PS1" = "" ]; then
  export ORIGINAL_PS1=$PS1
fi

# Install python dependencies if not already installed
if [ ! $(command -v rst2ansi) ]; then
  echo "Installing python dependencies..."
  pip3 install -r ${ROOT_FOLDER}/.misc/requirements.txt > /dev/null
  echo "Done!"
fi

slide () {
  clear
  echo "Section ${SECTION} - Slide ${1}"
  echo "==================="
  echo
  rst2ansi ${SECTION_PATH}/*${1}-*.rst
}

note () {
  clear
  echo "Section ${SECTION} - Note ${1}"
  echo
  rst2ansi ${SECTION_PATH}/.*${1}-*.rst
}


section () {
  export SECTION=$1
  export SECTION_PATH=$(echo ${ROOT_FOLDER}/*${1}-*)
  export PS1="(Section ${SECTION}) ${ORIGINAL_PS1}"
  cd ${SECTION_PATH}

  clear
  echo "You just change to workshop section ${SECTION}"
  echo
}

tasks () {
  cd ${SECTION_PATH}/workspace
  clear
  echo "Tasks for section ${SECTION}"
  echo
  rst2ansi ../tasks.rst
}

solutions () {
  clear
  echo "Solutions for section ${SECTION} tasks:"
  echo "=============================="
  echo
  rst2ansi "${SECTION_PATH}/.solutions.rst"
}

install_brew () {
  # Install "brew" for MacOS users
  if [ "$(uname)" = "Darwin" ] && [ ! $(command -v brew) ]; then
    echo "Installing brew for MacOS..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Done!"
  else
    echo "Brew already installed!"
  fi
}


help () {
  echo "The workshop is seperated into numerical sections, numbered 1, 2, 3, and so on."
  echo
  echo "Here are the available commands used in order to follow along:"
  echo "section NUMBER :  Go to workshop section NUMBER."
  echo "slide NUMBER   :  Show slide NUMBER in the current section."
  echo "note NUMBER    :  Show the presenter notes for slide NUMBER in the current section."
  echo "tasks          :  Go to workspace tasks for the current section."
  echo "solutions      :  Show the solutions to the tasks for the current section."
}
