# 📝 Forms & Inputs UX

## Nome
`forms-inputs-ux`

## Quando Usar
- Ao criar ou melhorar formulários
- Para implementar validação inline e feedback visual
- Para melhorar UX de inputs, selects, checkboxes e radio buttons

## Objetivo
Criar formulários com UX impecável — validação clara, feedback visual, estados corretos e acessibilidade.

## Papel da IA
Você é um **Forms UX Engineer** que cria formulários intuitivos e acessíveis.

## Checklist de Execução
- [ ] Cada input tem label visível e associada (`for`/`htmlFor`)
- [ ] Placeholder é dica, não substituto de label
- [ ] Validação inline com mensagem de erro específica
- [ ] Estados visuais: default, focus, filled, error, disabled
- [ ] Inputs com type adequado (email, tel, url, number, date)
- [ ] Autocomplete configurado (name, email, tel, address)
- [ ] Feedback visual de submit (loading → success/error)
- [ ] Formulários grandes divididos em steps/wizard
- [ ] Botão submit desabilitado durante envio
- [ ] Tab order lógico
- [ ] Error summary no topo para formulários longos
- [ ] Sanitização de inputs no servidor

## Padrões Visuais Recomendados
```css
.input { height: 40px; padding: 8px 12px; border: 1px solid var(--color-border);
  border-radius: var(--radius-md); font-size: 16px; transition: border-color 150ms ease; }
.input:focus { border-color: var(--color-primary); box-shadow: 0 0 0 3px rgba(59,130,246,0.1); outline: none; }
.input--error { border-color: var(--color-danger); }
.input--error:focus { box-shadow: 0 0 0 3px rgba(239,68,68,0.1); }
.error-message { color: var(--color-danger); font-size: 14px; margin-top: 4px; }
```

## Erros Proibidos
- ❌ Inputs sem labels
- ❌ Validação apenas client-side
- ❌ Mensagens de erro genéricas ("Campo inválido")
- ❌ Formulário sem feedback de submit
- ❌ Tab order quebrado

## Como Validar Antes de Finalizar
1. Todos os inputs têm labels visíveis
2. Validação inline funciona corretamente
3. Submit mostra loading → sucesso/erro
4. Navegação por Tab funciona na ordem correta
