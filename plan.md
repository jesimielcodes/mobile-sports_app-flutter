HIGH-LEVEL NAVIGATION
1. Authentication Flow
Login / Register screen
Toggle between Login and Register
Google authentication option
On success → navigate to Home
MAIN SHELL (after login)
Bottom Navigation (5 tabs)
Home (Bulletin)
Arena
Locker Rooms
Profile
TBD (future feature placeholder — ideas later)
Each tab is independent and preserves scroll state when switching.
1️⃣ HOME — “Bulletin”
AppBar
Title: Bulletin
Hamburger icon → opens Drawer
Drawer lists all sports
Selecting a sport changes context globally (or navigates into that sport section without going “back”)
Search Bar
Search matches, teams, players, posts
Sports Buttons / Grid (NOT filters anymore)
Each card = a sport (Football, Basketball, Volleyball, etc.)
Tapping opens Sport Overview Section
Description
Featured teams
Upcoming matches for that sport
Recent results
Quick links to teams, arenas, standings
Recent Matches (horizontal sliding cards)
Cards show:
Team A logo vs Team B logo
Final score
Date / Venue
Tap → Match Details (Arena)
Upcoming Matches (horizontal sliding cards)
Same UI, but NO score
Tap → Match Details (Arena)
Trending Section
Mixed content feed:
Instagram posts from players
LinkedIn / blog articles
School sports announcements
National sports headlines relevant to campus
Ideally normalized into one card style
Each opens external link or internal article viewer
Yes — technically possible, but requires APIs, scraping rules, and permissions. We can discuss integration strategies later.
2️⃣ SPORT OVERVIEW SECTION (when user taps a sport)
Think of this as your “Teams Panel” from the Java app — but richer.
Content:
Hero banner for the sport
Short description / history at the school
Tabs:
Teams
Fixtures
Results
Standings
News
Teams Tab
List of teams for that sport
Tap a team → Team Page
3️⃣ TEAM PAGE
Content:
Team logo + name + coach + bio
Stats (wins, losses, ranking)
Upcoming and past matches for that team
Access to chatroom
Roster (players)
Player Buttons (Bottom section)
Horizontal list or grid
Tap → Player Page
4️⃣ PLAYER PAGE
Content:
Profile photo
Position
Jersey number
Biography
Match stats
Achievements
Social links
Maybe highlight clips (optional later)
5️⃣ ARENA TAB (Match + Leagues + History)
This is also the same page users land on when they click any match card.
Match Details Page
Team A vs Team B
Date, venue, time
Lineups
Live score (optional later)
Commentary or recap
Photos
Share button
Leagues Section
List of leagues (e.g., Inter-hall, Inter-class, Faculty leagues)
Each league has:
Fixtures
Standings
Rules
Past winners
Past Winners
Year-by-year champions
Trophy display layout
Ability to drill into specific year and see tournament details
6️⃣ LOCKER ROOMS TAB (Fan communities)
Structure
Sports tabs
Each sport → list of available chat rooms
Example: “Men’s Football Team Fans”
Example: “Volleyball Community”
Real-time chat (Firebase likely)
Moderate content controls later
7️⃣ PROFILE TAB
User profile (name, avatar, email)
Favorite sports, teams, players
Notifications preferences
Manage Google account link/logout
8️⃣ DRAWER (Side navigation)
Accessible from Home (and possibly globally if you choose).
Contains:
Quick switch between sports
Shortcuts:
Home
Arena
Locker Rooms
Profile
Help / About
Settings
Sign out
THE MISSING 5TH TAB — OPTIONS
Here are some strong candidates:
Stats & Insights
Leaderboards
Top scorers
MVPs
Records
Events
Sports calendar
Register for events
RSVP
Media
Photos
Highlights
Replays
Shop / Merchandise
Jerseys
Tickets
Event passes