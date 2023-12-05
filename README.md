# Estudos terraform

## O que é terraform?

Terraform é uma ferramenta de infraestrutura como código (IaC) que permite que você construa, altere e versione infraestrutura com segurança e eficiência. O Terraform pode gerenciar provedores de serviço existentes e populares, bem como soluções internas personalizadas.

## O que é IaC?

Infraestrutura como código (IaC) é o processo de gerenciamento e provisionamento de recursos de computação e seus respectivos componentes de configuração por meio de arquivos de definição de código, em vez de configuração manual. A IaC aplica os princípios de engenharia de software ao gerenciamento de infraestrutura.

## Instalação

Para instalar o terraform, basta acessar o site oficial e baixar o binário de acordo com o seu sistema operacional. Ou usando tfenv, que é um gerenciador de versões do terraform.

## Comandos básicos

```bash
terraform init # Inicializa o terraform
terraform plan # Mostra o que será criado
terraform apply # Aplica as alterações
terraform destroy # Destroi a infraestrutura
```

## Variables em HCL

Variable em HCL é uma variável que pode ser usada no terraform. Sendo que ela pode ser definida de duas formas:

```bash
variable "name" {
  type = string
  default = "value"
}
```

```bash
variable "name" {
  type = string
}
```

Sendo que ao colocar o nome da variável não pode ter esses nomes `source, version, providers, count, for_each, lifecycle, depends_on, local`. Pois são palavras reservadas do terraform.
O default e força a variável a ter um valor padrão, caso não seja passado nenhum valor para ela.

## Providers

Providers são os provedores de nuvem que o terraform suporta. Alguns exemplos são: AWS, Azure, GCP, Digital Ocean, etc.

## Resources

Resources são os recursos que o terraform pode criar. Alguns exemplos são: EC2, VPC, S3, etc.

## Variables

Variáveis são variáveis que podem ser usadas no terraform. Alguns exemplos são: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, etc.

## Outputs

Outputs são as saídas que o terraform pode mostrar. Alguns exemplos são: IP de uma instância, DNS de um load balancer, etc.

## Modules

Módulos são os módulos que o terraform pode usar. Alguns exemplos são: VPC, EC2, etc.

## Exemplo de uso

```bash
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

## Referências

- [Terraform](https://www.terraform.io/)
- [IaC](https://www.redhat.com/pt-br/topics/automation/what-is-infrastructure-as-code)
- [tfenv](https://github.com/tfutils/tfenv)
- [AWS](https://aws.amazon.com/pt/)
- [AWS_ACCESS_KEY_ID](https://docs.aws.amazon.com/pt_br/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys)
- [AWS_SECRET_ACCESS_KEY](https://docs.aws.amazon.com/pt_br/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys)

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Author

[![Linkedin Badge](https://img.shields.io/badge/-Walber%20Vaz-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/walber-vaz/)](https://www.linkedin.com/in/walber-vaz/)
