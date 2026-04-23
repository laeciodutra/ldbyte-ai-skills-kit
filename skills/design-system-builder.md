# 🏗️ Design System Builder

## Nome
`design-system-builder`

## Quando Usar
- Ao iniciar um projeto que precisa de identidade visual consistente
- Quando múltiplas telas/componentes estão visualmente inconsistentes
- Para criar base de tokens de design reutilizáveis

## Objetivo
Criar um design system completo com tokens de cor, tipografia, espaçamento, sombras, border-radius e componentes base.

## Papel da IA
Você é um **Design System Architect** que cria sistemas visuais coerentes, escaláveis e fáceis de manter.

## Checklist Antes de Modificar Código
- [ ] Identificar o stack e como CSS é gerenciado
- [ ] Verificar se já existem tokens/variáveis CSS
- [ ] Mapear cores, fontes e espaçamentos usados atualmente
- [ ] Identificar padrões visuais repetidos

## Checklist de Execução
- [ ] Definir CSS custom properties (variáveis) para cores
- [ ] Definir escala tipográfica (font-size, weight, line-height)
- [ ] Definir escala de espaçamento (4, 8, 12, 16, 24, 32, 48, 64)
- [ ] Definir sombras (sm, md, lg, xl)
- [ ] Definir border-radius (sm, md, lg, xl, full)
- [ ] Definir breakpoints responsivos
- [ ] Criar componentes base: Button, Card, Input, Badge, Modal
- [ ] Documentar tokens em arquivo acessível
- [ ] Implementar dark mode via variáveis CSS
- [ ] Validar acessibilidade de contraste nas combinações de cores

## Padrões Visuais Recomendados
```css
:root {
  /* Colors */
  --color-primary: hsl(220, 90%, 56%);
  --color-secondary: hsl(250, 80%, 60%);
  --color-accent: hsl(160, 84%, 44%);
  --color-bg: hsl(0, 0%, 99%);
  --color-surface: hsl(0, 0%, 100%);
  --color-text: hsl(222, 47%, 11%);
  --color-text-secondary: hsl(215, 20%, 65%);
  --color-border: hsl(220, 13%, 91%);
  --color-danger: hsl(0, 84%, 60%);
  --color-success: hsl(142, 76%, 36%);
  --color-warning: hsl(38, 92%, 50%);

  /* Typography */
  --font-sans: 'Inter', system-ui, sans-serif;
  --font-mono: 'JetBrains Mono', monospace;

  /* Spacing */
  --space-1: 4px; --space-2: 8px; --space-3: 12px;
  --space-4: 16px; --space-5: 24px; --space-6: 32px;
  --space-8: 48px; --space-10: 64px;

  /* Shadows */
  --shadow-sm: 0 1px 2px rgba(0,0,0,0.05);
  --shadow-md: 0 4px 6px -1px rgba(0,0,0,0.1);
  --shadow-lg: 0 10px 15px -3px rgba(0,0,0,0.1);

  /* Radius */
  --radius-sm: 4px; --radius-md: 8px;
  --radius-lg: 12px; --radius-xl: 16px;
  --radius-full: 9999px;
}

[data-theme="dark"] {
  --color-bg: hsl(222, 47%, 11%);
  --color-surface: hsl(222, 47%, 14%);
  --color-text: hsl(210, 40%, 98%);
  --color-text-secondary: hsl(215, 20%, 65%);
  --color-border: hsl(217, 33%, 22%);
}
```

## Regras de Segurança
- Não carregar fontes de CDNs não confiáveis
- Validar que CSP permite os estilos aplicados

## Regras para Não Quebrar o Projeto
- Migrar progressivamente — não trocar tudo de uma vez
- Manter classes CSS existentes funcionando
- Adicionar variáveis CSS como camada sobre estilos existentes

## Stack Compatível
- ✅ Qualquer projeto com CSS (puro, SCSS, Tailwind, Modules, Styled)

## Prompt Pronto para Usar
```
Crie um design system seguindo design-system-builder.
Defina tokens de cor, tipografia, espaçamento, sombras e radius.
Implemente como CSS custom properties.
Crie componentes base: Button, Card, Input, Badge.
```

## Resultado Esperado
- Arquivo de tokens CSS organizado
- Componentes base estilizados com tokens
- Dark mode funcional
- Documentação dos tokens

## Critérios de Qualidade
- [ ] Todas as cores definidas em HSL com variantes
- [ ] Escala tipográfica consistente
- [ ] Espaçamento usando escala fixa
- [ ] Dark mode funcional via variáveis

## Erros Proibidos
- ❌ Cores hardcoded fora dos tokens
- ❌ Valores mágicos de espaçamento (17px, 23px)
- ❌ Fontes sem fallback

## Como Validar Antes de Finalizar
1. Todas as cores geram contraste WCAG AA
2. Tokens são usados em todos os componentes base
3. Dark mode funciona corretamente
