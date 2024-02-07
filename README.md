<p align="center">
  <img src="https://github.com/eskema/alphaama/blob/v3/stuff/android-chrome-192x192.png?raw=true" alt="Project Logo" width="21%">
</p>

# alphaama for StartOS

[alphaama](https://github.com/eskema/alphaama) is just a nostr fucking client. This repository creates the s9pk package that is installed to run alphaama on StartOS.

## Dependencies

Install the system dependencies below to build this project by following the instructions in the provided links. You can also find detailed steps to setup your environment in the service packaging [documentation](https://github.com/Start9Labs/service-pipeline#development-environment).

- [docker](https://docs.docker.com/get-docker)
- [docker-buildx](https://docs.docker.com/buildx/working-with-buildx/)
- [yq](https://mikefarah.gitbook.io/yq)
- [deno](https://deno.land/)
- [make](https://www.gnu.org/software/make/)
- [start-sdk](https://github.com/Start9Labs/start-os/tree/master/backend)

## Cloning

Clone the alphaama package repository locally.

```
git clone https://github.com/hzrd149/alphaama-startos.git
cd alphaama-startos
```

## Building

To build the `alphaama` package for all platforms using start-sdk, run the following command:

```
make
```

To build the `alphaama` package for a single platform using start-sdk, run:

```
# for amd64
make x86
```
or
```
# for arm64
make arm
```

## Installing (on StartOS)

Run the following commands to determine successful install:
> :information_source: Change server-name.local to your Start9 server address

```
start-cli auth login
# Enter your StartOS password
start-cli --host https://server-name.local package install alphaama.s9pk
```

If you already have your `start-cli` config file setup with a default `host`, you can install simply by running:

```
make install
```

> **Tip:** You can also install the alphaama.s9pk using **Sideload Service** under the **System > Manage** section.

### Verify Install

Go to your StartOS Services page, select **alphaama**, configure and start the service. Then, verify its interfaces are accessible.

**Done!**
