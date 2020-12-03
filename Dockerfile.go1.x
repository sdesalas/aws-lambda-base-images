FROM scratch

ADD 14ab5c302bc1aeae42febe3c0ceffea8ebb6ce563de98f8fdbceabbfb34dc033.tar.xz /
ADD 20400d10242244f3c4633d5849aec3857a0f49ecd226183808e4a68a98a95deb.tar.xz /
ADD 2a1f162a090e38224b5f486bc334fcba053c8d3ea8fdfcb77bb10be4597f997b.tar.xz /
ADD 385605417a688a45fa86310bc2383a870bff21ec26158fedb55fbbd3e9020249.tar.xz /
ADD 99e24911d856518d65db83544257989c7a907a57ca1da92571493bd2f7c98873.tar.xz /
ADD b6516ddabe4e320cd4204b8be8e95a16e1153323c0fecc754adad1486770ea5e.tar.xz /
ADD f4570ce5905b9da3e5519a0f231c928203003bf4458623da1974c260e4f84279.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

