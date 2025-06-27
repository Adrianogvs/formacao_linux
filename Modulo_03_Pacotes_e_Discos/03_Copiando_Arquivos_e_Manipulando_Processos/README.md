# Copiando Arquivos e Manipulando Processos

* **Nível**: Intermediário
* **Duração**: 1 hora
* **Descrição**: Uso dos comandos `cp`, `rsync`, `top`, `ps`, `kill`, `nice`, `htop`.
* **Status**: Iniciar agora

---

## 📁 Cópia de Arquivos e Diretórios

### `cp` — Copiar arquivos e diretórios

```bash
cp arquivo.txt /destino/              # Copia arquivo
cp -r pasta1/ pasta2/                 # Copia diretório recursivamente
```

### `rsync` — Cópia sincronizada (eficiente)

```bash
rsync -avh origem/ destino/           # Sincroniza conteúdo com detalhes
rsync -avz /origem usuario@ip:/dest   # Envia via SSH
```

---

## ⚙️ Monitoramento de Processos

### `top` — Monitor interativo em tempo real

```bash
top
```

* Use `q` para sair, `k` para matar processo, `P` para ordenar por CPU

### `htop` — Interface colorida e mais amigável (requer instalação)

```bash
sudo apt install htop   # Debian/Ubuntu
htop
```

### `ps` — Lista processos em execução

```bash
ps aux                          # Lista todos os processos
ps -ef | grep nome_do_processo # Filtra por nome
```

---

## ❌ Finalizando Processos

### `kill` — Finaliza processo por PID

```bash
kill 1234
kill -9 1234    # Força finalização
```

### `pkill` — Finaliza por nome

```bash
pkill firefox
```

---

## 🧠 Gerenciando Prioridades de Processos

### `nice` — Inicia processo com prioridade ajustada

```bash
nice -n 10 comando
```

### `renice` — Altera prioridade de processo em execução

```bash
renice -n 5 -p 1234
```

> Valores de prioridade vão de -20 (alta) a 19 (baixa)

---

## 🚀 Conclusão

Com os comandos apresentados, você poderá copiar arquivos de maneira eficiente, monitorar o desempenho do sistema e gerenciar processos com segurança e precisão.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**
