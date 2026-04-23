#!/bin/bash
# LDbyte AI Skills Kit — Install Script (Linux/macOS)
# Uso: bash scripts/install-skills.sh ../meu-projeto

set -e

TARGET_DIR=".ai-skills"
DIRS_TO_COPY=("skills" "workflows" "prompts")
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
KIT_ROOT="$(dirname "$SCRIPT_DIR")"

if [ -z "$1" ]; then
  echo "❌ Uso: bash scripts/install-skills.sh <caminho-do-projeto>"
  echo "   Exemplo: bash scripts/install-skills.sh ../meu-projeto"
  exit 1
fi

PROJECT_PATH="$(cd "$1" 2>/dev/null && pwd || echo "$1")"
DEST_PATH="$PROJECT_PATH/$TARGET_DIR"

if [ ! -d "$PROJECT_PATH" ]; then
  echo "❌ Diretório não encontrado: $PROJECT_PATH"
  exit 1
fi

echo "🎯 LDbyte AI Skills Kit — Install"
echo "   Origem: $KIT_ROOT"
echo "   Destino: $DEST_PATH"
echo ""

mkdir -p "$DEST_PATH"

TOTAL=0
for dir in "${DIRS_TO_COPY[@]}"; do
  SRC="$KIT_ROOT/$dir"
  DST="$DEST_PATH/$dir"

  if [ ! -d "$SRC" ]; then
    echo "⚠️  Não encontrado: $SRC"
    continue
  fi

  mkdir -p "$DST"
  COUNT=$(find "$SRC" -name "*.md" | wc -l)
  cp "$SRC"/*.md "$DST/" 2>/dev/null || true
  TOTAL=$((TOTAL + COUNT))
  echo "✅ $dir/ → $COUNT arquivos copiados"
done

echo ""
echo "🎉 Instalação completa! $TOTAL arquivos em $DEST_PATH"
echo ""
echo "📖 Próximos passos:"
echo "   1. Cole o master-prompt na sua IA"
echo "   2. cat $DEST_PATH/prompts/master-prompt.md"
