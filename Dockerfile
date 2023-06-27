FROM iad.ocir.io/servicehealth/docker-python:ol8-slim-3.9.7
LABEL maintainer="Jaya Prakash SK"
ENV SRC /home/local/apps/
ENV PYTHONPATH /home/local/apps/
ENV PYTHONHTTPSVERIFY 0
RUN mkdir -p /home/local/apps/
COPY hello_world.py /home/local/apps/
COPY requirements.txt /home/local/apps/
WORKDIR /home/local/apps/
RUN set -x \
    && microdnf -y --nodocs install cronie crontabs curl \
    && pip3 install -r requirements.txt \
    && microdnf clean all \
    && rm -rf /var/cache/yum
RUN chmod -R 755 /home/local/apps/
ENTRYPOINT ["python", "hello_world.py"]