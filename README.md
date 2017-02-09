[![Build Status](https://travis-ci.org/GeoffWilliams/aix_no.svg?branch=master)](https://travis-ci.org/GeoffWilliams/aix_no)
# aix_no

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description
Manage /etc/tunables/nextboot on AIX using the `no` command and puppet.

## Usage

```puppet
aix_no { "NAME_OF_TUNABLE_PARAMETER":
  value => "VALUE_TO_SET_TO",
}
```

### Example
```puppet
aix_no { "tcp_mssdflt":
  value => "1460",
}
```
In this case, we have set the `tcp_mssdflt` parameter to be `1460`.

## Reference

### Defined types
* `aix_no` - Manage individual tunable parameters using the `no` command.

## Limitations

* AIX only
* Not supported by Puppet, Inc.

## Development

PRs accepted :)

## Testing
This module supports testing using [PDQTest](https://github.com/GeoffWilliams/pdqtest).


Test can be executed with:

```
bundle install
bundle exec pdqtest all
```


See `.travis.yml` for a working CI example
