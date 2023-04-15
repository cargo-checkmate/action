FROM rust:1-bullseye

RUN apt-get update && apt-get install -y curl build-essential pkg-config libssl-dev
RUN HOME='/github/home' git config --global --add safe.directory /github/workspace
RUN rustup component add clippy rustfmt
RUN cargo install cargo-checkmate

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
