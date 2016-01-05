# OrganiCity API Specification

The OrganiCity API is specified as a set of [Swagger](http://swagger.io/) documents.

## Install

Precondition: [npm](https://www.npmjs.com/) is installed.

To install all dependencies (including swagger), run

```
npm install
```

## Build

To build the API, run

```
make
```

Afterwards, you will find the builded HTML files in the folder `/static`.

## Write an API

The API is described in YAML notation. The raw YAML files are located in the folder `/raw`.

## Github Pages

The API is made public as github pages. The corresponsing repository can be found here:

https://github.com/OrganicityEu/OrganicityEu.github.io

To push the new API, run

```
make github-pages
```

This copies the content of the `/static` to the `/api` folder of the github pages repository and
does a push. The API can be found here:

https://organicityeu.github.io/api/
