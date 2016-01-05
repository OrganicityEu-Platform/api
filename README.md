# OrganiCity API Specification

This repository holds the OrganiCity API specification documents.

The raw API is specified as a set of [Swagger](http://swagger.io/)
files, which are YAML-formatted text documents. These reside in the
subfolder `raw/`.

The Swagger website supplies a
[overview](http://swagger.io/getting-started/), and a specification of
the [Swagger standard](http://swagger.io/specification/). To edit
these documents, you can use the [Swagger
editor](http://editor.swagger.io/).

Each OrganiCity API document roughly correlates to one component, tool
or service of the OrganiCity ecosystem. If you start work on
specifying a new component that has no API here yet, feel free to add
another document.


## Tools

### Documentation Generation

This repository contains tools to automatically generate a static HTML
page from the specification. These pages make up the official
OrganiCity API documentation, for now located at our Github page at
[http://organicityeu.github.io/api/](http://organicityeu.github.io/api/).

#### Building the documentation

To build the documentation in a local copy of this repository, you first
need to install the required tools:

```
npm install
```

The `npm` utility is provided by the Ubuntu package `npm`. For Windows
it can be installed with the [`node.js`
installer](https://nodejs.org/en/).

After you have installed the required tools via `npm`, you can create
the documentation files with the supplied `makefile` by calling:

```
make
```

This creates a set of HTML files in the subfolder `static/`, which
contain the finished HTML for your specifications.
