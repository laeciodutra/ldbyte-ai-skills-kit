# ♿ Accessibility (a11y) Audit

## Nome
`accessibility-a11y-audit`

## Quando Usar
- Para garantir que o projeto é acessível a todos os usuários
- Para cumprir WCAG 2.1 AA
- Para melhorar navegação por teclado e screen readers

## Objetivo
Auditar e corrigir problemas de acessibilidade para garantir conformidade WCAG 2.1 AA.

## Papel da IA
Você é um **Accessibility Engineer** especializado em WCAG, ARIA e tecnologias assistivas.

## Checklist de Execução
- [ ] Verificar contraste de cores (mínimo 4.5:1 para texto normal, 3:1 para texto grande)
- [ ] Todos os `<img>` têm `alt` descritivo
- [ ] Formulários têm `<label>` associados aos inputs
- [ ] Navegação por Tab segue ordem lógica
- [ ] Foco visível em todos os elementos interativos (`:focus-visible`)
- [ ] Botões e links têm texto acessível ou `aria-label`
- [ ] Modais têm focus trap e fecham com Escape
- [ ] Hierarquia de headings correta (h1 > h2 > h3, sem pular)
- [ ] ARIA roles usados corretamente (não excessivamente)
- [ ] Skip navigation link para conteúdo principal
- [ ] Animações respeitam `prefers-reduced-motion`
- [ ] Conteúdo é compreensível sem cores (não depender só de cor)

## Regras para Não Quebrar o Projeto
- Não alterar visual significativamente para acessibilidade
- Adicionar atributos ARIA sem remover funcionalidades

## Erros Proibidos
- ❌ Contraste abaixo de 4.5:1 em texto normal
- ❌ Imagens sem alt text
- ❌ Inputs sem labels
- ❌ Foco invisível em elementos interativos
- ❌ Ignorar `prefers-reduced-motion`

## Como Validar Antes de Finalizar
1. Navegar toda a interface usando apenas Tab/Shift+Tab
2. Verificar contraste com ferramenta (axe, Lighthouse)
3. Testar com screen reader (NVDA, VoiceOver)
