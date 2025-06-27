# Gerenciamento de Discos Linux

* **Nível**: Intermediário
* **Duração**: 1 hora
* **Descrição**: Comandos `df`, `du`, `mount`, `umount`, `fdisk`, `lsblk`, gerenciamento de partições.
* **Status**: Iniciar agora

---

## 💽 Visão Geral

O gerenciamento de discos no Linux envolve a visualização do uso de espaço, montagem/desmontagem de dispositivos, e criação ou alteração de partições. Essas operações são fundamentais para manter o sistema organizado e funcional.

---

## 📊 Visualizando Espaço em Disco

### `df` — Mostra o uso de disco

```bash
df -h       # Mostra uso em formato legível (GB/MB)
df -Th      # Mostra tipo de sistema de arquivos
```

### `du` — Mostra uso de espaço por diretórios

```bash
du -sh *    # Mostra o tamanho de cada subdiretório
```

---

## 📌 Listagem e Identificação de Dispositivos

### `lsblk` — Lista dispositivos de bloco

```bash
lsblk       # Mostra discos, partições e pontos de montagem
```

### `fdisk` — Gerencia partições (modo interativo)

```bash
sudo fdisk /dev/sdX  # Substituir X pela letra do disco (ex: sda)
```

### `blkid` — Identifica UUIDs e tipos de partição

```bash
sudo blkid
```

---

## 🔗 Montagem e Desmontagem de Dispositivos

### `mount` — Monta uma partição

```bash
sudo mount /dev/sdX1 /mnt/ponto_montagem
```

### `umount` — Desmonta uma partição

```bash
sudo umount /mnt/ponto_montagem
```

### Montagem automática no boot (arquivo `/etc/fstab`)

Exemplo de entrada no `/etc/fstab`:

```
UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx  /mnt/dados  ext4  defaults  0  2
```

> ⚠️ Cuidado ao editar o `/etc/fstab`, erros podem impedir o sistema de iniciar corretamente.

---

## 🔧 Criando e Formatando Partições

### Criar partição com `fdisk` ou `parted`

* `n` para nova partição
* `w` para salvar

### Formatar partição com `mkfs`

```bash
sudo mkfs.ext4 /dev/sdX1
```

---

## 📌 Comandos Úteis Complementares

| Comando          | Função                                      |
| ---------------- | ------------------------------------------- |
| `mount`          | Exibe partições montadas                    |
| `lsblk -f`       | Mostra partições com sistema de arquivos    |
| `df -h /caminho` | Mostra uso de espaço de um ponto específico |

---

## 🚀 Conclusão

Com o domínio dos comandos de gerenciamento de discos, você será capaz de organizar melhor o armazenamento do seu sistema Linux, lidar com partições externas e resolver problemas de espaço em disco com mais segurança e eficiência.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**
