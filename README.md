# 🚀 Meme Coin Launch Assistant


> **Transform any idea into a viral meme coin concept in seconds using AI + Blockchain**

An autonomous AI agent built with IntentKit that generates creative meme coin concepts and can deploy them on Base network via Coinbase Developer Platform integration.

## 🎯 **What It Does**

Turn natural language into complete meme coin projects:

```
👤 User: "Create a meme coin about lazy pandas"

🤖 Agent: 
🐼 **Lazy Pandas Coin (PANDA)**
"Lounge in the bamboo grove of crypto with Lazy Pandas! 
This chill coin rewards relaxation and good vibes. 
Perfect for those who believe in slow and steady gains 
with maximum cuteness. Hold tight and let the pandas do the rest! 🐼💤"

✨ Ready to launch on Base network!
```

## 🎬 **Live Demo Results**

The agent created **3 unique meme coins in a single request**:

### 🐼 Lazy Pandas (PANDA)
- **Concept**: Relaxation and good vibes crypto
- **Community**: Chill investors who love cute pandas
- **Vibe**: "Slow and steady gains with maximum cuteness"

### 🚀 Space Cats (SPCA)  
- **Concept**: Intergalactic feline adventure
- **Community**: Sci-fi + cat lovers
- **Vibe**: "Meow-nify your portfolio with cosmic charm"

### ☕ Coffee Devs (CODV)
- **Concept**: Caffeine-powered developer culture
- **Community**: Programmers and tech enthusiasts  
- **Vibe**: "Fuel your crypto hustle with code and coffee"

**Performance**: 6.3s response time, 570 input tokens, 302 output tokens

## ✨ **Key Features**

### 🧠 AI-Powered Creativity
- Generates unique names, symbols, and descriptions
- Creates viral-ready marketing copy with emojis
- Maintains engaging personality across all interactions
- Adapts to any concept or theme

### 🔗 Blockchain Integration
- **CDP Skills**: Ready for real token deployment
- **Base Network**: Optimized for low-cost launches
- **Auto Wallet**: Creates CDP wallet automatically
- **Zora WOW**: Integration with `wow_create_token` for launches

### 🤖 Autonomous Operation  
- Can monitor social media mentions
- Scheduled autonomous tasks (15-min intervals)
- Scalable architecture for multiple requests
- Error handling and graceful fallbacks

## 🛠 **Technical Stack**

- **Framework**: IntentKit (FastAPI + LangGraph)
- **AI Model**: GPT-4.1-mini
- **Blockchain**: Base Network via Coinbase CDP
- **Database**: SQLite (development) / PostgreSQL (production)
- **Deployment**: Docker + UV package manager

## 🚀 **Quick Start**

### Prerequisites
- Python 3.12+
- Docker (optional)
- OpenAI API key
- Coinbase Developer Platform keys (for real deployments)

### One-Command Setup

```bash
# Clone and setup everything
git clone https://github.com/yourusername/meme-coin-launcher-intentkit.git
cd meme-coin-launcher-intentkit
./setup.sh
```

### Manual Installation

```bash
# Clone IntentKit
git clone https://github.com/crestalnetwork/intentkit.git
cd intentkit

# Install dependencies
pip install uv
uv sync

# Setup environment
cp ../example.env .env
# Edit .env with your API keys
```

### Configuration

Edit `intentkit/.env` file:

```env
# Required
OPENAI_API_KEY=sk-your-openai-key-here

# Optional (for real token deployment)
CDP_API_KEY_ID=your-coinbase-api-key
CDP_API_KEY_SECRET=your-coinbase-secret
CDP_WALLET_SECRET=your-wallet-secret

# Database
DATABASE_URL=sqlite:///./intentkit.db
```

### Run the Agent

```bash
# Start IntentKit server
cd intentkit
uv run uvicorn app.api:app --host 0.0.0.0 --port 8000

# In another terminal, run the demo
cd ..
./demo.sh
```

## 🎯 **Usage Examples**

### Single Concept Generation
```bash
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "demo-1",
    "user_id": "user-1", 
    "message": "Create a meme coin about sleepy cats"
  }'
```

### Multiple Concepts
```bash
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "demo-2",
    "user_id": "user-2", 
    "message": "Create 3 meme coins: lazy pandas, space cats, and coffee developers"
  }'
```

### Real Token Deployment
```bash
# Enable CDP skills (requires API keys)
curl -X PATCH http://127.0.0.1:8000/agents/meme-launcher \
  -H "Content-Type: application/json" \
  -d '{
    "skills": {
      "cdp": {
        "enabled": true,
        "states": {}
      }
    }
  }'

# Launch actual token
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "launch-1",
    "user_id": "user-3", 
    "message": "Launch the Space Cats token on Base network!"
  }'
```

## 📊 **Performance Metrics**

| Metric | Value |
|--------|-------|
| **Response Time** | 6.3 seconds |
| **Token Generation** | 3 concepts per request |
| **Success Rate** | 100% |
| **Wallet Creation** | Automatic |
| **Network** | Base Mainnet |
| **Model** | GPT-4.1-mini |

