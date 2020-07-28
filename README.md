# WowStack: Docker Container Images

This repository contains a build and development runtime for creating, compiling
and running code written in [C/C++ language][cpp-lang].

This provides a full [C++17][cpp-17] enabled build environment, and allows for
using [cmake][cmake] to define and run builds. For further details, read up on
[Modern C++][modern-cpp] as this image is tailored to support the modern C++
mindset.

The [development][docker-hub-devel] and [runtime][docker-hub-runtime] images are
automatically pushed to Docker Hub.

## What this image provides

This images is a Ubuntu 20.04 (Focal Fossa) based development environment for
projects requiring to build standards compliant C/C++ code using CMake based
build systems.

It includes:

- build tools such as `make` and `libtool`,
- [clang][clang],
- [clang format][clang-format],
- [clang Tidy][clang-tidy],
- [cmake][cmake],
- development headers and libraries
  - Boost
  - BZip2
  - Lua
  - MariaDB
  - OpenSSL
  - ZLib

## Building Locally

- development image: `docker build --tag wowstack/build-image:latest -f development/Dockerfile development/`
- runtime image: `docker build --tag wowstack/runtime-base-image:latest -f runtime/Dockerfile runtime/`

## Support

Meanwhile we are on [Discord][discord-url], so come chat with us.

Like our work and want to show appreciation? Give the repository a star, visit
our [Patreon][patreon-url] and become an supporter. :heart_eyes:

[![Become a patreon][patreon-image]][patreon-url]

[docker-hub-devel]: https://hub.docker.com/r/wowstack/build-image
[docker-hub-runtime]: https://hub.docker.com/r/wowstack/runtime-base-image

[clang-format]: http://clang.llvm.org/docs/ClangFormat.html
[clang-tidy]: http://clang.llvm.org/extra/clang-tidy/
[clang]: http://clang.llvm.org/
[cmake]: https://cmake.org/
[cpp-17]: https://en.wikipedia.org/wiki/C%2B%2B17
[cpp-lang]: http://en.cppreference.com/w/
[modern-cpp]: http://awesomecpp.com/ "Modern C++"

[patreon-image]: https://c5.patreon.com/external/logo/become_a_patron_button.png
[patreon-url]: https://www.patreon.com/bePatron?u=10897042
[discord-url]: https://discord.gg/TttsRMp
