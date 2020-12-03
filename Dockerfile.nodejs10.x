FROM scratch

ADD 20a1f4241346ab4182b188ca64e53785d520650419645320d53fc3359f22c9a0.tar.xz /
ADD 2d1a2cd33d6aaad44f694f2759433c03459db86163f0d0df408da0bb65943852.tar.xz /
ADD 3be3687deed179eba7f385d4082281965a923a8a24e26ae8914a954c22a8251b.tar.xz /
ADD 7b3290b14663d359669a661d36bb6c9fb93e630e8ae3710d8619a33636e13f25.tar.xz /
ADD 9f6034e9a629274aba07b153ff15700c9d2775b60d61becd3e220d15dd5c7c9b.tar.xz /
ADD d8e34f32314973174761079b74f20e52b6be6370bc13df4184615890f8773185.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

