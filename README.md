# RMQTT

<iframe src="https://snapcraft.io/rmqtt/embedded?button=black" frameborder="0" width="100%" height="380px" style="border: 1px solid #CCC; border-radius: 2px;"></iframe>

A compact rust CLI tool for publishing and subscribing to MQTT messages. The binary supports both the v5 and v3.1 versions
of the MQTT protocol.

## Setup

### Installation

Make sure you have cargo/rustc installed. If not, follow the instructions[here] to install the latest version.
 To install with cargo, run `cargo install rmqtt --git=github.com/kevinlutzer/rmqtt`. You can also install the
 application via the [snap](https://snapcraft.io/rmqtt) with `sudo snap install rmqtt  .

### Configure

Create a `.rmqttconfig` file in your home directory or in `$SNAP_DATA_COMMON` if you have
 installed the snap with the following contents:

``` bash
HOST=<ip or dns name>
PORT=<port>
```

Additional the CLI tool can be run without the config file, but the arguments `--host`, and `--port` must be passed.

## Examples

Here are some examples of using the tool to get you started

``` bash
rmqt --port 1883 --topic=hello/world pub "hello world!" # Publish message to the "hello/world" topic
rmqt --topic=hello/world sub # Listen to messages on the "hello/world" topic.
```

### Building

To build the application, simply run:

``` bash
cargo build
```

## Building the Snap

Run `snapcraft` in the root project directory