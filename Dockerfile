# Set the base image to Alpine
FROM alpine:3.9

# File Author / Maintainer
LABEL maintainer="Jona Koudijs"

# Set environment variables
ENV USER root
ENV HOME /root
ENV VERSION v1.16.3

################## BEGIN INSTALLATION ######################

# Install prerequisites and download Hadolint
RUN apk update \
 && apk add --no-cache curl git \
 && rm -rf /var/cache/apk/* \
 && curl -sL -o /usr/bin/hadolint "https://github.com/hadolint/hadolint/releases/download/${VERSION}/hadolint-$(uname -s)-$(uname -m)" \
 && chmod 755 /usr/bin/hadolint

##################### INSTALLATION END #####################

# Set default container command
CMD ["hadolint", "Dockerfile"]
