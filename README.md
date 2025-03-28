# 🤖 AI assistant Chat App

This is a simple sample project that demonstrates a basic chat interface powered by the **OpenAI ChatGPT API**. It’s ideal as a starting point for building conversational AI experiences using custom prompts, models, and even extended media functionality.

---

## ✨ Features

- Chat with ChatGPT using OpenAI’s API with your own custom prompt 
- Easily modify the prompt and model
- Beautiful chat UI with a robotic atmosphere
- Handle exceptions thrown by the API request (if any) with a Snackbar
- Showing loading indicator while waiting for the response
- Chat messages are displayed in markdown format (using a `Markdown` widget inside the Chat bubble)  
- Ready for extension with support for voice, image, and file messages (tutorials will come soon on Nowa Youtube channel)
- Can be instantly tested with Nowa play mode, or using simulators/real-device (After pasting your own OpenAI API key, check below for more)
---

## 🛠️ Getting Started

### 🔐 Important Setup Before Running

#### 1. **Add Your OpenAI API Key**

> Without this, the app will throw an exception when sending messages.

Steps:

1. Have a ready to use OpenAI key. If you don't, head to https://platform.openai.com/api-keys to create you own API key (you need to charge some credits if you don't have any for it to work)

2. Go to the **Files panel** → open the `api` folder → select `api_collection.api.dart`.
    
3. In the **headers section** of the request, find the `"Authorization"` key.
    
4. Add your OpenAI API key like this:
    

```json
"Authorization": "Bearer sk-proj-xxxx"
```

🔑 Make sure your key starts with `Bearer` .

---

#### 2. **Remove Default UI Messages (Optional)**

This sample includes two pre-filled messages to showcase the chat layout.

To remove them:

1. Select the screen **`ChatPage`**
    
2. Select the variable **`FullChat`**
    
3. In the **Details Panel** (below), set the **Default Value** to `0`
    

This will start the chat empty, as in a real-world app.

---

### ▶️ Run the App

You can test the app in **two ways**:

1. **Using Nowa Previewer**
    
    - Click the **Play** button in Nowa's toolbox to instantly preview the app.
        
2. **Using a simulator or real device (for local projects)**
    - Clone it as a local project to be able to use your own simulators or real-device
        
    - Before running it locally, make sure to follow the setup steps below.
        

---


## 🧠 Customizing the Prompt

You can change how the assistant responds by editing the prompt used in the API request.

### Steps to Modify the Prompt:

1. Go to the `api` folder → open `api_collection.api.dart`
    
2. Select the API request called **`getChatMessages`**
    
3. Inside the request body, find the `messages` list
    
4. Look for this item:
    

```json
{
  "role": "developer",
  "content": "You are a helpful and friendly assistant. Respond conversationally and provide clear, informative answers. Keep responses concise unless more detail is requested. Avoid unnecessary repetition."
}
```

5. Change the `content` value to your desired prompt style
    

---

## 🔁 Changing the OpenAI Model

In the same request body (`getChatMessages`), you can replace the model with any supported by OpenAI (e.g., `gpt-4`, `gpt-3.5-turbo`).

For reference:  
📚 [OpenAI Chat API Docs](https://platform.openai.com/docs/api-reference/chat/create)

---

## 📦 Future Updates

We’re planning to release tutorials and updates to show how to extend this chat app with:

- 🖼️ Image support
    
- 🎙️ Voice input
    
- 📎 File attachments
    

Stay tuned!

---

For questions, help and requests, use our [Discord community](https://discord.gg/ByKfn3H7gX), or email us at `team@nowa.dev`



## 🙌 Made with ❤️ by Nowa team
