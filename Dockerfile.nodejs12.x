FROM scratch

ADD 2bf573617a7e7eca1ad7ce1a5476f30aaf2eab0ca43fce83fbb65985f9d0cc42.tar.xz /
ADD 2d1a2cd33d6aaad44f694f2759433c03459db86163f0d0df408da0bb65943852.tar.xz /
ADD 82c4a975bb97f09b80669b314dfc0a553a5e1545c62c2b39f4edb646f59be667.tar.xz /
ADD 92a886d37048941eb404cd76e0e3704ad52ea215a205bac399b9da0878d0c2d2.tar.xz /
ADD adefb90d91389400ace315f993da55faa3694e1c4570c85a25e4d52d58e5784f.tar.xz /
ADD dd68e54ee2db522ace6eb521546cdd4a296717693fa5850fd6d9ed8c3ff57c80.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

