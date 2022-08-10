FROM rockylinux:9

COPY hosts /etc/hosts
RUN sudo dnf update -y

RUN curl -sfL https://get.k3s.io | sh -

RUN sudo systemctl start k3s
RUN sudo systemctl enable k3s
RUN sudo systemctl status k3s

RUN k3s --version
RUN kubectl version
