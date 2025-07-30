# 🚀 Project Demo - Meme Coin Launch Assistant

> **AI Agent that transforms natural language into deployable meme coin concepts**

## 🎯 What It Does

Transform any idea into a complete meme coin concept with AI + blockchain integration:

**Input**: `"Create a meme coin about lazy pandas"`

**Output** (6.3 seconds):
```
🐼 **Lazy Pandas Coin (PANDA)**
"Lounge in the bamboo grove of crypto with Lazy Pandas! 
This chill coin rewards relaxation and good vibes. 
Perfect for those who believe in slow and steady gains 
with maximum cuteness. Hold tight and let the pandas do the rest! 🐼💤"

✨ Ready to deploy on Base network
```

## 📊 Demo Results

| Metric | Value |
|--------|-------|
| **Response Time** | 6.3 seconds |
| **Concepts Generated** | 3 per request |
| **Success Rate** | 100% |
| **Blockchain** | Base Network ready |
| **AI Model** | GPT-4.1-mini |

## 🛠️ Technical Stack

- **Framework**: IntentKit (FastAPI + LangGraph)
- **AI**: OpenAI GPT-4.1-mini  
- **Blockchain**: Coinbase Developer Platform
- **Network**: Base Mainnet
- **Deployment**: Docker + Python

## 🚀 Quick Demo (5 minutes)

### Setup
```bash
git clone https://github.com/yourusername/meme-coin-launcher-intentkit.git
cd meme-coin-launcher-intentkit
./setup.sh
```

### Configure
```bash
# Edit intentkit/.env
OPENAI_API_KEY=sk-your-key-here
```

### Run
```bash
# Start server
cd intentkit
uv run uvicorn app.api:app --host 0.0.0.0 --port 8000

# Run demo (new terminal)
cd ..
./demo.sh
```

## 🧪 Test Commands

### Single Concept
```bash
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "test-1",
    "user_id": "demo",
    "message": "Create a meme coin about dancing robots"
  }'
```

### Multiple Concepts
```bash
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "test-2",
    "user_id": "demo", 
    "message": "Create 3 meme coins: space cats, ninja pandas, disco developers"
  }'
```

## 🎬 Live Demo Examples

### Generated in Single Request:

**🐼 Lazy Pandas (PANDA)**  
*"Slow and steady gains with maximum cuteness"*

**🚀 Space Cats (SPCA)**  
*"Meow-nify your portfolio with cosmic charm"*

**☕ Coffee Devs (CODV)**  
*"Fuel your crypto hustle with code and coffee"*

## 🔗 Key Features

- **Natural Language Input**: No technical knowledge required
- **AI-Powered Creativity**: Unique names, symbols, descriptions
- **Blockchain Ready**: CDP integration for real deployments
- **Fast Generation**: Sub-7-second response times
- **Multiple Concepts**: Generate several ideas simultaneously

## 📱 API Access

- **Health Check**: `GET http://127.0.0.1:8000/health`
- **Interactive Docs**: `http://127.0.0.1:8000/docs`
- **Agent Chat**: `POST http://127.0.0.1:8000/agents/meme-launcher/chat`

## 🏗️ Architecture

```
Natural Language → AI Processing → Meme Coin Concepts → Blockchain Deployment
```

## 📦 Repository Structure

```
meme-coin-launcher-intentkit/
├── README.md                # Complete documentation
├── demo.sh                  # Quick demonstration
├── setup.sh                 # Automated installation
├── agent-config.json        # Agent configuration
├── docker-compose.yml       # Production deployment
└── docs/
    └── INSTALLATION.md      # Detailed setup guide
```

## 🎯 Core Innovation

**Problem**: Creating meme coins requires technical blockchain knowledge  
**Solution**: AI agent that handles concept generation and deployment setup  
**Result**: Anyone can create professional meme coin concepts in seconds

---

**Ready to demo? Run `./setup.sh` and `./demo.sh` to see the magic! ✨**
