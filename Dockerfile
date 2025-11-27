ARG BASE_IMAGE
FROM ${BASE_IMAGE}

ARG RUNNER_ARCH
RUN curl -sSL https://github.com/loong64/static-clang-build/raw/refs/heads/main/manylinux-install-static-clang.sh | bash && \
    rm -rf /tmp/static-clang-linux-*

ENV CC="/opt/clang/bin/clang"
ENV CXX="/opt/clang/bin/clang++"
ENV LDFLAGS="-fuse-ld=lld"
