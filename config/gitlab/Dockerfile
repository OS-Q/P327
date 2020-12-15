# gitlab-ce as the base image

FROM gitlab/gitlab-ce:latest

MAINTAINER qitas <qitas@qitas.cn>


# run shell
ADD ./run.sh /run.sh
RUN chmod +x /run.sh


CMD ["/bin/bash","./run.sh"]

RUN echo "your docker-gitlab image is ready."
