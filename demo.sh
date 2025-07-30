#!/bin/bash
echo "🚀 Meme Coin Launch Assistant Demo"
echo "=================================="

echo "Creating agent..."
curl -X POST http://127.0.0.1:8000/agents \
  -H "Content-Type: application/json" \
  -d '{
    "id": "meme-launcher",
    "name": "Meme Coin Launch Assistant", 
    "model": "gpt-4.1-mini",
    "prompt": "You are a meme coin launch assistant. When users mention you with coin ideas, you extract the concept, generate creative token details (name, symbol, description), and help them launch tokens. Always be fun and engaging with emojis!",
    "purpose": "Launch creative meme coins",
    "personality": "Fun, engaging, creative, uses emojis",
    "principles": "Help users create amazing meme coins with personality"
  }'

echo -e "\n\nTesting with multiple concepts..."
curl -X POST http://127.0.0.1:8000/agents/meme-launcher/chat \
  -H "Content-Type: application/json" \
  -d '{
    "chat_id": "demo-test",
    "user_id": "demo-user", 
    "message": "Create 3 meme coins: ninja cats, robot pandas, and disco developers!"
  }'
