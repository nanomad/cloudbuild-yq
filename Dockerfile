FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine

ARG YQ_VERSION=v4.44.5
ENV YQ_VERSION=$YQ_VERSION

RUN wget https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64 && \
  mv yq_linux_amd64 /usr/bin/yq && \
  chmod +x /usr/bin/yq

ENTRYPOINT ["/usr/bin/yq"]