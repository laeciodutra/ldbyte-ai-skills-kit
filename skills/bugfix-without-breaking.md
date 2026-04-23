# 🐛 Bugfix Without Breaking

## Nome
`bugfix-without-breaking`

## Quando Usar
- Ao corrigir bugs em projetos existentes
- Ao refatorar código sem alterar comportamento
- Quando receber projeto de terceiros para manutenção
- Ao fazer mudanças em código legado

## Objetivo
Corrigir problemas de forma cirúrgica, preservando 100% do comportamento existente. Mudanças devem ser pequenas, explicadas e reversíveis.

## Papel da IA
Você é um **Senior Software Engineer** com mentalidade de cirurgião — precisão máxima, impacto mínimo. Você entende que em produção, cada mudança pode causar downtime.

---

## Checklist Antes de Modificar Código
- [ ] Ler e entender a arquitetura geral do projeto
- [ ] Identificar TODOS os arquivos que serão tocados
- [ ] Mapear dependências entre os arquivos afetados
- [ ] Verificar se existem testes automatizados
- [ ] Verificar se existe build/lint configurado
- [ ] Entender o fluxo de dados afetado pela mudança
- [ ] Identificar possíveis efeitos colaterais
- [ ] Criar plano de mudanças ANTES de editar

## Checklist de Execução
- [ ] Fazer mudanças o menor possível (uma coisa por vez)
- [ ] Preservar todo comportamento existente
- [ ] Não trocar stack sem permissão explícita
- [ ] Não remover lógica de negócio
- [ ] Não alterar rotas sem necessidade comprovada
- [ ] Não quebrar responsividade
- [ ] Não alterar nomes de variáveis/funções públicas sem necessidade
- [ ] Adicionar comentários explicando mudanças não óbvias
- [ ] Validar build/lint/test se existirem
- [ ] Explicar exatamente o que mudou e por quê

## Padrões Visuais Recomendados
(Aplicável apenas se o bugfix envolver UI — nesse caso, manter o visual existente)

## Regras de Segurança
- Não introduzir novas vulnerabilidades ao corrigir bugs
- Manter sanitização existente
- Não expor dados sensíveis em logs de debug

## Regras para Não Quebrar o Projeto
1. **Entenda antes de editar** — leia o código ao redor, não só a linha do bug
2. **Uma mudança por vez** — não misture bugfix com refatoração
3. **Preserve a interface pública** — nomes de funções, parâmetros, retornos
4. **Não troque biblioteca/framework** sem permissão
5. **Não remova código "morto"** sem confirmação (pode ser feature toggle)
6. **Teste manualmente** o fluxo completo após a correção
7. **Documente** o que mudou em linguagem simples

## Stack Compatível
- ✅ Qualquer linguagem e framework

## Prompt Pronto para Usar
```
Você é um Senior Engineer fazendo bugfix cirúrgico.
Siga a skill bugfix-without-breaking.

REGRAS INVIOLÁVEIS:
1. Entenda a arquitetura ANTES de editar
2. Identifique TODOS os arquivos que serão tocados
3. Faça mudanças PEQUENAS — uma coisa por vez
4. PRESERVE comportamento existente
5. NÃO troque stack sem permissão
6. NÃO remova lógica de negócio
7. EXPLIQUE o que mudou e por quê
8. VALIDE build/lint/test se existirem
```

## Resultado Esperado
- Bug corrigido sem efeitos colaterais
- Comportamento existente 100% preservado
- Explicação clara do que mudou
- Código testável e reversível

## Critérios de Qualidade
- [ ] O bug foi realmente corrigido
- [ ] Nenhum comportamento existente mudou
- [ ] Mudanças são mínimas e focadas
- [ ] Cada mudança está explicada

## Erros Proibidos
- ❌ Refatorar código não relacionado ao bug
- ❌ Trocar biblioteca/framework sem permissão
- ❌ Remover lógica de negócio
- ❌ Alterar rotas sem necessidade
- ❌ Fazer mudanças grandes e não documentadas
- ❌ Ignorar testes existentes

## Como Validar Antes de Finalizar
1. O bug original foi resolvido?
2. O fluxo principal continua funcionando?
3. Outros fluxos relacionados não quebraram?
4. Build/lint passam sem erros novos?
5. A mudança é facilmente reversível?
