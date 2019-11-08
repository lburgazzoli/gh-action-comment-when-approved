FROM alpine:3.10.3

LABEL "com.github.actions.name"="Comment approved pull requests"
LABEL "com.github.actions.description"="Auto-comment pull requests that have a specified number of approvals"
LABEL "com.github.actions.icon"="tag"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="http://github.com/lburgazzoli/gh-action-comment-when-approved"
LABEL homepage="ttp://github.com/lburgazzoli/gh-action-comment-when-approved"
LABEL maintainer="Luca Burgazzoli <lburgazzoli@gmail.com>"

RUN apk add --no-cache bash curl jq

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
