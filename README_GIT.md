O git é uma ferramenta que foi desenvolvida para permitir o trabalho contínuo por mais de um desenvolvedor ao mesmo tempo. Ele trabalha com o versionamento do código, sendo possível citar a analogia de que cada branch ou commit seria semelhante a uma foto, um momento congelado na história do código o qual é possível recuperar ou iniciar algo a partir daquele momento.

Alguns comandos importantes do git:

-status - informa se existe divergência entre o código atual da sua máquina com o código do último commit que você se encontra
-fetch - busca no repositório se existe novos commits na branch atual
-pull - busca no repositório os novos commits da branch atual
-push - envia as alterações para o repositório
-commit - mensagem relacionada a alteração do código
-checkout - troca a branch atual ou remove a alteração do código
-stash - guarda a alteração no código em repositório escondido que não será acessado caso você não reaplique a alteração
-branch - comando relacionado a criar e listar novas branches
-log - lista o log de alterações locais do código

/---------------------------------------------------------------------------------------/

Como iremos trabalhar seguindo o processo de desenvolvimento do git flow, iremos seguir um padrão pré-definido de desenvolvimento para evitar divergência de commit.

Para usar o gitflow, é necessário instalar ele e iniciar ele no repositório. Caso esteja usando uma distro relacionada ao ubuntu, os commandos seriam:

apt-get install git-flow
git flow init

Obs: aperte apenas enter durante a configuração do git flow init, o padrão dele é criar tipos com nomes padrões, que não precisamos nos preocupar com alterar.

Uma vez iniciado, para começar a trabalhar em uma funcionalidade (vale lembrar que deve ser iniciado da develop - git checkout develop), dê o comando:

git flow [nome do tipo] start [nome do que será trabalhado]

Os tipos padrões são:

feature - nova implementação
bugfix - correção de uma implementação finalizada
release - criar uma branch para versão que será publicada
hotfix - uma correção emergencial que precisa entrar diretamente na master e na develop

support - funcionalidade extra desconsiderável

Por padrão, é recomendado utilizar apenas feature e bugfix caso seja inexperiente no gitflow.

Para finalizar uma alteração no git flow:

git checout develop
git pull develop
git flow [tipo] finish [nome da alteração]

Em alguns casos, merges com conflitos irão acontecer, nessas situações, será necessário remover o conflito para finalizar o merge.

Finalizado o fechamento da alteração, dê o comando:

git push 

Para que o repositório receba as alterações.
