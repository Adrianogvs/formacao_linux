# Gerenciamento de Pacotes Linux

* **Nível**: Intermediário
* **Duração**: 1 hora
* **Descrição**: Uso de gerenciadores de pacotes como `apt`, `yum`, `dnf`, `dpkg`, `rpm`.
* **Status**: Iniciar agora

---

## 📦 O que são pacotes?

Pacotes são arquivos compactados que contêm programas, bibliotecas e metadados para instalação e configuração de softwares em distribuições Linux.

* `.deb` → utilizado por distribuições baseadas em Debian/Ubuntu
* `.rpm` → utilizado por distribuições baseadas em Red Hat/CentOS/Fedora

---

## 🧰 Principais Gerenciadores de Pacotes

### 🔹 `apt` (Debian, Ubuntu e derivados)

```bash
sudo apt update             # Atualiza lista de pacotes
sudo apt upgrade            # Atualiza pacotes instalados
sudo apt install nome       # Instala um novo pacote
sudo apt remove nome        # Remove um pacote
sudo apt search nome        # Busca por um pacote
```

### 🔹 `dpkg` (baixo nível - .deb)

```bash
sudo dpkg -i pacote.deb     # Instala pacote .deb manualmente
sudo dpkg -r nome           # Remove pacote
sudo dpkg -l                # Lista pacotes instalados
```

### 🔹 `yum` (Red Hat, CentOS)

```bash
sudo yum update             # Atualiza pacotes
sudo yum install nome       # Instala pacote
sudo yum remove nome        # Remove pacote
```

### 🔹 `dnf` (Fedora, Red Hat mais recente)

```bash
sudo dnf update             # Atualiza pacotes
sudo dnf install nome       # Instala pacote
sudo dnf remove nome        # Remove pacote
```

---

## 📚 Consultando Informações de Pacotes

| Comando                           | Função                               |
| --------------------------------- | ------------------------------------ |
| `apt show nome`                   | Mostra detalhes de um pacote (`apt`) |
| `dpkg -s nome`                    | Verifica o status do pacote (`dpkg`) |
| `yum info nome` / `dnf info nome` | Detalhes do pacote (`yum/dnf`)       |

---

## 🌐 Adicionando Repositórios

Repositórios são fontes oficiais ou externas de onde os pacotes são baixados:

```bash
sudo add-apt-repository ppa:nome/ppa   # Ubuntu
sudo dnf config-manager --add-repo URL # Fedora
```

---

## 🧪 Dicas Avançadas

* Use `apt-cache policy nome` para ver a versão disponível
* Utilize `snap` ou `flatpak` para aplicativos empacotados de forma universal
* Leia arquivos `.list` em `/etc/apt/sources.list.d/` para entender repositórios ativos

---

## 🚀 Conclusão

Gerenciar pacotes no Linux é essencial para manter o sistema atualizado, seguro e funcional. Com esses comandos, você estará apto a instalar, remover, buscar e inspecionar programas com mais confiança e controle.

---

🔜 No próximo módulo: **Gerenciando Usuários e Permissões no Linux**
