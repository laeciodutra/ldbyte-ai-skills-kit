# 📦 Instalação — LDbyte AI Skills Kit

## Pré-requisitos

- **Node.js 18+** (para o script `sync-skills.js`)
- **Git** (para clonar o repositório)

---

## 1. Clonar o Repositório

```bash
git clone https://github.com/laeciodutra/ldbyte-ai-skills-kit.git
cd ldbyte-ai-skills-kit
```

---

## 2. Instalar em um Projeto

### Opção A: Script Node.js (Recomendado — Multiplataforma)

```bash
node scripts/sync-skills.js ../meu-projeto
```

Isso cria a pasta `.ai-skills/` no projeto destino com:
- `skills/` — Todas as skills
- `workflows/` — Todos os workflows
- `prompts/` — Todos os prompts

### Opção B: PowerShell (Windows)

```powershell
.\scripts\install-skills.ps1 -Destino "C:\projetos\meu-projeto"
```

### Opção C: Bash (Linux/macOS)

```bash
bash scripts/install-skills.sh ~/projetos/meu-projeto
```

### Opção D: Manual

```bash
mkdir -p ../meu-projeto/.ai-skills
cp -r skills/ ../meu-projeto/.ai-skills/skills/
cp -r workflows/ ../meu-projeto/.ai-skills/workflows/
cp -r prompts/ ../meu-projeto/.ai-skills/prompts/
```

---

## 3. Instalação Global por Ferramenta

### Antigravity (Gemini CLI)

```bash
node scripts/sync-skills.js ~/.gemini/antigravity/skills/ldbyte-kit
```

### Claude Code

```bash
# Instalar no projeto atual
node scripts/sync-skills.js .
```

Ou adicione manualmente ao `.claude/settings.json`:
```json
{
  "skillsPaths": [".ai-skills/skills"]
}
```

### Cursor

```bash
# Copiar para diretório de skills do Cursor
node scripts/sync-skills.js .cursor/skills/ldbyte-kit
```

Ou no `settings.json` do Cursor, adicione o caminho das skills como contexto.

### Qwen CLI / Kimi CLI

```bash
# Copiar para o projeto
node scripts/sync-skills.js .
# Use os prompts em .ai-skills/prompts/ como contexto inicial
```

---

## 4. Verificar Instalação

```bash
# Listar skills instaladas
ls .ai-skills/skills/

# Verificar estrutura
find .ai-skills -name "*.md" | head -20
```

No Windows:
```powershell
Get-ChildItem -Recurse .ai-skills -Filter "*.md" | Select-Object FullName
```

---

## 5. Atualizar Skills

Para atualizar as skills quando houver novas versões:

```bash
cd ldbyte-ai-skills-kit
git pull origin main
node scripts/sync-skills.js ../meu-projeto
```

O script de sync sobrescreve arquivos existentes, mantendo a versão mais recente.

---

## 6. Adicionar ao .gitignore (Opcional)

Se não quiser versionar as skills junto com o projeto:

```gitignore
# AI Skills (gerado via sync)
.ai-skills/
```

Se quiser versionar (recomendado para times):

```gitignore
# Manter .ai-skills/ no repositório
```

---

## Próximos Passos

1. Leia [USAGE.md](USAGE.md) para aprender a usar as skills
2. Cole o `prompts/master-prompt.md` na sua IA preferida
3. Comece com o workflow `auditar-projeto-antes-de-editar.md`
