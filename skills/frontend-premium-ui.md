# 🎨 Frontend Premium UI

## Nome
`frontend-premium-ui`

## Quando Usar
- Ao criar uma nova interface do zero
- Ao melhorar uma interface existente que está genérica ou datada
- Quando o cliente exige visual premium e profissional
- Ao aplicar padrões de UI modernos a qualquer projeto

## Objetivo
Transformar qualquer interface em uma UI premium, limpa, moderna e profissional — sem depender de templates prontos. A IA deve produzir código que impressiona visualmente e funciona corretamente em todos os dispositivos.

## Papel da IA
Você é um **Senior UI/UX Engineer** especializado em interfaces premium. Você domina design systems, hierarquia visual, espaçamento, tipografia, cores e animações. Você nunca entrega visual genérico. Cada elemento que você toca deve parecer feito por um designer profissional.

---

## Checklist Antes de Modificar Código

- [ ] Identificar o stack do projeto (React, Next.js, Laravel, PHP, etc.)
- [ ] Mapear os arquivos de estilo existentes (CSS, SCSS, Tailwind config, etc.)
- [ ] Verificar se existe um design system ou tokens de design
- [ ] Listar os componentes visuais presentes na tela
- [ ] Identificar a paleta de cores atual
- [ ] Verificar fontes/tipografia em uso
- [ ] Testar responsividade atual (mobile, tablet, desktop)
- [ ] Verificar se há dark mode implementado
- [ ] Identificar dependências de UI (Bootstrap, Material, Tailwind, etc.)
- [ ] Nunca remover lógica de negócio ou funcionalidades existentes

---

## Checklist de Execução

### 1. Fundação Visual
- [ ] Definir/ajustar design tokens (cores, espaçamentos, bordas, sombras)
- [ ] Configurar tipografia (font-family, font-sizes, line-heights, font-weights)
- [ ] Estabelecer paleta de cores com variantes (primary, secondary, accent, neutral, danger, success, warning)
- [ ] Definir escala de espaçamento consistente (4px, 8px, 12px, 16px, 24px, 32px, 48px, 64px)

### 2. Layout
- [ ] Implementar grid system responsivo
- [ ] Definir containers com max-width adequados
- [ ] Aplicar espaçamento generoso entre seções
- [ ] Garantir hierarquia visual clara (O que é mais importante aparece primeiro e maior)

### 3. Componentes Base
- [ ] **Botões**: primary, secondary, ghost, outline — com estados hover, active, disabled, loading
- [ ] **Cards**: sombra suave (`0 1px 3px rgba(0,0,0,0.1)`), borda sutil, border-radius 8-12px
- [ ] **Inputs**: borda clara, foco visível com ring, placeholder sutil, estados de erro
- [ ] **Tables**: headers com fundo sutil, linhas alternadas, hover em linhas
- [ ] **Badges/Tags**: cores semânticas, border-radius arredondado
- [ ] **Modais**: overlay escuro, animação de entrada, foco trap

### 4. Polish
- [ ] Adicionar transições suaves em hover (150-300ms ease)
- [ ] Implementar loading states (skeleton, spinner, shimmer)
- [ ] Implementar empty states com ilustração/ícone e CTA
- [ ] Implementar error states com mensagem clara e ação de recuperação
- [ ] Adicionar feedback visual para ações (toast, alert, snackbar)

---

## Padrões Visuais Recomendados

### Cores
```
Primary:     hsl(220, 90%, 56%)     → Azul profissional
Secondary:   hsl(250, 80%, 60%)     → Roxo elegante
Accent:      hsl(160, 84%, 44%)     → Verde vibrante
Background:  hsl(0, 0%, 99%)        → Branco suave (light)
             hsl(222, 47%, 11%)     → Slate escuro (dark)
Surface:     hsl(0, 0%, 100%)       → Cards (light)
             hsl(222, 47%, 14%)     → Cards (dark)
Text:        hsl(222, 47%, 11%)     → Primário
             hsl(215, 20%, 65%)     → Secundário
Border:      hsl(220, 13%, 91%)     → Sutil
Danger:      hsl(0, 84%, 60%)
Success:     hsl(142, 76%, 36%)
Warning:     hsl(38, 92%, 50%)
```

### Tipografia
```
Headings:    Inter, 'Segoe UI', system-ui, sans-serif
Body:        Inter, 'Segoe UI', system-ui, sans-serif
Mono:        'JetBrains Mono', 'Fira Code', monospace

H1: 2.25rem (36px) / 700 / 1.2
H2: 1.875rem (30px) / 600 / 1.3
H3: 1.5rem (24px) / 600 / 1.4
H4: 1.25rem (20px) / 500 / 1.4
Body: 1rem (16px) / 400 / 1.6
Small: 0.875rem (14px) / 400 / 1.5
Caption: 0.75rem (12px) / 500 / 1.4
```

### Sombras
```
sm:  0 1px 2px rgba(0, 0, 0, 0.05)
md:  0 4px 6px -1px rgba(0, 0, 0, 0.1)
lg:  0 10px 15px -3px rgba(0, 0, 0, 0.1)
xl:  0 20px 25px -5px rgba(0, 0, 0, 0.1)
glow: 0 0 20px rgba(59, 130, 246, 0.15)
```

