bm 
==

bm is a command line biblatex bibliography manager


Current Features
----------------

  * Completely terminal based
  * Search through crossref
  * Add entries to $BIB file through DOI or a pdf file
  * Quickly Edit/View $BIB through your favourite pager/editor
  * Open editor with a template bib file and pipe it into the master bib file


Dependencies
------------

  * jq - for search functionality
  * poppler - for getting DOI metadata from a pdf


Installation
------------

Installation is pretty simple

  ```
  git clone git://git.ckyln.com/bm.git
  cd bm.git
  sudo make install
  ```


Installation on Arch
--------------------

bm is also in the Arch User Repository (AUR) with the same name.
It can be installed with

  ```
  git clone https://aur.archlinux.org/bm
  cd bm
  makepkg -si
  ```

or with yay

  ```
  yay -S bm
  ```
