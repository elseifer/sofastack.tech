#!/bin/bash
echo "Install dependencies"
./scripts/install-dependency.sh
./scripts/build-site.sh
echo -ne "mdspell "
mdspell --version
echo -ne "mdl "
mdl --version
htmlproofer --version
htmlproofer ./public --assume-extension --check-html --check-external-hash --check-opengraph --alt-ignore '/.*/' --timeframe 2d --storage-dir .htmlproofer --url-ignore "/localhost/,/groups.google.com/forum/,/metrics20.org/,/static.javadoc.io/,/dashboard.dev.sofastack.tech/,/127.0.0.1/,/zipkin-dev.sofastack.tech/,/codecov.io/,/tech.antfin.com/,/zhuanlan.zhihu.com/,/ruanyifeng.com/,/yq.aliyun.com/,/segmentfault.com/"
