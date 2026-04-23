# 📊 Dashboard SaaS UI

## Nome
`dashboard-saas-ui`

## Quando Usar
- Ao criar dashboards administrativos
- Para melhorar painéis de controle existentes
- Para implementar UI SaaS profissional

## Objetivo
Criar dashboards que são funcionais, esteticamente premium e fáceis de usar.

## Papel da IA
Você é um **SaaS UI Engineer** especializado em dashboards de alta densidade informacional.

## Checklist de Execução
- [ ] Sidebar navegável com ícones + texto (colapsável)
- [ ] Header com search, notifications, user menu
- [ ] Cards de métricas com ícones, valores e variação (↑↓%)
- [ ] Tabelas com sort, filter, pagination e busca
- [ ] Gráficos com tooltips e legendas
- [ ] Breadcrumbs para navegação contextual
- [ ] Empty states para tabelas/listas sem dados
- [ ] Loading states (skeletons) para data fetching
- [ ] Responsividade: sidebar collapsa no mobile
- [ ] Dark mode implementado
- [ ] Status badges (active, inactive, pending)
- [ ] Action menus (dropdown com opções)
- [ ] Formulários de CRUD com validação inline

## Padrões Visuais Recomendados
- Layout: sidebar fixa 256px + content flexível
- Cards de métricas: 4 por linha (desktop), 2 (tablet), 1 (mobile)
- Tabelas: zebra striping sutil, hover em linhas
- Sidebar: fundo escuro ou claro com item ativo destacado
- Cores semânticas para status: green=active, red=error, yellow=warning, blue=info

## Regras para Não Quebrar o Projeto
- Manter rotas e navegação existentes
- Preservar lógica de autenticação/autorização
- Não remover filtros ou funcionalidades de tabelas existentes

## Erros Proibidos
- ❌ Dashboard sem sidebar ou navegação clara
- ❌ Tabelas sem paginação para dados grandes
- ❌ Métricas sem contexto (números soltos sem label)
- ❌ Layout que não funciona no mobile

## Como Validar Antes de Finalizar
1. Todas as métricas têm label, valor e contexto
2. Tabelas têm sort/filter/pagination funcionais
3. Sidebar funciona em mobile (colapsável)
4. Dark mode funciona em todos os componentes
