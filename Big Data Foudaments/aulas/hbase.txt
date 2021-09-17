# Inicializar
$ sudo docker exec -it hbase-master bash
$ hbase shell
hbase(main):001:0> 

# Status d# HBase - numer# de servidores
$ hbase status

# Versã# d# HBase
$ hbase version

# Informações sobre # usuário
$  hbase whoami

# Criar tabela
$ create ‘nomeTabela’,{NAME=>’família’},{NAME=>’família’}

# Listar todas as tabelas
$ hbase> list

# Estrutura da tabela
$ describe ‘nomeTabela’

Deletar tabela (precisa desabilitar)
$ drop ‘nomeTabela’ ou drop_all ‘c.*’

Verificar se a tabela existe
$ hbase> exists ‘nomeTabela’

# Desabilitar tabela
$ hbase> disable ‘nomeTabela’
$ hbase> scan ‘nomeTabela’ (erro)
$ hbase> disable_all 'r.*'

# Verificar se uma tabela está desabilitada
$ hbase> is_disabled ‘nomeTabela’

# Habilitar tabela
$ hbase> enable ‘nomeTabela’

# Verificar se uma tabela está habilitada
$ hbase> is_enable ‘nomeTabela’

# Desabilitar e recriar tabela
$ hbase> truncate 'nomeTabela'

# Inserir dados
$ put ‘nomeTabela’,’chave’,’família:coluna’,’valor’

# Alterar dados
hbase> put 'clientes', 'emiranda', 'pedido:nitem', '1234A'

# Consultar valores pela chave
$ get ‘nomeTabela’,’chave’

# Consultar valores da chave pela família de coluna
$ get ‘nomeTabela’,’chave’,{COLUMNS=>[‘família’]}

# Consultar valores da chave pela coluna
$ get ‘nomeTabela’,’chave’, {columns=>[‘família:coluna’]}

# Consultar todas as linhas e colunas da tabela
$ scan ‘nomeTabela’

# Consultar todas as linhas da tabela pela família de coluna
$ scan ‘nomeTabela’,{COLUMNS=>[‘família’]}

# Consultar todas as linhas da tabela pela coluna
$ scan ‘nomeTabela’,{COLUMNS=>[‘família:coluna’]}


# Consultar todas as linhas da tabela pela versã# de uma coluna
$ scan ‘nomeTabela’,{COLUMNS=>[‘família:valor’]}

# Consultar todas as linhas da tabela pela chave
$ scan ‘nomeTabela’,{STARTROW=>'chave', COLUMNS=>[‘família:valor’]}

# Deletar Coluna
$ delete ‘nomeTabela’,’chave’,’família:coluna’

# Deletar Família de coluna
$ delete ‘nomeTabela’,’chave’,’família’

# Deletar uma chave
$ deleteall ‘nomeTabela’,’chave’

# Alterar a família de coluna da tabela
$ alter ‘nomeTabela’, {NAME=>’família’, VERSIONS=>Nº}

# Alterar a tabela para deletar a família de coluna
$ alter ‘nomeTabela’, ‘delete’=>’família’

# Contar # númer# de registros na tabela
$ count ‘nomeTabela’