# weltongbi/siniusbot
[![Ci](https://github.com/weltongbi/docker-sinusbot/actions/workflows/main.yml/badge.svg)](https://github.com/weltongbi/docker-sinusbot/actions/workflows/main.yml)

This container provides a sinusbot instance and updated youtube-dl for yt-dlp.

## Table of Contents
- [weltongbi/siniusbot](#weltongbisiniusbot)
  - [Table of Contents](#table-of-contents)
  - [Version](#version)
  - [Download / Update](#download--update)
  - [Usage](#usage)
  - [Logging](#logging)
  - [Permissions](#permissions)
  - [Acknowledgments](#acknowledgments)
  - [License](#license)

## Version

- Sinusbot: lastet
- TeamSpeak: 3.5.3
- yt-dlp: lastet (is ok!)

## Download / Update
```sh
docker push weltongbi/sinusbot:lastet
```

## Usage
```sh
$ docker run -d -v /home/sinusbot/data:/sinusbot/data -p 8087:8087 --name sinusbot weltongbi/siniusbot:lastet
```

- ``` /home/sinusbot/data ``` is the directory on your local machine where your bot files will be stored
- ``` /sinusbot/data ``` is the directory on the docker machine.
> **Note:** Don't change `/sinusbot/data` on your docker machine. The source code is based on this directory.

## Logging
```sh
$ docker logs -f <name of container e.g. sinusbot>
```
Use it to get the password for the web interface and to see the logs.

## Permissions
The default **UID** and **GID** of the user in the container is _3000_.

## Acknowledgments
* [SinusBot](http://www.sinusbot.com/) by Michael Friese.
* [Welton.dev](https://welton.dev) by Welton Castro (Updated and maintained).

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
