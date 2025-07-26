#!/bin/bash
set -e  # Exit immediately if a command fails

echo "📦 Setting up Python environment..."
python3 -m venv venv
source venv/bin/activate

echo "⬆️ Installing dependencies..."
pip install --upgrade pip
pip install embedchain openai requests beautifulsoup4 langdetect python-docx

echo "📁 Verifying working directory contents..."
ls -l

echo "🤖 Running AI summarizer..."
python error_summarizer_agent.py

echo "✅ Done. Summary saved to error_summary.md"
