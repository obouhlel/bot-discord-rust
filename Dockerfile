FROM rust:slim-bookworm

WORKDIR /usr/src/app

COPY . .

RUN cargo build
RUN useradd -ms /bin/bash bot
RUN chown -R bot:bot /usr/src/app

USER bot

CMD ["./target/debug/bot_meow"]