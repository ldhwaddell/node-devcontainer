ARG DEBIAN_VERSION
ARG NODE_VERSION

ARG USERNAME=node

FROM mcr.microsoft.com/devcontainers/javascript-node:${NODE_VERSION}-${DEBIAN_VERSION}

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
    && mkdir /commandhistory \
    && touch /commandhistory/.bash_history \
    && chown -R $USERNAME:$USERNAME /commandhistory \
    && echo "$SNIPPET" >> "/home/$USERNAME/.bashrc"


CMD [ "sleep", "infinity" ]
