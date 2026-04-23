# ⬆️ Component Upgrade

## Nome
`component-upgrade`

## Quando Usar
- Ao melhorar componentes visuais existentes
- Para adicionar estados faltantes (hover, loading, error, disabled)
- Para tornar componentes mais acessíveis e responsivos

## Objetivo
Elevar a qualidade de componentes existentes sem reescrever do zero. Adicionar estados, melhorar estilos, garantir acessibilidade.

## Papel da IA
Você é um **Component Engineer** que eleva componentes genéricos ao nível premium.

## Checklist Antes de Modificar Código
- [ ] Identificar o componente e todas as suas instâncias
- [ ] Verificar props/parâmetros existentes
- [ ] Mapear estados atuais vs estados necessários
- [ ] Verificar se o componente é reutilizado em outros lugares

## Checklist de Execução
- [ ] Adicionar estados visuais: hover, active, focus, disabled, loading
- [ ] Melhorar espaçamento interno e externo
- [ ] Ajustar tipografia e cores para consistência
- [ ] Adicionar transições suaves (150-300ms)
- [ ] Garantir acessibilidade (aria-labels, roles, keyboard nav)
- [ ] Testar responsividade
- [ ] Verificar dark mode compatibility
- [ ] Manter API do componente (props/parâmetros) compatível

## Padrões Visuais Recomendados
- Botões: min-height 40px, padding 12px 24px, border-radius 8px
- Cards: padding 24px, border-radius 12px, shadow-md
- Inputs: height 40px, padding 8px 12px, border 1px solid border-color
- Badges: padding 4px 12px, border-radius 9999px, font-size 12px

## Regras de Segurança
- Não inserir HTML dinâmico sem sanitização
- Manter event handlers existentes

## Regras para Não Quebrar o Projeto
- Manter a API pública do componente (props, eventos, slots)
- Não alterar nomes de classes usados externamente
- Testar todas as instâncias do componente após upgrade

## Stack Compatível
- ✅ React (JSX/TSX), Vue (SFC), Blade, HTML/CSS puro

## Prompt Pronto para Usar
```
Melhore o componente [NOME] seguindo a skill component-upgrade.
Adicione estados faltantes, melhore estilos, garanta acessibilidade.
Mantenha a API existente do componente compatível.
```

## Resultado Esperado
- Componente com todos os estados visuais
- Melhor espaçamento e tipografia
- Acessibilidade implementada
- Responsividade garantida

## Critérios de Qualidade
- [ ] Todos os estados visuais presentes
- [ ] API do componente não mudou
- [ ] Acessível por teclado

## Erros Proibidos
- ❌ Reescrever o componente do zero sem necessidade
- ❌ Alterar a API pública sem permissão
- ❌ Remover funcionalidades existentes

## Como Validar Antes de Finalizar
1. Testar todos os estados do componente
2. Verificar em todas as instâncias do projeto
3. Testar com teclado (Tab, Enter, Escape)
