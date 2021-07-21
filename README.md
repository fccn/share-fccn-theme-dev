# FCCN PicoCMS development environment 

This is the repository for the FCCN Share theme, based on PICO CMS

## Usage

### Docker
To use docker you have to install `docker` and `docker-compose`.

Run the dev server through:
```bash
docker-compose up -d --build
```
This builds the service and starts apache to render the site.

You can run commands via: `docker-compose run pico /bin/bash`.

Server should be available on [http://localhost/](http://localhost/).

```bash
cd themes
git clone https://github.com/picocms/pico-theme.git default
```

## Deploy

To deploy you only need the __themes__ folder.
The name of the theme should be configured in the `config.yml`

Clone the theme from github:
```bash
git clone https://github.com/fccn/share-fccn-theme.git fccn-share-theme
```

And then override the `config.yml` __theme__ name to be `fccn-share-theme`