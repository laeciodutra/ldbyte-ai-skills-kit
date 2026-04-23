# 🔒 Security Code Audit

## Nome
`security-code-audit`

## Quando Usar
- Antes de enviar o projeto para produção
- Ao integrar novas APIs ou serviços externos
- Em auditorias periódicas de segurança
- Quando trabalhar com dados sensíveis

## Objetivo
Identificar, catalogar e priorizar vulnerabilidades. **Primeiro listar todos os riscos, depois propor correções.** Nunca apagar código crítico sem explicar.

## Papel da IA
Você é um **Senior Security Engineer** com experiência em OWASP Top 10 e auditoria de código multi-linguagem.

---

## Checklist Antes de Modificar Código
- [ ] Mapear estrutura do projeto e stack
- [ ] Localizar arquivos de configuração (.env, config)
- [ ] Identificar endpoints/rotas públicas
- [ ] Mapear fluxos de autenticação/autorização
- [ ] Identificar pontos de entrada de dados do usuário
- [ ] Verificar dependências (package.json, composer.json)
- [ ] **NUNCA modificar código antes de completar a auditoria**

---

## Checklist de Execução

### Fase 1: Descoberta (NÃO modificar código)

**1.1 Credenciais e Segredos**
- [ ] `.env` exposto ou no repositório
- [ ] Credenciais hardcoded no código-fonte
- [ ] Chaves de API no front-end (JavaScript do cliente)
- [ ] Tokens em URLs ou query strings
- [ ] `.gitignore` não inclui `.env`, `*.pem`, `*.key`

**1.2 Injeção (OWASP A03)**
- [ ] SQL Injection: queries concatenadas com input do usuário
- [ ] XSS: output sem sanitização, `innerHTML`, `dangerouslySetInnerHTML`
- [ ] Command Injection: `exec()`, `system()` com input do usuário

**1.3 Autenticação e Sessão (OWASP A07)**
- [ ] Senhas sem hash (plain text, MD5, SHA1)
- [ ] Sessões sem expiração
- [ ] JWT sem validação de assinatura ou com segredos fracos
- [ ] Falta de rate limiting em login

**1.4 CSRF**
- [ ] Formulários sem token CSRF
- [ ] Endpoints que modificam dados aceitando GET
- [ ] CORS permissivo (`Allow-Origin: *`)

**1.5 Controle de Acesso (OWASP A01)**
- [ ] Rotas admin sem verificação de auth
- [ ] IDOR — acessar dados de outros usuários
- [ ] Upload sem validação de tipo/tamanho
- [ ] Path traversal em downloads

**1.6 Configuração (OWASP A05)**
- [ ] Headers ausentes (X-Frame-Options, CSP, HSTS)
- [ ] Debug mode ativo em produção
- [ ] Stack traces expostos ao usuário
- [ ] Cookies sem Secure, HttpOnly, SameSite

**1.7 Dados Sensíveis (OWASP A02)**
- [ ] Dados sensíveis em logs
- [ ] Endpoints retornando dados excessivos

**1.8 Dependências (OWASP A06)**
- [ ] Pacotes com CVEs conhecidos
- [ ] Lock files ausentes

**1.9 Validação de Inputs**
- [ ] Validação apenas client-side
- [ ] Upload sem validação de MIME type real
- [ ] Sem limitação de tamanho de payload

### Fase 2: Classificação
| Severidade | Exemplos |
|------------|----------|
| 🔴 Crítica | SQL Injection, credenciais expostas, RCE |
| 🟠 Alta | XSS persistente, CSRF, IDOR, auth bypass |
| 🟡 Média | XSS refletido, headers ausentes, CORS aberto |
| 🟢 Baixa | Dependências desatualizadas, logs verbosos |

### Fase 3: Relatório estruturado por vulnerabilidade
### Fase 4: Correções SOMENTE após aprovação

---

## Regras para Não Quebrar o Projeto
- NUNCA remover funcionalidades sem explicação
- NUNCA alterar fluxo de autenticação sem aprovação
- Testar cada correção individualmente
- Documentar toda mudança

## Stack Compatível
- ✅ PHP / Laravel, Node.js / Express, React / Next.js, Python / Django

## Prompt Pronto para Usar
```
Você é um Senior Security Engineer. Siga a skill security-code-audit.
REGRAS: 1) Audite completamente primeiro 2) Liste vulnerabilidades com severidade
3) Gere relatório estruturado 4) ESPERE aprovação antes de corrigir
5) NUNCA remova funcionalidades sem explicar
```

## Resultado Esperado
- Relatório completo com todas as vulnerabilidades classificadas
- Correção proposta para cada item
- Nenhuma funcionalidade removida sem justificativa

## Critérios de Qualidade
- [ ] Todas as categorias OWASP Top 10 verificadas
- [ ] Relatório com severidade, arquivo, linha e correção
- [ ] Correções são práticas e implementáveis

## Erros Proibidos
- ❌ Modificar código antes de completar a auditoria
- ❌ Apagar funcionalidades como "correção de segurança"
- ❌ Gerar relatório genérico sem referência ao código real

## Como Validar Antes de Finalizar
1. Relatório cobre todas as categorias do checklist
2. Cada vulnerabilidade referencia código real
3. Correções são implementáveis
4. Nenhuma funcionalidade quebrou
