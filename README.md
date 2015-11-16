
# OrganiCity API Specification

## Specification Language

This project evaluates possible API specification formats for Organicity.

Currenty, these formats are evaluated:

* Swagger http://swagger.io.
* Apiary http://apiblueprint.org/
* RAML http://raml.org/
* WADL http://wadl.java.net/
* Readme.io http://readme.io/

For each format, this project contains a subfolder with a set of sample
specifications and their respective output.


## Classifications

### Internal/External

APIs may be internal or external. An external API can be consumed by
'anybody'. It may still require authentication and authorisation of
some sort, but is in principle open for anyone. An internal API in
contrast will be consumed by tools that are part of the official
OrganiCity platform, and is part of the OrganiCity toolchain's
internal communication.