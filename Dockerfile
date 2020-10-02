FROM google/cloud-sdk
RUN apt update
RUN apt install -y vim
RUN apt install -y sshuttle
COPY .ssh/id_rsa /root/.ssh/id_rsa
COPY .ssh/config /root/.ssh/config
COPY launch_sshuttle.sh /root/launch_sshuttle.sh
COPY use_cluster_from_project.sh /root/use_cluster_from_project.sh
COPY get_logs_from_pod.sh /root/get_logs_from_pod.sh
COPY ssh_pod.sh /root/ssh_pod.sh
COPY routes.txt /root/routes.txt
