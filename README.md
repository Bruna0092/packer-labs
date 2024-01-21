## Cenário
Criar uma imagem com com o sistema operacional atualizado a AWS.

![packer-lab1](https://github.com/Bruna0092/packer-labs/blob/main/packer-lab1.png)

## Instalação Packer

* Ubuntu
```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com jammy main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install packer
```
## Execução

```
mkdir packer-labs
cd packer-labs
touch [![ami-packerlab.pkr.hcl]](https://github.com/Bruna0092/packer-labs/blob/main/ami-packerlab.pkr.hcl)
packer init .
packer fmt .
packer validate .
```
```
packer build ami-packerlab.pkr.hcl
```
![packer-lab1](https://github.com/Bruna0092/packer-labs/blob/main/packer-lab2.png)

![packer-lab-aws](https://github.com/Bruna0092/packer-labs/blob/main/packer-lab-aws.png)

