FROM rockylinux:9

COPY hosts /etc/hosts
RUN dnf update -y

RUN curl -sfL https://get.k3s.io | sh -

RUN systemctl start k3s
RUN systemctl enable k3s
RUN systemctl status k3s

RUN k3s --version
RUN kubectl version
