FROM mwaeckerlin/base

ENV WALLET_ADDRESS ""
ENV POOL_ADDRESS   ""
ENV POOL_PORT      ""
ENV TLS            ""

ENV USER           ""
ENV PASSWORD       ""
ENV RIGID          "RIGID"
ENV PORT           "8080"
ENV CURRENCY       "monero"

ENV CONTAINERNAME  "monero-mining"
USER somebody
WORKDIR /home/somebody
RUN wget https://github.com/fireice-uk/xmr-stak/releases/download/2.10.4/xmr-stak-linux-2.10.4-cpu.tar.xz \
 && tar xf xmr-stak-linux-2.10.4-cpu.tar.xz \
 && mv xmr-stak-linux-2.10.4-cpu/xmr-stak . \
 && rmdir xmr-stak-linux-2.10.4-cpu \
 && rm xmr-stak-linux-2.10.4-cpu.tar.xz