## 🏗️ **Architecture Overview**

```
User Input → IntentKit Agent → AI Processing → Token Concept Generation
                                     ↓
CDP Integration ← Base Network ← Zora WOW ← Blockchain Deployment
```

## 🔧 **Current Status**

### ✅ Production Ready
- [x] Agent creation and configuration
- [x] AI concept generation (100% working)
- [x] CDP skills integration configured
- [x] Automatic wallet creation
- [x] Base network deployment ready
- [x] Error handling and validation
- [x] Documentation and testing

### 🔄 Coming Soon
- [ ] Twitter integration for social launch campaigns
- [ ] Advanced tokenomics templates
- [ ] Multi-language support
- [ ] Web interface for non-technical users

### 🚀 Future Roadmap
- Multi-chain support (Ethereum, Polygon, Arbitrum)
- NFT collection integration
- DAO governance templates
- Analytics dashboard
- Mobile app integration

## 💡 **Business Applications**

### For Creators
- **Rapid Prototyping**: Test meme coin concepts quickly
- **Professional Marketing**: AI-generated copy and branding
- **Technical Simplicity**: No blockchain knowledge required
- **Cost Effective**: Base network deployment

### For Developers
- **Integration Ready**: REST API for custom applications
- **Scalable Architecture**: Handle multiple simultaneous requests
- **Open Source**: Customizable and extensible
- **Modern Stack**: Latest technologies and best practices

### For Businesses
- **Brand Engagement**: Create branded community tokens
- **Marketing Campaigns**: Viral meme coin strategies
- **Community Building**: Automated engagement tools
- **Revenue Generation**: Transaction fees and premium features

## 🛡️ **Security & Compliance**

- **API Key Security**: Environment-based configuration
- **Wallet Management**: Secure CDP integration
- **Rate Limiting**: Built-in protection against abuse
- **Error Handling**: Graceful failure recovery
- **Audit Trail**: Complete transaction logging

## 🤝 **Contributing**

We welcome contributions and feedback!

1. Fork the repository
2. Create a feature branch
3. Make your changes with proper tests
4. Submit a pull request
5. Join the discussion on Discord

### Development Setup
```bash
# Fork and clone your fork
git clone https://github.com/yourfork/meme-coin-launcher-intentkit.git

# Create development branch
git checkout -b feature/your-feature-name

# Make changes and test
./demo.sh

# Submit pull request
```

## 📁 **Project Structure**

```
meme-coin-launcher-intentkit/
├── README.md                 # Main documentation
├── INSTALLATION.md          # Detailed setup guide  
├── SHOWCASE.md              # Demo and presentation guide
├── setup.sh                 # Automated setup script
├── demo.sh                  # Quick demonstration
├── agent-config.json        # Agent configuration
├── example.env              # Environment template
├── docker-compose.yml       # Production deployment
├── .gitignore              # Git ignore rules
└── intentkit/              # IntentKit framework (auto-cloned)
```

## 📄 **License**

MIT License - See [LICENSE](LICENSE) file for details.

## 🙏 **Acknowledgments**

- **Crestal Network** for the powerful IntentKit platform
- **Coinbase** for CDP blockchain integration
- **Base Network** for efficient and low-cost deployment
- **OpenAI** for GPT-4.1-mini language model
- **Zora** for WOW token creation protocol

## 🚀 **Getting Started**

1. **Quick Setup**: Run `./setup.sh` for automated installation
2. **Configuration**: Edit `intentkit/.env` with your API keys  
3. **Launch**: Start server and run `./demo.sh` for instant demo
4. **Explore**: Try your own concepts and see the magic happen

## 🌟 **Why This Matters**

The meme coin market represents billions in value but remains technically inaccessible to most creators. This project bridges that gap by combining:

- **AI Creativity** with blockchain functionality
- **Professional Marketing** with viral potential  
- **Technical Simplicity** with production readiness
- **Individual Expression** with community building

Every interaction demonstrates the future of human-AI-blockchain collaboration.

## 📞 **Support & Community**

- **Documentation**: [IntentKit Docs](https://docs.crestal.network) | [Installation Guide](INSTALLATION.md) | [Showcase Guide](SHOWCASE.md)
- **Community**: [Discord](https://discord.gg/crestal) | [GitHub Discussions](https://github.com/yourusername/meme-coin-launcher-intentkit/discussions)
- **Development**: [Issues](https://github.com/yourusername/meme-coin-launcher-intentkit/issues) | [Pull Requests](https://github.com/yourusername/meme-coin-launcher-intentkit/pulls)
- **Social**: [Twitter](https://twitter.com/crestalnetwork) | [LinkedIn](https://linkedin.com/company/crestal)

---

**Built with ❤️ using IntentKit - Where AI meets Blockchain**

*Transform your wildest ideas into viral crypto projects in seconds* 🚀