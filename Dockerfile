From: alpine:latest

RUN	apk update \
	&& apk upgrade \
	&& apk add nodejs npm \
	&& npm --version \
	&& node --version && \
export NPM_CONFIG_PREFIX=/opt/joplin \
	&& mkdir -p /opt/joplin \
	&& npm config set loglevel warn \
	&& npm install -g joplin
