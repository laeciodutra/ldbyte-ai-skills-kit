# ⚡ Performance Frontend Audit

## Nome
`performance-frontend-audit`

## Quando Usar
- Quando o site está lento
- Para otimizar Core Web Vitals (LCP, FID, CLS)
- Antes de ir para produção

## Objetivo
Identificar e corrigir gargalos de performance no front-end.

## Checklist de Execução
- [ ] Auditar bundle size (JavaScript/CSS)
- [ ] Otimizar imagens (WebP/AVIF, lazy loading, srcset)
- [ ] Minificar CSS/JS em produção
- [ ] Implementar code splitting / lazy loading de rotas
- [ ] Verificar fonts (preload, font-display: swap)
- [ ] Auditar third-party scripts (analytics, chat, etc.)
- [ ] Verificar cache headers
- [ ] Otimizar CSS (remover não usado, consolidar media queries)
- [ ] Verificar DOM size (< 1500 nodes ideal)
- [ ] Evitar layout shifts (definir width/height em imagens)
- [ ] Targets: LCP < 2.5s, FID < 100ms, CLS < 0.1

## Erros Proibidos
- ❌ Imagens não otimizadas (> 500KB)
- ❌ JavaScript bloqueando render sem async/defer
- ❌ Fonts causando FOIT (Flash of Invisible Text)
- ❌ Bundle JavaScript > 250KB (gzipped)

## Como Validar
1. Lighthouse score > 90 em Performance
2. Core Web Vitals dentro dos limites
3. Tempo de carregamento < 3s em 3G lento
