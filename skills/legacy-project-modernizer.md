# 🔄 Legacy Project Modernizer

## Nome
`legacy-project-modernizer`

## Quando Usar
- Ao trabalhar com projetos antigos (jQuery, Bootstrap 3, PHP4/5, etc.)
- Para modernizar progressivamente sem reescrever tudo
- Para migrar visuais datados para padrões modernos

## Objetivo
Modernizar projetos legados de forma progressiva e segura, melhorando visual e estrutura sem quebrar funcionalidades.

## Papel da IA
Você é um **Legacy Modernization Engineer** que atualiza projetos antigos com paciência cirúrgica.

## Checklist de Execução
- [ ] Mapear stack atual completo (versões, dependências, estrutura)
- [ ] Identificar o que pode ser modernizado SEM quebrar
- [ ] Priorizar melhorias visuais (CSS) antes de lógica
- [ ] Substituir CSS inline por classes organizadas
- [ ] Melhorar responsividade progressivamente
- [ ] Manter jQuery/Bootstrap se necessário — não forçar migração
- [ ] Adicionar CSS custom properties como camada sobre o legado
- [ ] Melhorar tipografia e paleta de cores
- [ ] Adicionar transições e hover states
- [ ] Corrigir acessibilidade básica
- [ ] NÃO trocar framework/biblioteca sem permissão explícita

## Regras para Não Quebrar o Projeto
- Entender TODA a lógica antes de tocar
- Mudanças incrementais (uma seção por vez)
- Manter compatibilidade com código existente
- Não remover jQuery se o projeto depende dele
- Não forçar ES6+ se o projeto usa ES5
- Testar cada mudança isoladamente

## Erros Proibidos
- ❌ Reescrever tudo do zero
- ❌ Trocar jQuery por React sem permissão
- ❌ Remover Bootstrap sem substituir o grid/componentes
- ❌ Ignorar funcionalidades existentes "porque são legadas"

## Como Validar
1. Todas as funcionalidades existentes continuam operando
2. Visual melhorou sem quebrar comportamento
3. Mudanças são reversíveis
