# 📱 Responsive Mobile-First

## Nome
`responsive-mobile-first`

## Quando Usar
- Quando o layout quebra em dispositivos móveis
- Para implementar design responsivo de verdade
- Para melhorar a experiência em tablets e smartphones

## Objetivo
Garantir que a interface funcione perfeitamente em todos os tamanhos de tela, começando pelo mobile.

## Papel da IA
Você é um **Responsive Design Engineer** que pensa mobile-first e entrega layouts que se adaptam naturalmente.

## Checklist de Execução
- [ ] Definir breakpoints: 320px (mobile), 768px (tablet), 1024px (laptop), 1440px (desktop)
- [ ] Começar estilos pelo mobile, expandir com media queries
- [ ] Usar Flexbox/Grid para layouts flexíveis
- [ ] Testar todos os componentes em 320px
- [ ] Garantir touch targets de pelo menos 44x44px
- [ ] Esconder/mostrar elementos conforme viewport
- [ ] Tipografia responsiva (clamp ou media queries)
- [ ] Imagens responsivas (srcset, max-width: 100%)
- [ ] Menus mobile com hamburger funcional
- [ ] Formulários com inputs adequados para mobile (type=email, tel)

## Padrões Visuais Recomendados
```css
/* Mobile-first approach */
.container { padding: 16px; max-width: 100%; }
@media (min-width: 768px) { .container { padding: 24px; max-width: 720px; } }
@media (min-width: 1024px) { .container { padding: 32px; max-width: 960px; } }
@media (min-width: 1440px) { .container { max-width: 1200px; margin: 0 auto; } }
```

## Regras para Não Quebrar o Projeto
- Não esconder conteúdo crítico no mobile
- Manter funcionalidade completa em todos os viewports
- Não usar `position: fixed` excessivamente no mobile

## Erros Proibidos
- ❌ Layout que não funciona em 320px
- ❌ Touch targets menores que 44px
- ❌ Texto ilegível no mobile (< 14px)
- ❌ Scroll horizontal não intencional
- ❌ Modais que ocupam 100% sem scroll

## Como Validar Antes de Finalizar
1. Testar em 320px, 768px, 1024px, 1440px
2. Touch targets acessíveis em todos os botões/links
3. Sem scroll horizontal não intencional
4. Menus funcionam corretamente no mobile
