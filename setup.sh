#!/bin/bash
echo "🚀 Setting up Meme Coin Launch Assistant"
echo "========================================"

# Check if IntentKit exists
if [ ! -d "intentkit" ]; then
    echo "📥 Cloning IntentKit..."
    git clone https://github.com/crestalnetwork/intentkit.git
fi

cd intentkit

# Install dependencies
echo "📦 Installing dependencies..."
pip install uv
uv sync

# Setup environment
echo "⚙️ Setting up environment..."
if [ ! -f .env ]; then
    cp ../example.env .env
    echo "✅ Created .env file - please edit with your API keys"
else
    echo "✅ .env file already exists"
fi

echo ""
echo "🎯 Next steps:"
echo "1. Edit intentkit/.env with your API keys"
echo "2. Run: cd intentkit && uv run uvicorn app.api:app --host 0.0.0.0 --port 8000"
echo "3. Run: ../demo.sh"
echo ""
