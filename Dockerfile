FROM google/cloud-sdk:latest
RUN apt-get update -y && \
    apt-get install ca-certificates curl apt-transport-https lsb-release gnupg -y && \
    apt-get install kubectl -y && \
    apt-get install python3-pip -y && \
    pip3 install awscli --upgrade  
RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null && \
    AZ_REPO=$(lsb_release -cs) && echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | sudo tee /etc/apt/sources.list.d/azure-cli.listapt-get update -y && \ 
    apt-get install azure-cli -y 
