# 🔄 Workflow: Transformar UI Feia em Premium

## Visão Geral
Este workflow transforma progressivamente uma interface genérica/datada em uma UI premium e profissional, sem quebrar funcionalidades.

## Pré-requisitos
- Skills disponíveis em `.ai-skills/skills/`
- Projeto com interface visual existente
- Acesso ao código-fonte

---

## Etapas

### Etapa 1: Inspecionar o Projeto
**Skill:** `full-project-review`
- [ ] Mapear toda a estrutura de arquivos
- [ ] Identificar todas as telas/páginas
- [ ] Listar tecnologias em uso
- [ ] Documentar estado atual

### Etapa 2: Detectar Stack
- [ ] Framework: React, Next.js, Vue, Laravel, PHP puro?
- [ ] CSS: Tailwind, Bootstrap, SCSS, CSS puro?
- [ ] Componentes: shadcn, MUI, Chakra, custom?
- [ ] Build: Vite, Webpack, Mix?
- [ ] **Escolher a skill de stack:** `react-next-ui-specialist` / `php-laravel-ui-specialist` / `tailwind-shadcn-specialist`

### Etapa 3: Mapear Telas Principais
- [ ] Listar todas as telas em ordem de importância
- [ ] Capturar/descrever o estado visual atual de cada uma
- [ ] Identificar fluxo do usuário principal

### Etapa 4: Identificar Problemas Visuais
**Skill:** `frontend-redesign-audit`
- [ ] Hierarquia visual confusa?
- [ ] Espaçamento inconsistente?
- [ ] Cores genéricas ou conflitantes?
- [ ] Tipografia fraca?
- [ ] Falta de estados (hover, loading, empty, error)?
- [ ] Responsividade quebrada?
- [ ] Dark mode ausente?
- [ ] Acessibilidade ruim?

### Etapa 5: Verificar Inconsistências de CSS
- [ ] Cores hardcoded repetidas
- [ ] Valores de espaçamento sem padrão
- [ ] Fonts declaradas de múltiplas formas
- [ ] Sombras inconsistentes
- [ ] Border-radius variando sem razão
- [ ] z-index descontrolado
- [ ] !important em excesso

### Etapa 6: Criar Plano de Melhoria
- [ ] Priorizar: fundação → componentes → polish
- [ ] Definir ordem de telas para melhorar
- [ ] Estimar impacto de cada mudança
- [ ] **Documentar plano antes de editar qualquer arquivo**

### Etapa 7: Definir Design Tokens
**Skill:** `design-system-builder` + `color-typography-system`
- [ ] Definir paleta de cores (HSL com variáveis CSS)
- [ ] Definir escala tipográfica
- [ ] Definir espaçamento (4, 8, 12, 16, 24, 32, 48, 64)
- [ ] Definir sombras, border-radius
- [ ] Implementar como CSS custom properties
- [ ] Configurar dark mode

### Etapa 8: Melhorar Componentes Base
**Skill:** `component-upgrade`
- [ ] Botões → aplicar `buttons-cta-specialist`
- [ ] Cards → sombra, borda, espaçamento
- [ ] Inputs → aplicar `forms-inputs-ux`
- [ ] Tables → zebra, hover, sort
- [ ] Badges → cores semânticas
- [ ] Modais → overlay, animação, focus trap

### Etapa 9: Melhorar Botões, Cards, Forms e Headers
**Skill:** `frontend-premium-ui`
- [ ] Aplicar design tokens aos componentes
- [ ] Garantir todos os estados visuais
- [ ] Adicionar transições hover (150-300ms)
- [ ] Implementar loading states (skeleton/shimmer)
- [ ] Implementar empty states
- [ ] Implementar error states

### Etapa 10: Melhorar Responsividade
**Skill:** `responsive-mobile-first`
- [ ] Testar em 320px, 768px, 1024px, 1440px
- [ ] Corrigir layouts quebrados
- [ ] Garantir touch targets ≥ 44px
- [ ] Menus mobile funcionais
- [ ] Tabelas scrolláveis no mobile

### Etapa 11: Adicionar Animações Leves
**Skill:** `motion-animation-specialist`
- [ ] Transições de hover em botões e cards
- [ ] Animação de entrada em seções (fade-in + slide-up)
- [ ] Skeleton loaders durante fetch
- [ ] Feedback visual em ações (submit, delete, save)
- [ ] Respeitar `prefers-reduced-motion`

### Etapa 12: Validar Acessibilidade
**Skill:** `accessibility-a11y-audit`
- [ ] Contraste WCAG AA em todos os textos
- [ ] Labels em todos os inputs
- [ ] Alt em todas as imagens
- [ ] Navegação por Tab funcional
- [ ] Foco visível em elementos interativos

### Etapa 13: Validar Performance
**Skill:** `performance-frontend-audit`
- [ ] Lighthouse score > 80 em todas as categorias
- [ ] LCP < 2.5s, CLS < 0.1
- [ ] Imagens otimizadas
- [ ] CSS/JS minificados em produção

### Etapa 14: Entregar Resumo Final
- [ ] Lista de todos os arquivos alterados
- [ ] Antes/depois de cada componente principal
- [ ] Métricas de melhoria (performance, acessibilidade)
- [ ] Próximos passos sugeridos
- [ ] Confirmação de que lógica de negócio foi preservada

---

## Tempo Estimado
- Projeto pequeno (1-3 telas): 1-2 sessões de IA
- Projeto médio (5-10 telas): 3-5 sessões
- Projeto grande (10+ telas): 5-10 sessões com foco em 2-3 telas por sessão

## Dica
Comece pela tela mais importante (geralmente login ou dashboard) e aplique o resultado como referência para as demais.
