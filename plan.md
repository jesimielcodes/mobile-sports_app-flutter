# School Sports App Plan

## 1. Vision
Create a **student-focused, school-scoped sports platform** that centralizes teams, competitions, and community engagement — essentially a "Canvas for Sports."  
The app will provide:

- Bulletin boards for school sports announcements
- Team management and discovery
- Competition schedules and standings
- A locker-room space for team/community interaction
- School-scoped authentication to ensure data privacy

The goal is to combine **software engineering skills, UX design, and system thinking** into a functional, scalable MVP.

---

## 2. Target Users
- Students
- Team captains / student-athletes
- Coaches / athletic department staff (optional MVP feature)
- Potential future: parents or alumni (for updates/visibility)

---

## 3. Core Features

### 3.1 MVP Features
- **Authentication & School Scoping**
  - Email-based login
  - Domain validation to ensure users belong to selected school
  - Store `schoolId` in user profile
- **Bulletin**
  - Text-based posts
  - School-wide feed
- **Teams**
  - List of teams per school
  - Team detail page
- **Navigation**
  - Bottom tab navigation: Bulletin | Arena | Locker Rooms | Profile

### 3.2 Future Features (Post-MVP)
- Match scheduling and automated standings
- Media posts (images/videos)
- Inter-school competitions (optional)
- Role-based access (admin, captain, student)
- Analytics & participation tracking
- Sponsorship / freemium features

---

## 4. Tech Stack

| Layer                  | Technology/Framework |
|------------------------|-------------------|
| Frontend               | Flutter            |
| State Management       | Provider / Riverpod|
| Backend / Database     | Firebase Firestore |
| Authentication         | Firebase Auth     |
| Storage (media)        | Firebase Storage  |
| Cloud Logic / Functions| Firebase Functions|
| Deployment             | Android/iOS (Flutter build) |

---

## 5. Data Model (Basic)

schools/{schoolId}
├── name
├── allowedDomains
├── teams/{teamId}
├── posts/{postId}
├── matches/{matchId}

users/{userId}
├── name
├── email
├── schoolId
├── role (student, captain, admin)
├── teams[]



**Note:** Security rules will enforce school isolation for all collections.

---

## 6. MVP Timeline (2 Weeks)

| Day | Task |
|-----|------|
| 1–2  | Firebase setup: auth + Firestore, basic email sign-in |
| 3–4  | School selection + domain validation, store `schoolId` |
| 5–6  | Firestore schema setup: users, posts, teams |
| 7–8  | Bulletin feed (create + read posts) |
| 9–10 | Team listing + detail pages |
| 11–12| UI/UX polish (colors, typography, spacing, loading/empty states) |
| 13–14| Error handling, edge cases, final cleanup, README/screenshots |

---

## 7. UI / UX Guidelines
- Keep design simple, clean, readable
- Use consistent spacing, typography, and color scheme
- Reference **Material Design** or existing apps like **Canvas / TeamSnap**
- Focus on clarity over animations or unnecessary flourishes
- Empty/loading states should be informative

---

## 8. School-Scoped Authentication Flow
1. User selects their school
2. User enters email
3. Firebase Auth validates email
4. App checks domain against selected school
5. If mismatch → reject login
6. On success → store `schoolId` and role, navigate to Bulletin

**Security rules** enforce school isolation in Firestore, preventing cross-school access.

---

## 9. Monetisation (Future)
- Target payer: schools / athletic departments
- Freemium features:
  - Free: core bulletin + teams
  - Paid: branding, advanced moderation, analytics
- Sponsorships or inter-school tournaments could be monetised
- Students remain free users

---

## 10. Success Metrics (MVP)
- Students can sign in and belong to exactly one school
- Bulletin feed works end-to-end
- Teams are visible per school
- No cross-school data leaks
- Clean, readable UI for mobile
- MVP is demonstrable and shareable (LinkedIn / portfolio)

---

## 11. Next Steps
- [ ] Complete Firebase Auth integration
- [ ] Set up Firestore schema with security rules
- [ ] Implement school-scoped bulletin feed
- [ ] Implement teams page
- [ ] Polish UI/UX for MVP
- [ ] Test login flow, domain restrictions, and feed functionality
- [ ] Prepare for LinkedIn post demo

---

## 12. Notes
- MVP should be **minimal but functional**
- Avoid feature creep
- Focus on clarity, correctness, and school-scoped isolation
- Every day commit progress (even a small feature) to GitHub
