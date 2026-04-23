# 🎯 LDbyte AI Skills Kit

> **Kit pessoal de skills reutilizáveis para IA — Front-end premium, UI moderna, segurança, refatoração e automação.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/Skills-20+-blue.svg)](#skills)
[![Workflows](https://img.shields.io/badge/Workflows-9+-green.svg)](#workflows)
[![Stacks](https://img.shields.io/badge/Stacks-PHP%20%7C%20Laravel%20%7C%20React%20%7C%20Next.js%20%7C%20Node-purple.svg)](#compatibilidade)

---

## O que é

O **LDbyte AI Skills Kit** é um pacote de instruções estruturadas (skills) que transformam qualquer IA de código em um agente especializado em:

- 🎨 **UI/UX Premium** — Design moderno, microinterações, animações elegantes
- 🔒 **Segurança** — Auditoria completa de código e dependências
- 🔧 **Refatoração** — Melhoria progressiva sem quebrar funcionalidades
- 📱 **Responsividade** — Mobile-first, acessibilidade real
- ⚡ **Performance** — Otimização de front-end
- 🏗️ **Design Systems** — Tokens, paletas, tipografia, componentes

---

## Para quem serve

- Desenvolvedores que usam IA para codificar (Claude, Cursor, Qwen, Kimi, etc.)
- Freelancers que precisam entregar UI premium rapidamente
- Times que querem padronizar a qualidade visual dos projetos
- Quem trabalha com múltiplos stacks (PHP, Laravel, React, Next.js, Node)

---

## Stacks Compatíveis

| Stack | Suporte |
|-------|---------|
| Next.js (App Router / Pages Router) | ✅ Completo |
| React + Vite | ✅ Completo |
| Laravel + Blade | ✅ Completo |
| PHP Puro | ✅ Completo |
| Node.js + Express | ✅ Completo |
| TypeScript | ✅ Completo |
| Tailwind CSS | ✅ Completo |
| shadcn/ui | ✅ Completo |
| Projetos Legados (jQuery, Bootstrap, etc.) | ✅ Progressivo |

---

## Instalação Rápida

### Windows (PowerShell)
```powershell
.\scripts\install-skills.ps1 -Destino ..\meu-projeto
```

### Linux / macOS (Bash)
```bash
bash scripts/install-skills.sh ../meu-projeto
```

### Node.js (Multiplataforma)
```bash
node scripts/sync-skills.js ../meu-projeto
```

Isso copia as pastas `skills/`, `workflows/` e `prompts/` para dentro de `.ai-skills/` no projeto destino.

> 📖 **Guia completo:** veja [INSTALL.md](INSTALL.md) para detalhes.

---

## Como Usar

### 1. Com Antigravity (Gemini CLI)

As skills são automaticamente reconhecidas quando instaladas em `~/.gemini/antigravity/skills/`.

```bash
# Instalar globalmente para Antigravity
node scripts/sync-skills.js ~/.gemini/antigravity/skills/ldbyte-kit
```

Depois, na sessão:
```
Use a skill frontend-premium-ui para melhorar a interface do meu projeto.
```

### 2. Com Claude Code

Copie as skills para o projeto:
```bash
node scripts/sync-skills.js ./meu-projeto
```

Na sessão do Claude Code:
```
Leia o arquivo .ai-skills/skills/frontend-premium-ui.md e aplique as instruções neste projeto.
```

Ou cole o conteúdo de `prompts/prompt-para-claude-code.md` no início da conversa.

### 3. Com Cursor

```
@.ai-skills/skills/frontend-premium-ui.md — aplique esta skill ao componente Dashboard.
```

Ou configure as skills como contexto em `.cursor/skills/`.

### 4. Com Qwen CLI

```bash
qwen-coder --context .ai-skills/prompts/prompt-para-qwen-cli.md
```

Na sessão:
```
Siga as skills em .ai-skills/skills/ para melhorar este projeto.
```

### 5. Com Kimi CLI

```
Leia .ai-skills/prompts/prompt-para-kimi-cli.md e aplique ao projeto atual.
```

> 📖 **Guia completo:** veja [USAGE.md](USAGE.md) para todos os cenários.

---

## Skills Disponíveis {#skills}

### 🎨 Front-end & UI
| Skill | Arquivo | Descrição |
|-------|---------|-----------|
| Frontend Premium UI | `frontend-premium-ui.md` | UI limpa, moderna, premium — o padrão visual máximo |
| Frontend Redesign Audit | `frontend-redesign-audit.md` | Auditoria visual antes de redesenhar |
| Component Upgrade | `component-upgrade.md` | Melhorar componentes existentes |
| Design System Builder | `design-system-builder.md` | Criar design system do zero |
| Tailwind + shadcn/ui | `tailwind-shadcn-specialist.md` | Padrões avançados com Tailwind e shadcn |
| React/Next.js UI | `react-next-ui-specialist.md` | Componentes React/Next modernos |
| PHP/Laravel UI | `php-laravel-ui-specialist.md` | UI premium para Blade e PHP |
| Responsive Mobile-First | `responsive-mobile-first.md` | Layout responsivo de verdade |
| Acessibilidade (a11y) | `accessibility-a11y-audit.md` | Auditoria e correção de acessibilidade |
| Motion & Animation | `motion-animation-specialist.md` | Animações elegantes e performáticas |
| Dashboard SaaS UI | `dashboard-saas-ui.md` | Dashboards profissionais |
| Landing Page Conversion | `landing-page-conversion.md` | Landing pages que convertem |
| Forms & Inputs UX | `forms-inputs-ux.md` | Formulários com UX impecável |
| Buttons & CTA | `buttons-cta-specialist.md` | Botões premium com estados |
| Color & Typography | `color-typography-system.md` | Sistema de cores e tipografia |

### 🔒 Segurança & Qualidade
| Skill | Arquivo | Descrição |
|-------|---------|-----------|
| Security Code Audit | `security-code-audit.md` | Auditoria completa de segurança |
| Performance Audit | `performance-frontend-audit.md` | Performance do front-end |
| Legacy Modernizer | `legacy-project-modernizer.md` | Modernizar projetos antigos |
| Bugfix Without Breaking | `bugfix-without-breaking.md` | Corrigir sem quebrar |
| Full Project Review | `full-project-review.md` | Revisão completa do projeto |

---

## Workflows Disponíveis {#workflows}

| Workflow | Arquivo | Quando Usar |
|----------|---------|-------------|
| Iniciar Novo Projeto | `iniciar-novo-projeto.md` | Começando do zero |
| Melhorar Tela Existente | `melhorar-tela-existente.md` | Tela pronta mas feia |
| UI Feia → Premium | `transformar-ui-feia-em-premium.md` | Transformação visual completa |
| Auditar Antes de Editar | `auditar-projeto-antes-de-editar.md` | Entender antes de mexer |
| Refatorar sem Quebrar | `refatorar-sem-quebrar.md` | Refatoração segura |
| Revisar Segurança | `revisar-seguranca.md` | Auditoria de segurança |
| Criar Design System | `criar-design-system.md` | Design system do zero |
| HTML/PHP → UI Moderna | `converter-html-php-para-ui-moderna.md` | Migração visual |
| Melhorar SaaS Dashboard | `melhorar-saas-dashboard.md` | Dashboard mais profissional |

---

## Fluxo de Trabalho Recomendado

```
1. Copie as skills para o projeto
   └─ node scripts/sync-skills.js ./meu-projeto

2. Inicie a sessão na IA de sua preferência

3. Cole o master-prompt (prompts/master-prompt.md)

4. A IA vai:
   ├─ Detectar o stack do projeto
   ├─ Escolher a skill adequada
   ├─ Seguir o workflow correspondente
   ├─ Auditar antes de editar
   ├─ Fazer mudanças pequenas e seguras
   └─ Entregar resultado premium
```

---

## Referências de Inspiração

Este kit foi construído com inspiração (não cópia) de:

| Fonte | Tipo | URL |
|-------|------|-----|
| shadcn/ui | Componentes acessíveis | https://ui.shadcn.com |
| Magic UI | Efeitos premium e animações | https://magicui.design |
| Aceternity UI | Hero sections, cards, Framer Motion | https://ui.aceternity.com |
| ReactBits | Componentes interativos | https://reactbits.dev |
| NyxHora UI | Composição visual moderna | https://ui.nyxhora.com |
| Antigravity Awesome Skills | Estrutura de skills e workflows | https://github.com/sickn33/antigravity-awesome-skills |

---

## Estrutura do Repositório

```
ldbyte-ai-skills-kit/
├── README.md              ← Você está aqui
├── INSTALL.md             ← Guia de instalação
├── USAGE.md               ← Guia de uso detalhado
├── CHANGELOG.md           ← Histórico de mudanças
├── LICENSE                ← MIT License
├── skills/                ← 20 skills de IA
├── workflows/             ← 9 workflows de execução
├── prompts/               ← 6 prompts prontos por ferramenta
├── examples/              ← 5 exemplos práticos
├── scripts/               ← Scripts de instalação e sync
└── registry/              ← Metadados (JSON)
```

---

## Primeiro Comando

Após clonar o repositório:

```bash
# Copiar skills para seu projeto
node scripts/sync-skills.js ../meu-projeto

# Verificar
ls ../meu-projeto/.ai-skills/
```

---

## Licença

MIT License — use, modifique e distribua livremente.

---

**Criado por [LDbyte](https://github.com/laeciodutra)** — Skills para quem leva qualidade a sério.
