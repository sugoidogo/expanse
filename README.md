# expanse

fully selfhosted multi-user web app for externally storing Reddit items (saved, created, upvoted, downvoted, hidden) to bypass Reddit's 1000-item listing limits

- features::
	- new items auto-sync
	- synced items not affected by Reddit deletion
	- search for items
	- filter by subreddit
	- unsave/delete/unvote/unhide items from Reddit directly on expanse
	- import csv data from [Reddit data request](https://www.reddit.com/settings/data-request)
	- export data as json
- prereqs::
	- git
	- npm
- setup::
	1. clone or download this repo
	2. switch to this branch: `git checkout embedded-postgres`
	2. in `expanse/backend`, make a copy of `.env_example` and name it `.env_prod`
	3. read the comments and edit the values in `.env_prod`
	4. run `build.cmd` (despite the file extention, no windows specific commands are used, so you can `sh build.cmd`)
	5. go to http://localhost:1301
- updating::
	1. cd into repo
	2. update: `git pull`
- automatic startup via systemd::
	1. cd into repo
	2. update expanse path in service file: `sed -i s./opt/expanse.$PWD.g expanse.service`
	3. enable and start expanse: `systemctl enable $PWD/expanse.service --now`
- [hosted version](https://github.com/jc9108/eternity)

<hr/>

- upstream sponsors::
	- [jlynnes](https://github.com/jlynnes)
	- [rickcecil](https://github.com/rickcecil)
