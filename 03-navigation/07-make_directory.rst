========================
mkdir : create directory
========================

Syntax: ``mkdir <directory>``

- Create a directory:
    ``mkdir another_sibling``

- Create a directory within another directory:
    ``mkdir yet_another_sibling/subsibling``

- Trying once more: 
    ``mkdir -p yet_another_sibling/subsibling``

- Why the difference?
    ``-p`` : *parent*, creates all missing directories
