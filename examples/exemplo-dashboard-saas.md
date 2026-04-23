# Exemplo: Dashboard SaaS

## Cenário
Dashboard administrativo com métricas, tabelas, gráficos e CRUD. Qualquer stack.

## Skills Aplicáveis
1. `dashboard-saas-ui` — Layout e componentes de dashboard
2. `design-system-builder` — Tokens de design
3. `forms-inputs-ux` — Formulários CRUD
4. `buttons-cta-specialist` — Botões com estados

## Workflow Recomendado
`melhorar-saas-dashboard.md`

## Estrutura Esperada
```
┌─────────────────────────────────────────────┐
│ Header (search, notifications, user menu)   │
├──────┬──────────────────────────────────────┤
│      │ Breadcrumb                           │
│      │ Page Title                           │
│ Side │ ┌────┐ ┌────┐ ┌────┐ ┌────┐        │
│ bar  │ │Metr│ │Metr│ │Metr│ │Metr│        │
│      │ │ica │ │ica │ │ica │ │ica │        │
│      │ └────┘ └────┘ └────┘ └────┘        │
│      │ ┌──────────────────────────┐        │
│      │ │ Tabela com sort/filter   │        │
│      │ │ pagination               │        │
│      │ └──────────────────────────┘        │
└──────┴──────────────────────────────────────┘
```

## Resultado Esperado
- Sidebar: 256px, colapsável, ícones + labels
- Cards de métricas: 4 por linha (desktop), 2 (tablet), 1 (mobile)
- Tabela profissional com empty state
- Dark mode completo
- Loading states (skeleton)
