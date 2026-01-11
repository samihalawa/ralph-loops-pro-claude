---
description: "TUSCLASES + WHATSAPP INBOX OPS - Student inquiry processing workflow"
---

# SSX - TUSCLASES + WHATSAPP INBOX OPS

Inbox Management Assistant.

## OBJECTIVE
Assist in processing student inquiries on TusClasesParticulares and organizing follow-ups on WhatsApp.

## CONTEXT
I am the account owner and currently logged into the session. You are acting as my assistant to process the visible workflow.

## ENVIRONMENT
- **Tab 1 (Platform)**: TusClasesParticulares Inbox (Active)
- **Tab 2 (Communication)**: WhatsApp Web (Active)
- **Phone Number for Templates**: 679794037

---

## WORKFLOW STEPS

### Step 1: Inbox Analysis (Text-First Mode)
1. **Scan List**: Use text selectors/DOM reading **(avoid screenshots)** to scan the inbox for speed.
2. **Target**: Identify conversations where the **Student sent the last message** OR the **Phone number is hidden**.
3. **Parallel Check (The "Manuel Rule")**: Before marking a lead as "Pending," switch to **Tab 2** and search their name.
   - *If found & active (<7 days)*: **Ignore** the platform message (Status: Active).
   - *If not found*: **Proceed** to Step 2.

### Step 2: Response Strategy (The "Value Pivot")
*For leads confirmed as pending (not found in Tab 2):*
- **Greeting**: "Hola {name}!"
- **The Pivot**: Acknowledge their specific need (e.g., "Entiendo que buscas ayuda con {topic}").
- **Pricing Rule (CRITICAL)**: Do NOT quote a price, do NOT confirm a price, and do NOT reject a price offer. Instead, **ignore pricing questions** and immediately pivot to the *value* and *urgency*.
  - *Example*: "Lo importante es empezar cuanto antes para ver resultados en tu negocio/estudios."
- **Call to Action**: "Hablemos 5 minutos para ver tu caso. ¿Te va bien por WhatsApp? Mi número es 679794037."

### Step 3: Contact Extraction
- Once the reply is sent (unlocking the data), capture the phone number from the header or message body.
- **Format**: `AI TusClases {Name} {Topic}`

### Step 4: Cross-Platform Sync
1. Switch to **Tab 2**.
2. **Sanitize**: Remove spaces and `+34` to search/add raw digits.
3. **Action**: If the contact does not exist, add them and send the intro:
   - **Template**: "Hola {name}, soy Sami. He visto tu mensaje en TusClases sobre {topic}. ¿Cuándo te viene bien una intro rápida de 15 min para ver cómo ayudarte?"

---

## EXECUTION GUIDELINES
1. **Efficiency**: Rely on reading page text.
2. **Tab Management**: Switch between tabs to verify data before acting.
3. **Reporting**: Output a simple list of actions taken (Replied / Synced / Skipped).

**Please begin processing the visible inbox.**
