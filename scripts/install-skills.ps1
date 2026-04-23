# LDbyte AI Skills Kit — Install Script (Windows PowerShell)
# Uso: .\scripts\install-skills.ps1 -Destino "..\meu-projeto"

param(
    [Parameter(Mandatory=$true)]
    [string]$Destino
)

$TargetDir = ".ai-skills"
$DirsParaCopiar = @("skills", "workflows", "prompts")
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$KitRoot = Split-Path -Parent $ScriptDir

$ProjectPath = Resolve-Path -Path $Destino -ErrorAction SilentlyContinue
if (-not $ProjectPath) {
    Write-Host "❌ Diretório não encontrado: $Destino" -ForegroundColor Red
    exit 1
}

$DestPath = Join-Path $ProjectPath $TargetDir

Write-Host "🎯 LDbyte AI Skills Kit — Install" -ForegroundColor Cyan
Write-Host "   Origem: $KitRoot"
Write-Host "   Destino: $DestPath"
Write-Host ""

if (-not (Test-Path $DestPath)) {
    New-Item -ItemType Directory -Path $DestPath -Force | Out-Null
    Write-Host "📁 Criado: $DestPath" -ForegroundColor Green
}

$Total = 0
foreach ($dir in $DirsParaCopiar) {
    $SrcDir = Join-Path $KitRoot $dir
    $DstDir = Join-Path $DestPath $dir

    if (-not (Test-Path $SrcDir)) {
        Write-Host "⚠️  Não encontrado: $SrcDir" -ForegroundColor Yellow
        continue
    }

    if (-not (Test-Path $DstDir)) {
        New-Item -ItemType Directory -Path $DstDir -Force | Out-Null
    }

    $Files = Get-ChildItem -Path $SrcDir -Filter "*.md"
    foreach ($file in $Files) {
        Copy-Item -Path $file.FullName -Destination $DstDir -Force
        $Total++
    }

    Write-Host "✅ $dir/ → $($Files.Count) arquivos copiados" -ForegroundColor Green
}

Write-Host ""
Write-Host "🎉 Instalação completa! $Total arquivos em $DestPath" -ForegroundColor Cyan
Write-Host ""
Write-Host "📖 Próximos passos:" -ForegroundColor Yellow
Write-Host "   1. Cole o master-prompt na sua IA"
Write-Host "   2. Get-Content $DestPath\prompts\master-prompt.md"
