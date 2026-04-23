# 📖 Guia de Uso — LDbyte AI Skills Kit

## Conceito

Cada **skill** é um documento `.md` que instrui a IA a agir como um especialista em uma área específica. Cada **workflow** é um processo passo-a-passo que combina múltiplas skills para resolver um problema complexo.

---

## Fluxo Geral

```
┌──────────────────────────────────────────────┐
│  1. Cole o master-prompt na IA               │
│  2. A IA detecta o stack do projeto          │
│  3. A IA escolhe a skill adequada            │
│  4. A IA segue o workflow correspondente     │
│  5. A IA audita antes de editar              │
│  6. A IA faz mudanças pequenas e seguras     │
│  7. A IA entrega resultado premium           │
└──────────────────────────────────────────────┘
```

---

## Cenários de Uso

### 🎨 "Quero melhorar a UI de um projeto existente"

1. Use o workflow: `transformar-ui-feia-em-premium.md`
2. Skill principal: `frontend-premium-ui.md`
3. Complementar com: `color-typography-system.md` + `buttons-cta-specialist.md`

**Prompt exemplo:**
```
Leia .ai-skills/workflows/transformar-ui-feia-em-premium.md e aplique ao projeto atual.
Foque primeiro na tela de login e depois no dashboard.
```

### 🔒 "Quero auditar a segurança antes de ir para produção"

1. Use o workflow: `revisar-seguranca.md`
2. Skill principal: `security-code-audit.md`

**Prompt exemplo:**
```
Siga .ai-skills/workflows/revisar-seguranca.md e faça uma auditoria completa.
Liste todos os riscos antes de propor qualquer correção.
```

### 🏗️ "Quero criar um design system para meu projeto"

1. Use o workflow: `criar-design-system.md`
2. Skill principal: `design-system-builder.md`
3. Complementar com: `color-typography-system.md` + `tailwind-shadcn-specialist.md`

### 📱 "Meu site não funciona bem no mobile"

1. Skill principal: `responsive-mobile-first.md`
2. Complementar com: `accessibility-a11y-audit.md`

### 🐛 "Preciso corrigir um bug sem quebrar nada"

1. Skill principal: `bugfix-without-breaking.md`
2. Workflow: `refatorar-sem-quebrar.md`

### 🏢 "Tenho um projeto PHP antigo e quero modernizar a UI"

1. Workflow: `converter-html-php-para-ui-moderna.md`
2. Skill principal: `php-laravel-ui-specialist.md`
3. Complementar com: `legacy-project-modernizer.md`

### 📊 "Quero um dashboard SaaS profissional"

1. Workflow: `melhorar-saas-dashboard.md`
2. Skill principal: `dashboard-saas-ui.md`

### 🚀 "Estou começando um projeto do zero"

1. Workflow: `iniciar-novo-projeto.md`
2. Skills: `design-system-builder.md` → `frontend-premium-ui.md` → `react-next-ui-specialist.md`

---

## Uso por Ferramenta

### Antigravity

```
# Referência direta
Use a skill frontend-premium-ui para melhorar o componente Card.

# Via workflow
Siga o workflow transformar-ui-feia-em-premium no projeto atual.
```

### Claude Code

```
# Leitura direta
Leia .ai-skills/skills/security-code-audit.md e aplique neste projeto.

# Master prompt
[Cole o conteúdo de prompts/prompt-para-claude-code.md]
```

### Cursor

```
# Referência por @
@.ai-skills/skills/dashboard-saas-ui.md — melhore o dashboard.

# Regra customizada
Adicione em .cursor/rules: "Siga as skills em .ai-skills/"
```

### Qwen CLI

```
# Contexto inicial
qwen-coder --system-prompt "$(cat .ai-skills/prompts/prompt-para-qwen-cli.md)"

# Na sessão
Aplique a skill responsive-mobile-first ao layout principal.
```

### Kimi CLI

```
# Na sessão
Leia .ai-skills/prompts/prompt-para-kimi-cli.md como suas instruções base.
Depois aplique o workflow melhorar-tela-existente.md na página de login.
```

---

## Combinação de Skills

As skills podem ser combinadas para resultados mais completos:

| Objetivo | Skills Combinadas |
|----------|-------------------|
| Redesign completo | `frontend-redesign-audit` → `frontend-premium-ui` → `responsive-mobile-first` |
| SaaS profissional | `dashboard-saas-ui` + `forms-inputs-ux` + `buttons-cta-specialist` |
| Segurança total | `security-code-audit` + `performance-frontend-audit` + `full-project-review` |
| Modernização | `legacy-project-modernizer` + `component-upgrade` + `design-system-builder` |
| Landing page | `landing-page-conversion` + `motion-animation-specialist` + `color-typography-system` |

---

## Boas Práticas

1. **Sempre audite antes de editar** — Use `auditar-projeto-antes-de-editar.md` primeiro
2. **Mudanças pequenas** — Não tente refazer tudo de uma vez
3. **Preserve a lógica de negócio** — A skill cuida do visual, não da regra de negócio
4. **Valide cada etapa** — Teste depois de cada mudança
5. **Use o master-prompt** — Ele garante que a IA siga o fluxo correto
