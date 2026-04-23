#!/usr/bin/env node

/**
 * LDbyte AI Skills Kit — Sync Script
 * Copia skills, workflows e prompts para um projeto destino
 *
 * Uso: node scripts/sync-skills.js ../meu-projeto
 */

const fs = require('fs');
const path = require('path');

const DIRS_TO_COPY = ['skills', 'workflows', 'prompts'];
const TARGET_DIR = '.ai-skills';

function main() {
  const args = process.argv.slice(2);

  if (args.length === 0) {
    console.error('❌ Uso: node scripts/sync-skills.js <caminho-do-projeto>');
    console.error('   Exemplo: node scripts/sync-skills.js ../meu-projeto');
    process.exit(1);
  }

  const projectPath = path.resolve(args[0]);
  const kitRoot = path.resolve(__dirname, '..');
  const destPath = path.join(projectPath, TARGET_DIR);

  // Verificar se o projeto existe
  if (!fs.existsSync(projectPath)) {
    console.error(`❌ Diretório não encontrado: ${projectPath}`);
    process.exit(1);
  }

  console.log('🎯 LDbyte AI Skills Kit — Sync');
  console.log(`   Origem: ${kitRoot}`);
  console.log(`   Destino: ${destPath}`);
  console.log('');

  // Criar diretório destino
  if (!fs.existsSync(destPath)) {
    fs.mkdirSync(destPath, { recursive: true });
    console.log(`📁 Criado: ${destPath}`);
  }

  let totalFiles = 0;

  for (const dir of DIRS_TO_COPY) {
    const srcDir = path.join(kitRoot, dir);
    const dstDir = path.join(destPath, dir);

    if (!fs.existsSync(srcDir)) {
      console.warn(`⚠️  Diretório não encontrado: ${srcDir}`);
      continue;
    }

    // Criar diretório destino
    if (!fs.existsSync(dstDir)) {
      fs.mkdirSync(dstDir, { recursive: true });
    }

    // Copiar arquivos
    const files = fs.readdirSync(srcDir).filter(f => f.endsWith('.md'));
    for (const file of files) {
      const srcFile = path.join(srcDir, file);
      const dstFile = path.join(dstDir, file);
      fs.copyFileSync(srcFile, dstFile);
      totalFiles++;
    }

    console.log(`✅ ${dir}/ → ${files.length} arquivos copiados`);
  }

  console.log('');
  console.log(`🎉 Sync completo! ${totalFiles} arquivos copiados para ${destPath}`);
  console.log('');
  console.log('📖 Próximos passos:');
  console.log('   1. Cole o master-prompt na sua IA preferida');
  console.log(`   2. cat ${path.join(destPath, 'prompts', 'master-prompt.md')}`);
  console.log('   3. Comece a usar as skills!');
}

main();
