FROM odoo:15

USER root

COPY etc/requirements.txt .
RUN pip3 install -r requirements.txt

RUN apt-get update; \
    apt-get --no-install-recommends install libreoffice -y

USER odoo


