#!/bin/bash --login

echo "=============================="
echo "Abrindo pasta qconcursos..."
cd ~/qcx/redacao

echo "=============================="
echo "Selecionando a gemset e a versão do Ruby.."
rvm ruby-2.1.5@redacao --create

echo "=============================="
echo "Mudando para branch master.."
git checkout master

echo "=============================="
echo "Atualizando branch master.."
git pull origin master

echo "=============================="
echo "Rodando o bundle do Rails"
bundle


echo "=============================="
echo "Criando o banco de dados"
rake db:create

echo "=============================="
echo "Rodando as migrations"
rake db:migrate

echo "=============================="
echo "Inicar servidor qconcursos"
rails s -p 3001
