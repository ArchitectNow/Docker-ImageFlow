FROM imazen/imageflow_base_os as base

MAINTAINER Lilith River

RUN mkdir nightly && cd nightly && wget -nv -O ifs.tar.gz https://github.com/imazen/imageflow/releases/download/v1.1.0-rc18/imageflow-v1.1.0-rc18-d322657-ubuntu_18_04-x86_64.tar.gz \
    && tar xvzf ifs.tar.gz && mv ./imageflow_server ../ && cd .. && rm -rf nightly

EXPOSE 39876

ENTRYPOINT ["/home/imageflow/imageflow_server"]
CMD ["start", "--demo"]