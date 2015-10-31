* Plugin installation:
    `cd bundle`
    `git submodule add <url>`
* Installation on another computer:
    `./install.sh`
* Plugin update:
    `git submodule foreach git pull origin master`
    or just `cd bundle/<folder>` and `pull origin master`
* Uninstall:
    `git submodule deinit bundle/<folder>`
    `git rm bundle/<folder>`
    `git rm --cached bundle/<folder>`
    `rm -rf .git/modules/bundle/<folder>`
