#!/bin/bash --login

echo "=============================="
echo "Selecionando a gemset e a versão do Ruby.."
rvm use ruby-1.9.3-p547@qconcursos

echo "=============================="
echo "Abrindo pasta qconcursos..."
cd ~/qcx/qconcursos

echo "=============================="
echo "Iniciando solr..."
/Library/Tomcat/bin/startup.sh

echo "=============================="
echo "Mudando para branch development.."
git checkout development

echo "=============================="
echo "Atualizando branch development.."
git pull origin development

echo "=============================="
echo "Rodando o bundle do Rails"
bundle

echo "=============================="
echo "Rodando as migrations"
rake db:migrate

echo "=============================="
echo "Inicar servidor qconcursos"
rails s

