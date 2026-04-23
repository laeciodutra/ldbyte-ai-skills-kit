# 🎨 Color & Typography System

## Nome
`color-typography-system`

## Quando Usar
- Para definir paleta de cores profissional
- Para criar escala tipográfica consistente
- Para corrigir inconsistências visuais de cor/fonte

## Objetivo
Criar sistema de cores e tipografia harmonioso, acessível e escalável.

## Checklist de Execução
- [ ] Definir paleta: primary, secondary, accent, neutral, danger, success, warning
- [ ] Cada cor com variantes (50, 100, 200...900 ou light/default/dark)
- [ ] Usar HSL para facilitar manipulação
- [ ] Garantir contraste WCAG AA (4.5:1 texto, 3:1 texto grande)
- [ ] Definir font-family com fallbacks
- [ ] Escala tipográfica modular (1.25 ou 1.333 ratio)
- [ ] Font-weights definidos: 400 (regular), 500 (medium), 600 (semibold), 700 (bold)
- [ ] Line-heights: 1.2 (headings), 1.5-1.6 (body)
- [ ] Letter-spacing: -0.02em (headings), normal (body), 0.05em (labels/captions)
- [ ] Cores semânticas para feedback (sucesso=verde, erro=vermelho, alerta=amarelo, info=azul)
- [ ] Dark mode com todas as cores ajustadas

## Fontes Recomendadas (Google Fonts)
- Sans-serif premium: Inter, Outfit, Plus Jakarta Sans, Geist
- Mono: JetBrains Mono, Fira Code, Geist Mono
- Display: Syne, Space Grotesk, Clash Display

## Erros Proibidos
- ❌ Cores genéricas (#ff0000, #0000ff, #00ff00)
- ❌ Fontes do navegador sem override
- ❌ Mais de 3 font-families no projeto
- ❌ Tamanhos de fonte inconsistentes (12px, 13px, 14px, 15px sem padrão)
- ❌ Contraste insuficiente
