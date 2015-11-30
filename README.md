# cato

[![Build Status](http://img.shields.io/travis/neonichu/cato.svg?style=flat)](https://travis-ci.org/neonichu/cato)

![](http://i.giphy.com/lB6TLJtWKiJDa.gif)

Cato makes it easy to run Swift scripts, by utilizing [chswift][1] to choose
the right Swift version and [Rome][2] to install missing dependencies.

If you don't know what Swift scripts even are, check out [Ayaka's talk][3].

## Installation

```
$ gem install cocoapods cocoapods-rome
$ brew tap neonichu/formulae
$ brew install cato
```

## Usage

Cato is supposed to be run via a script's [hash-bang][4] directive:

```swift
#!/usr/bin/env cato

import Chores

let result = >["xcodebuild", "-version"]
print(result.stdout)
```

Any frameworks that do not ship with the system will be installed into their own
private directory under `$HOME/.📦`, named after the script's basename. Note that
for performance reasons, the installation will only run the first time a script
is executed.

Optionally, you can specify the version of Swift required to run the script:

```bash
#!/usr/bin/env cato 1.2
```


[1]: https://github.com/neonichu/chswift
[2]: https://github.com/neonichu/Rome
[3]: https://speakerdeck.com/ayanonagon/swift-scripting
[4]: http://en.wikipedia.org/wiki/Shebang_(Unix)
