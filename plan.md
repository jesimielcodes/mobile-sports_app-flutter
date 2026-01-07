# Authentication Flow

## Login / Register Screen
- Toggle between **Login** and **Register**
- **Google authentication** option  
- On success → **navigate to Home**

---

# Main Shell (After Login)

## Bottom Navigation (5 Tabs)
1. **Home (Bulletin)**
2. **Arena**
3. **Locker Rooms**
4. **Profile**
5. **TBD (Future Feature Placeholder)**

> Each tab is independent and preserves scroll state when switching.

---

## 1️⃣ Home — Bulletin

### AppBar
- Title: **Bulletin**
- Hamburger icon → opens **Drawer**

Drawer lists all sports.  
Selecting a sport either:
- Changes global context, or
- Navigates into that sport (without “back” navigation).

### Search Bar
- Search matches, teams, players, posts

### Sports Grid (Not Filters)
Each card = a sport (Football, Basketball, Volleyball, etc.)

Tap → **Sport Overview Section**

Contents:
- Description
- Featured teams
- Upcoming matches
- Recent results
- Quick links (teams, arenas, standings)

### Recent Matches (Horizontal Cards)
Each card shows:
- Team A logo vs Team B logo  
- Final score  
- Date / Venue  
Tap → **Match Details (Arena)**

### Upcoming Matches (Horizontal Cards)
Same UI, but **no score**  
Tap → **Match Details (Arena)**

### Trending Section
Mixed feed:
- Instagram posts
- LinkedIn/blog articles
- School announcements
- National sports news relevant to campus

Opens:
- External link OR
- Internal viewer

> Integration requires APIs, permissions, scraping rules — to be discussed later.

---

## 2️⃣ Sport Overview Section
(When user taps a sport)

Think of this as an upgraded “Teams Panel”.

### Content
- Hero banner
- Short description / history
- Tabs:
  - **Teams**
  - **Fixtures**
  - **Results**
  - **Standings**
  - **News**

### Teams Tab
- List of teams
- Tap → **Team Page**

---

## 3️⃣ Team Page

### Content
- Team logo + name + coach + bio
- Stats: wins, losses, ranking
- Upcoming + past matches
- Access to chatroom
- Roster (players)

Player section:
- Horizontal list / grid
- Tap → **Player Page**

---

## 4️⃣ Player Page

### Content
- Profile photo  
- Position  
- Jersey number  
- Biography  
- Match stats  
- Achievements  
- Social links  
- Optional highlight clips

---

## 5️⃣ Arena Tab (Matches + Leagues + History)

Also the landing page when a user taps any match card.

### Match Details Page
- Team A vs Team B
- Date, venue, time
- Lineups
- Live score (optional)
- Commentary / recap
- Photos
- Share button

### Leagues Section
For each league:
- Fixtures
- Standings
- Rules
- Past winners

#### Past Winners
- Year-by-year champions
- Trophy display layout
- Drill into a year → tournament details

---

## 6️⃣ Locker Rooms (Fan Communities)

### Structure
- Sports list
- Each sport → chat rooms such as:
  - Men’s Football Fans
  - Volleyball Community

Features:
- Real-time chat (likely Firebase)
- Moderation tools (later)

---

## 7️⃣ Profile Tab

- Name, avatar, email
- Favorite sports / teams / players
- Notification preferences
- Manage Google account
- Logout

---

## 8️⃣ Drawer (Side Navigation)

Accessible from Home (and maybe globally).

Contents:
- Home
- Arena
- Locker Rooms
- Profile
- Help / About
- Settings
- Sign out

Plus:
- Quick sport switching

---

## Missing 5th Tab — Options

Possible candidates:

### Stats & Insights
- Leaderboards
- Top scorers
- MVPs
- Records

### Events
- Sports calendar
- Register / RSVP

### Media
- Photos
- Highlights
- Replays

### Shop / Merchandise
- Jerseys
- Tickets
- Event passes
