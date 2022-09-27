# expanse

fully selfhosted multi-user web app for externally storing Reddit items (saved, created, upvoted, downvoted, hidden) to bypass Reddit's 1000-item listing limits

## features
- new items auto-sync
- synced items not affected by Reddit deletion
- search for items
- filter by subreddit
- unsave/delete/unvote/unhide items from Reddit directly on expanse
- import csv data from [Reddit data request](https://www.reddit.com/settings/data-request)
- export data as json
## features of this fork
- cross-platform: this fork runs anywhere node.js does, and the embedded database can be used on [many platforms](https://www.npmjs.com/search?q=%40embedded-postgres)
## docker usage
Docker images for this fork of expanse are availible on docker hub and ghcr.io at `sugoidogo/expanse`. The web ui is accessible at tcp port 1301 and a volume or bind mount for `/data` is required, with the `.env_prod` file in that directory. Download and edit [this file](backend/.env_example) to create your `.env_prod`.
## manual usage
### prereqs
- git
- npm
### setup
1. clone or download this repo
2. in `expanse/backend`, make a copy of `.env_example` and name it `.env_prod`
3. read the comments and edit the values in `.env_prod`
4. run `build.cmd` (despite the file extention, no windows specific commands are used, so you can `sh build.cmd`)
5. go to http://localhost:1301
### updating
1. cd into repo
2. update: `git pull`
### automatic startup via systemd
1. cd into repo
2. update expanse path in service file: `sed -i s./opt/expanse.$PWD.g expanse.service`
3. enable and start expanse: `systemctl enable $PWD/expanse.service --now`
## support
- For support with features of this fork, or features broken by this fork, open an issue or join the [discord](https://discord.gg/zxDnYSvMNw)
- For all other support questions, go [upstream](https://github.com/jc9108/expanse)
- [hosted version](https://github.com/jc9108/eternity)

## upstream sponsors
- [jlynnes](https://github.com/jlynnes)
- [rickcecil](https://github.com/rickcecil)
