## Cenário
![packer-lab1](https://github.com/Bruna0092/packer-labs/blob/main/packer-lab1.jpg)
![packer-lab2](https://github.com/Bruna0092/packer-labs/blob/main/packer-lab2.jpg)

## Instalação Packer

* Ubuntu
```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com jammy main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install packer
```

