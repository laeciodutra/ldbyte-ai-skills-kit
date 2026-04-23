# 🔒 Workflow: Revisar Segurança

## Processo
1. **Mapear projeto** — estrutura, stack, dependências
2. **Executar auditoria** → `security-code-audit` (todas as fases)
3. **Classificar riscos** — Crítica, Alta, Média, Baixa
4. **Gerar relatório** — com código vulnerável e correção proposta
5. **Apresentar ao desenvolvedor** — esperar aprovação
6. **Corrigir por prioridade** — Crítica primeiro
7. **Testar** — funcionalidades não quebraram
8. **Validar dependências** — `npm audit` / `composer audit`
9. **Verificar headers de segurança** — X-Frame-Options, CSP, HSTS
10. **Entregar relatório final** — vulnerabilidades corrigidas + pendentes
