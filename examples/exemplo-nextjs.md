# Exemplo: Projeto Next.js

## Cenário
Projeto Next.js 14 com App Router, Tailwind CSS e shadcn/ui. Dashboard SaaS com login, dashboard de métricas e CRUD de usuários.

## Skills Aplicáveis
1. `react-next-ui-specialist` — Componentes Server/Client
2. `tailwind-shadcn-specialist` — Design tokens HSL
3. `dashboard-saas-ui` — Layout de dashboard
4. `forms-inputs-ux` — Formulários de CRUD

## Workflow Recomendado
`melhorar-saas-dashboard.md`

## Comandos

### Antigravity
```
Use a skill dashboard-saas-ui para melhorar o dashboard em app/dashboard/page.tsx.
Siga o padrão de design tokens HSL do tailwind-shadcn-specialist.
```

### Claude Code
```
Leia .ai-skills/skills/dashboard-saas-ui.md e .ai-skills/skills/tailwind-shadcn-specialist.md.
Aplique ao dashboard em app/dashboard/page.tsx.
Melhore cards de métricas, tabela de usuários e sidebar.
```

### Cursor
```
@.ai-skills/skills/dashboard-saas-ui.md — melhore o layout do dashboard com sidebar colapsável, cards de métricas premium e tabela com sort/filter.
```

## Resultado Esperado
- Sidebar com ícones + texto, colapsável no mobile
- Cards de métricas com ícone, valor, variação (↑↓%)
- Tabela com DataTable shadcn (sort, filter, pagination)
- Dark mode funcional
- Loading states com Skeleton
- Layout responsivo
