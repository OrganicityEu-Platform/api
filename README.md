
# OrganiCity API Specification

## Specification Language

This project evaluates possible API specification formats for Organicity.

Currenty, these formats are evaluated:

* Swagger http://swagger.io/
* Apiary http://apiblueprint.org/
* RAML http://raml.org/
* WADL http://wadl.java.net/
* Readme.io http://readme.io/

For each format, this project contains a subfolder with a set of sample
specifications and their respective output.

### Comparison:

* http://www.mikestowe.com/2014/12/api-spec-comparison-tool.php (from RAML-backer)
* http://apievangelist.com/
* Basic look and feel of various specifications http://apievangelist.com/2014/03/08/hello-world-product-api-with-blueprint-raml-and-swagger/


Basic structure is rather similar; some languages have minor deficiencies wrt. support for various API constructs (e.g. swagger does not support varying return types).


#### Tooling Comparison

- Raml: Version 1.0 has about no documentation next to the spec; Version 0.8 is only sparsely documented.
- Swagger: Many different tools consuming Swagger specifications are available all throughout the internet, mostly found via google or github.
- API Blueprint: The site has a long list of available tools, more might be found elsewhere.


##### Tool Categories:

- Mocking / Test
- Documentation
- Stub Generators

## Classifications

### Internal/External

APIs may be internal or external. An external API can be consumed by
'anybody'. It may still require authentication and authorisation of
some sort, but is in principle open for anyone. An internal API in
contrast will be consumed by tools that are part of the official
OrganiCity platform, and is part of the OrganiCity toolchain's
internal communication.


