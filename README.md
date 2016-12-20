# arch-mario

pacman and yaourt package wrapper.

## Dependencies
External dependency needed!

Insert at the end of ```/etc/pacman.conf```
    [archlinuxfr]
    Include = /etc/pacman.d/archlinuxfr-mirrorlist

Create new file in ```/etc/pacman.d/archlinuxfr-mirrorlist with following context:

    ## Arch Linux repository list: archlinuxfr
    Server = http://repo.archlinux.fr/$arch
    SigLevel = Optional TrustAll

## Create Package
Just execute makepkg.sh

    ./makepkg.sh

## Package wrapper "mario" functions:

* help          print supported commands
* autoremove    Recursively removes ALL orphanded packages
* clean         Cleans all package caches and locally installed packages
* commands      List all mario commands
* file          Shows up all files from given package
* files         List all files installed by a given package.
* info          Display information about a given package in the repos
* install       Installes packcages via provider pacman or yaourt
* list          List all installed packages
* localinstall  Install specific package not from the repositories but from ...
* mark          Mark one or more installed packages as explicitly installed.
* orphanded     List automaticly Packages that are no longer needed by any o...
* purge         Remove the specified package(s), its configuration(s) and un...
* remove        Remove the specified package(s), retaining its configuration...
* unmark        Mark one or more installed packages as non explicitly installed
* update        Updates the Database
* upgrade       Synchronize with repositories and then upgrade packages that...
* version       Prints the version of mario

See 'mario help <command>' for information on a specific command.

## Examples
* Install a package:
    * mario install <packagename>
* Search for a package
    * mario search <packagename>
* Remove a package
    * mario remove <packagename>
* Erase a package with all its depdencies
    * mario purge <packagename>
