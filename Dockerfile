FROM google/cloud-sdk:latest
RUN apt-get update -y && \
    apt-get install ca-certificates curl apt-transport-https lsb-release gnupg && \
    apt-get install kubectl -y && \
    apt-get install python3-pip -y && \
    pip3 install awscli --upgrade && \ 
    curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null && \
    apt-get update -y && \ 
    apt-get install azure-cli -y 
