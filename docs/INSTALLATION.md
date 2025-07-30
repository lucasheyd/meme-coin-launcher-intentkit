# 🛠️ Installation Guide - Meme Coin Launch Assistant

> **Complete step-by-step installation guide for all environments**

## 📋 Prerequisites

### System Requirements
- **Python**: 3.12 or higher
- **Git**: Latest version
- **Memory**: Minimum 4GB RAM
- **Storage**: 2GB free space
- **OS**: Windows 10+, macOS 10.15+, or Linux (Ubuntu 20.04+)

### Required API Keys
- **OpenAI API Key** (Required) - [Get it here](https://platform.openai.com/api-keys)
- **Coinbase Developer Platform Keys** (Optional for real deployments) - [Get it here](https://portal.cdp.coinbase.com/access/api)

## 🚀 Quick Installation (Recommended)

### One-Command Setup
```bash
# Clone the repository
git clone https://github.com/yourusername/meme-coin-launcher-intentkit.git
cd meme-coin-launcher-intentkit

# Run automated setup
chmod +x setup.sh
./setup.sh
```

This will:
- Clone IntentKit framework
- Install all dependencies
- Create environment file template
- Set up database

## 🔧 Manual Installation

### Step 1: Clone Repository
```bash
git clone https://github.com/yourusername/meme-coin-launcher-intentkit.git
cd meme-coin-launcher-intentkit
```

### Step 2: Clone IntentKit Framework
```bash
git clone https://github.com/crestalnetwork/intentkit.git
cd intentkit
```

### Step 3: Install Dependencies
```bash
# Install UV package manager
pip install uv

# Install project dependencies
uv sync
```

### Step 4: Environment Configuration
```bash
# Copy environment template
cp ../example.env .env

# Edit with your API keys
nano .env  # or use your preferred editor
```

Required environment variables:
```env
# Required - Get from OpenAI
OPENAI_API_KEY=sk-your-openai-key-here

# Optional - For real token deployment
CDP_API_KEY_ID=your-coinbase-api-key
CDP_API_KEY_SECRET=your-coinbase-secret  
CDP_WALLET_SECRET=your-wallet-secret

# Database
DATABASE_URL=sqlite:///./intentkit.db
```

### Step 5: Database Setup
```bash
# Initialize database (automatic on first run)
uv run python -c "from app.database import init_db; init_db()"
```

## 🐳 Docker Installation

### Using Docker Compose (Production)
```bash
# Clone repository
git clone https://github.com/yourusername/meme-coin-launcher-intentkit.git
cd meme-coin-launcher-intentkit

# Copy and edit environment file
cp example.env .env
nano .env

# Start all services
docker-compose up -d
```

### Using Clean Docker Setup
```bash
# Use the clean configuration
docker-compose -f docker-compose-clean.yml up -d
```

## 🔑 API Keys Configuration

### OpenAI API Key (Required)
1. Visit [OpenAI Platform](https://platform.openai.com/api-keys)
2. Sign in to your account
3. Click "Create new secret key"
4. Copy the key starting with `sk-`
5. Add to `.env` file: `OPENAI_API_KEY=sk-your-key-here`

### Coinbase Developer Platform (Optional)
1. Visit [CDP Portal](https://portal.cdp.coinbase.com/access/api)
2. Create a new API key
3. Save the Key ID and Secret
4. Generate a wallet secret (32-byte hex string)
5. Add to `.env` file:
   ```env
   CDP_API_KEY_ID=your-api-key-id
   CDP_API_KEY_SECRET=your-api-secret
   CDP_WALLET_SECRET=your-wallet-secret
   ```

## 🚦 Starting the Application

### Development Mode
```bash
cd intentkit

# Start the API server
uv run uvicorn app.api:app --host 0.0.0.0 --port 8000 --reload

# In another terminal, test the agent
cd ..
chmod +x demo.sh
./demo.sh
```

### Production Mode
```bash
# Using Docker Compose
docker-compose up -d

# Or manual production setup
cd intentkit
uv run uvicorn app.api:app --host 0.0.0.0 --port 8000 --workers 4
```

## ✅ Verification

### Check Installation
```bash
# Test API health
curl http://127.0.0.1:8000/health

# Expected response:
# {"status": "healthy", "timestamp": "2025-07-30T12:00:00Z"}
```

### Test Agent Creation
```bash
curl -X POST http://127.0.0.1:8000/agents \
  -H "Content-Type: application/json" \
  -d @agent-config.json
```

### Run Demo
```bash
./demo.sh

# Should see creative meme coin concepts generated
```

## 🔍 Troubleshooting

### Common Issues

#### **Import Error: No module named 'uv'**
```bash
# Solution: Install UV first
pip install --upgrade pip
pip install uv
```

#### **Database Connection Error**
```bash
# Check DATABASE_URL in .env
# For SQLite (default):
DATABASE_URL=sqlite:///./intentkit.db

# For PostgreSQL:
DATABASE_URL=postgresql://user:password@localhost:5432/dbname
```

#### **OpenAI API Error 401**
```bash
# Check your API key
echo $OPENAI_API_KEY
# Should start with 'sk-'

# Verify key is active at OpenAI platform
curl -H "Authorization: Bearer $OPENAI_API_KEY" \
  https://api.openai.com/v1/models
```

#### **Port 8000 Already in Use**
```bash
# Find process using port 8000
lsof -i :8000

# Kill the process
kill -9 <PID>

# Or use different port
uv run uvicorn app.api:app --host 0.0.0.0 --port 8001
```

#### **CDP Integration Issues**
```bash
# Verify CDP credentials
curl -X GET https://api.cdp.coinbase.com/v1/users/me \
  -H "Authorization: Bearer $CDP_API_KEY_SECRET"

# Check wallet configuration
python -c "
from cdp import Wallet
wallet = Wallet.create()
print(f'Wallet ID: {wallet.id}')
"
```

### Docker Issues

#### **Container Won't Start**
```bash
# Check logs
docker-compose logs intent-api

# Rebuild containers
docker-compose down
docker-compose build --no-cache
docker-compose up -d
```

#### **Database Connection Timeout**
```bash
# Check database health
docker-compose exec db pg_isready -U postgres

# Restart database
docker-compose restart db
```

## 🏃‍♂️ Quick Test Commands

### Test Single Concept
```bash
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "test-1",
    "user_id": "test-user",
    "message": "Create a meme coin about dancing robots"
  }'
```

### Test Multiple Concepts
```bash
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "test-2", 
    "user_id": "test-user",
    "message": "Create 3 meme coins: space cats, ninja pandas, and disco developers"
  }'
```

## 📦 Dependencies Overview

### Core Dependencies (Installed via uv sync)
- **FastAPI**: Web framework
- **LangGraph**: AI agent orchestration  
- **SQLAlchemy**: Database ORM
- **Pydantic**: Data validation
- **OpenAI**: AI model integration
- **CDP-SDK**: Coinbase blockchain integration

### Development Dependencies
- **pytest**: Testing framework
- **black**: Code formatting
- **flake8**: Code linting
- **mypy**: Type checking

## 🎯 Next Steps

After successful installation:

1. **Edit Configuration**: Update `intentkit/.env` with your API keys
2. **Run Demo**: Execute `./demo.sh` to see the agent in action
3. **Explore API**: Visit `http://127.0.0.1:8000/docs` for interactive API documentation
4. **Create Custom Agents**: Modify `agent-config.json` for your use case
5. **Deploy Production**: Use `docker-compose.yml` for production deployment

## 📞 Support

### Documentation
- [IntentKit Official Docs](https://docs.crestal.network)
- [OpenAI API Reference](https://platform.openai.com/docs)
- [Coinbase CDP Docs](https://docs.cdp.coinbase.com)

### Community Support
- [GitHub Issues](https://github.com/yourusername/meme-coin-launcher-intentkit/issues)
- [Discord Community](https://discord.gg/crestal)
- [GitHub Discussions](https://github.com/yourusername/meme-coin-launcher-intentkit/discussions)

### Professional Support
For enterprise installations and custom integrations, contact the development team.

---

**Installation complete! Time to launch some epic meme coins! 🚀**
