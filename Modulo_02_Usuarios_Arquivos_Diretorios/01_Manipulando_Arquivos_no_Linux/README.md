# Manipulando Arquivos no Linux

* **Nível**: Intermediário
* **Duração**: 3 horas
* **Descrição**: Comandos de manipulação de arquivos e diretórios: `ls`, `cd`, `cp`, `mv`, `rm`, `find`, `touch`, `mkdir`.
* **Status**: Concluído

---

## 📁 Visão Geral

Manipular arquivos e diretórios é uma das habilidades mais importantes no uso do terminal Linux. Abaixo estão os comandos essenciais para navegação e organização do sistema de arquivos.

---

## 🔎 Navegação com `ls` e `cd`

### `ls` — Lista arquivos e diretórios

```bash
ls              # Lista arquivos do diretório atual
ls -l           # Lista detalhada
ls -a           # Inclui arquivos ocultos
ls -lh          # Detalhada com tamanhos legíveis
```

### `cd` — Muda de diretório

```bash
cd /home        # Vai para /home
cd ~            # Vai para o diretório do usuário
cd ..           # Sobe um nível
cd -            # Retorna ao diretório anterior
```

---

## 🛠️ Manipulando Arquivos

### `touch` — Cria um novo arquivo vazio

```bash
touch arquivo.txt
```

### `cp` — Copia arquivos ou diretórios

```bash
cp origem.txt destino.txt          # Copia arquivo
cp -r pasta1/ pasta2/              # Copia diretório recursivamente
```

### `mv` — Move ou renomeia arquivos

```bash
mv arquivo.txt nova_pasta/         # Move para nova pasta
mv antigo.txt novo.txt             # Renomeia arquivo
```

### `rm` — Remove arquivos ou diretórios

```bash
rm arquivo.txt                     # Remove arquivo
rm -r pasta/                       # Remove pasta e conteúdo
rm -rf pasta/                      # Força remoção (cuidado!)
```

---

## 📂 Trabalhando com Diretórios

### `mkdir` — Cria diretórios

```bash
mkdir nova_pasta
mkdir -p pasta1/pasta2/pasta3      # Cria estrutura de diretórios
```

### `rmdir` — Remove diretórios vazios

```bash
rmdir pasta_vazia
```

---

## 🔍 Encontrando Arquivos

### `find` — Busca arquivos por nome, tipo ou data

```bash
find . -name "*.txt"                # Busca arquivos .txt no diretório atual
find /etc -type f -name "hosts"    # Busca arquivo 'hosts' em /etc
```

---

## 📌 Dicas Adicionais

* Use `tab` para autocompletar comandos e nomes de arquivos
* Use `*` como curinga para buscar múltiplos arquivos (ex: `*.log`)
* Combine comandos com pipes e redirecionamentos para automação

---

## 🚀 Conclusão

Dominar a manipulação de arquivos no terminal Linux é essencial para qualquer usuário intermediário. Pratique os comandos e tente aplicá-los em cenários reais para fixar o aprendizado.

---

🔜 No próximo módulo: **Gerenciando Usuários e Permissões no Linux**
