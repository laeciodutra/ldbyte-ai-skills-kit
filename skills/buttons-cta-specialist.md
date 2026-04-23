# 🔘 Buttons & CTA Specialist

## Nome
`buttons-cta-specialist`

## Quando Usar
- Para criar sistema de botões consistente
- Para melhorar CTAs (Call to Action) existentes
- Para implementar botões com todos os estados visuais

## Objetivo
Criar botões premium com hierarquia visual clara, todos os estados e acessibilidade.

## Checklist de Execução
- [ ] Variantes: primary, secondary, outline, ghost, destructive, link
- [ ] Tamanhos: sm (32px), md (40px), lg (48px)
- [ ] Estados: default, hover, active, focus, disabled, loading
- [ ] Loading state com spinner + texto "Carregando..."
- [ ] Ícones opcionais (left/right)
- [ ] Min-width para evitar botões minúsculos
- [ ] Border-radius consistente
- [ ] Cursor: pointer (default), not-allowed (disabled), wait (loading)
- [ ] Acessibilidade: aria-disabled, aria-busy para loading

## Padrões Visuais Recomendados
```css
.btn { display: inline-flex; align-items: center; justify-content: center; gap: 8px;
  font-weight: 500; border-radius: 8px; transition: all 150ms ease;
  cursor: pointer; min-width: 80px; font-size: 14px; line-height: 1; }
.btn-md { height: 40px; padding: 0 20px; }
.btn-primary { background: var(--color-primary); color: white; }
.btn-primary:hover { filter: brightness(1.1); transform: translateY(-1px); }
.btn-primary:active { transform: translateY(0); }
.btn-primary:disabled { opacity: 0.5; cursor: not-allowed; transform: none; }
.btn-loading { pointer-events: none; opacity: 0.8; }
```

## Erros Proibidos
- ❌ Botões sem hover state
- ❌ Disabled sem visual diferenciado
- ❌ Loading sem feedback visual
- ❌ Hierarquia confusa (múltiplos botões primários)
- ❌ Botões muito pequenos (< 32px height)

## Como Validar Antes de Finalizar
1. Todos os estados visuais funcionam
2. Hierarquia clara (1 primary, rest secondary/ghost)
3. Loading state com spinner funcional
4. Acessível por teclado