### Border Radius
```
sm:   4px   → Badges, tags
md:   8px   → Botões, inputs
lg:   12px  → Cards, modais
xl:   16px  → Containers, sections
full: 9999px → Avatars, pills
```

### Animações
```css
/* Transições padrão */
transition: all 150ms ease;          /* Hover rápido */
transition: all 200ms ease-in-out;   /* Mudanças gerais */
transition: all 300ms cubic-bezier(0.4, 0, 0.2, 1); /* Entrada */

/* Keyframes recomendados */
@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }
@keyframes slideUp { from { transform: translateY(10px); opacity: 0; } to { transform: translateY(0); opacity: 1; } }
@keyframes shimmer { from { background-position: -200% 0; } to { background-position: 200% 0; } }
```

---

## Regras de Segurança
- Nunca inserir scripts inline não sanitizados
- Nunca usar `innerHTML` com dados do usuário
- Sempre sanitizar conteúdo dinâmico antes de renderizar
- Manter CSP headers compatíveis com os estilos aplicados
- Não carregar fontes/assets de CDNs não confiáveis

## Regras para Não Quebrar o Projeto
- Preservar toda lógica de negócio existente
- Não remover event handlers ou bindings funcionais
- Não trocar o stack de CSS sem permissão (ex: não trocar Bootstrap por Tailwind)
- Manter compatibilidade com browsers alvo do projeto
- Testar responsividade após cada mudança
- Preservar nomes de classes/IDs usados por JavaScript
- Não alterar a estrutura de rotas

## Stack Compatível
- ✅ React / Next.js (JSX, TSX)
- ✅ Vue.js (SFC, templates)
- ✅ Laravel / Blade (HTML com diretivas PHP)
- ✅ PHP puro (HTML/CSS/JS)
- ✅ HTML estático
- ✅ Tailwind CSS
- ✅ shadcn/ui
- ✅ CSS Modules / SCSS / Styled Components
- ✅ Bootstrap (melhoria progressiva)

---

## Prompt Pronto para Usar

```
Você é um Senior UI/UX Engineer especializado em interfaces premium.

Leia a skill frontend-premium-ui em .ai-skills/skills/frontend-premium-ui.md.

Antes de editar qualquer arquivo:
1. Identifique o stack do projeto
2. Mapeie os componentes visuais existentes
3. Identifique problemas de hierarquia, espaçamento, cores e tipografia

Depois aplique melhorias seguindo este padrão:
- UI limpa, moderna e profissional
- Hierarquia visual forte
- Espaçamento generoso
- Botões com estados (hover, active, disabled, loading)
- Cards com sombra suave e borda sutil
- Tipografia bem definida
- Paleta de cores consistente
- Dark mode quando possível
- Layout responsivo mobile-first
- Microinterações elegantes
- Acessibilidade real (contraste, foco visível, aria-labels)
- Loading states, empty states, error states

Faça mudanças pequenas e seguras. Nunca remova lógica de negócio.
```

---

## Resultado Esperado
- Interface visualmente premium e profissional
- Hierarquia visual clara — o olho sabe para onde ir
- Espaçamento consistente e generoso
- Cores harmoniosas e com bom contraste
- Tipografia bem definida com escala consistente
- Componentes com todos os estados visuais
- Responsividade real (não apenas "não quebra")
- Microinterações que melhoram a experiência
- Código CSS organizado e sem duplicação desnecessária

## Critérios de Qualidade
- [ ] Contraste WCAG AA em todos os textos (4.5:1 mínimo)
- [ ] Todos os botões têm hover, active, disabled e loading
- [ ] Cards têm sombra, borda e espaçamento interno adequados
- [ ] Tipografia segue escala consistente
- [ ] Paleta de cores tem no máximo 5-7 cores base com variantes
- [ ] Layout funciona em 320px, 768px e 1440px+
- [ ] Transições são suaves (não abruptas, não lentas)
- [ ] Empty states e error states estão presentes
- [ ] Código CSS é organizado e não tem !important desnecessários

## Erros Proibidos
- ❌ Cores genéricas (vermelho puro `#ff0000`, azul puro `#0000ff`)
- ❌ Fontes padrão do navegador sem override
- ❌ Espaçamento inconsistente (10px aqui, 17px ali, 23px acolá)
- ❌ Botões sem estado hover
- ❌ Cards sem sombra e sem borda
- ❌ Texto com contraste insuficiente
- ❌ Layout que quebra no mobile
- ❌ Animações exageradas ou lentas (>500ms)
- ❌ z-index wars (999, 9999, 99999)
- ❌ !important em cascata
- ❌ Remover lógica de negócio durante melhoria visual

## Como Validar Antes de Finalizar
1. Abrir em viewport 320px (mobile) — layout não pode quebrar
2. Abrir em viewport 768px (tablet) — layout deve se adaptar
3. Abrir em viewport 1440px (desktop) — layout deve aproveitar o espaço
4. Verificar contraste de cores com ferramenta (WebAIM, Lighthouse)
5. Navegar com Tab — foco deve ser visível em todos os elementos interativos
6. Testar todos os estados dos botões
7. Verificar que animações não causam jank (60fps)
8. Confirmar que lógica de negócio não foi alterada
