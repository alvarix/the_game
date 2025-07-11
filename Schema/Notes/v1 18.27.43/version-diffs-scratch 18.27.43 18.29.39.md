# SCRATCH: Version Evolution Diffs - the_game

## Namespace Resolution: 2025-01-06

### PROBLEM IDENTIFIED
- Namespace collision between framework versions and problem instances
- `v1-vue-mastery` conflated version progression with specific learning instance
- Need separation between system evolution and learning problem domains

### SOLUTION IMPLEMENTED
- **Base location**: `~/Sites/ai/the_game/` (clean namespace)
- **Schema evolution**: inputs.yaml captures fuller state progression
- **Version tracking**: File structure captures version-to-version changes

---

## Schema Progression Diffs

### v2.0 → v3.0 DIFF (Current Implementation)

#### NEW SECTIONS ADDED:
```yaml
# + curriculum structure
curriculum:
  current_phase: "phase-1-big-picture"
  phases:
    phase_1:
      name: "The Big Picture - Why Does Vue Exist?"
      blocks:
        problem_solution_map: {...}
        reactivity_revolution: {...}

# + progress tracking
progress:
  phase_1:
    problem_solution_map: "not-started"
    reactivity_revolution: "not-started"
  overall_skill_level: "v1-recognition"
  confusion_areas: [...]

# + real projects mapping
real_projects:
  flogger_app:
    role: "complexity-analysis-target"
    status: "analysis-pending"
  fourth_property:
    role: "publishing-target"
    status: "planning"

# + publishing strategy
publishing_strategy:
  target: "fourth-web-property"
  purpose: "Document and share AI-human collaborative learning"
  research_needed: {...}
```

#### MODIFIED SECTIONS:
```yaml
# BEFORE (v2.0):
faculty:
  primary: "Dr. Elena Vasquez"
  secondary: "Prof. Marcus Chen"
  tertiary: "Dr. Amira Hassan"

# AFTER (v3.0): Added context and specializations
faculty:
  primary: "Dr. Elena Vasquez"    # Mobile-first accountability, "Her" consciousness
  secondary: "Prof. Marcus Chen"  # Symbol soup decoder, "Matrix" architecture  
  tertiary: "Dr. Amira Hassan"   # Creative technologist, "Arrival" linguistics
```

---

## File Structure Diffs

### v2.0 Structure (thegame/)
```
thegame/
├── README.md
├── docs/
├── environmental-spirits/
├── faculty/
└── sessions/
```

### v3.0 Structure (the_game/)
```
the_game/
├── inputs.yaml                    # ← NEW: Full state schema
├── curriculum/                    # ← NEW: Structured learning
│   └── phase-1-big-picture/
│       ├── 1.1-problem-solution-map/
│       └── 1.2-reactivity-revolution/
├── publishing/                    # ← NEW: Web strategy
│   └── strategy-analysis.md
├── environmental-spirits/         # ← INHERITED
├── faculty/                       # ← INHERITED  
└── sessions/                      # ← INHERITED
```

### NEW FILES CREATED:
1. `inputs.yaml` - v3.0 schema with curriculum and publishing
2. `curriculum/phase-1-big-picture/1.1-problem-solution-map/README.md`
3. `curriculum/phase-1-big-picture/1.2-reactivity-revolution/README.md`
4. `publishing/strategy-analysis.md`

---

## Content Evolution: Phase 1 Curriculum

### 1.1 Problem-Solution Map
**CONCEPT**: "Every tool solves specific problems. Understanding the problem makes the solution feel logical."

**KEY INSIGHT**: Vue = "Automated DOM sync + Component architecture + Developer experience"

**EXERCISE**: flogger.app complexity analysis - find manual DOM sync points

### 1.2 Reactivity Revolution  
**CONCEPT**: "The core insight that changed everything: Data should automatically drive interface updates."

**MENTAL MODEL**: Spreadsheet analogy - change data, UI updates automatically

**FOCUS**: Before/after examples showing imperative vs declarative approaches

---

## Publishing Strategy Research

### Fourth Web Property: thegame.alvarsirlin.dev
**PURPOSE**: AI-human collaborative learning showcase
**AUDIENCE**: Self-taught developers, AI learning enthusiasts
**CONTENT**: Curriculum + progress + methodology

### Technical Stack Decision Matrix:
1. **Vue.js**: Practice while building (meta-learning)
2. **Astro**: Proven, content-focused (safe choice)  
3. **Static**: Simple, fast implementation

### Hosting: Vercel (recommended)
- Vue.js support
- Git-based deployment
- Preview deployments

---

## Migration Tasks Completed

### ✅ DONE:
- [x] Created `~/Sites/ai/the_game/` base structure
- [x] Established v3.0 inputs.yaml schema
- [x] Built Phase 1 curriculum structure  
- [x] Documented 1.1 Problem-Solution Map
- [x] Documented 1.2 Reactivity Revolution
- [x] Created publishing strategy analysis
- [x] Established version diff tracking

### 🔄 IN PROGRESS:
- [ ] Faculty profiles migration to new structure
- [ ] Environmental spirits content migration
- [ ] Session template creation

### ⏭️ NEXT:
- [ ] Framework decision for web publishing
- [ ] Domain acquisition (thegame.alvarsirlin.dev)
- [ ] Content audit of existing materials
- [ ] First learning session using new curriculum

---

## Key Decisions Made

### 1. Namespace Separation ✅
- Framework evolution: `~/Sites/ai/the_game/` (system itself)
- Problem instances: Future structure for different learning domains

### 2. Schema Evolution ✅  
- inputs.yaml captures full game state
- Version-to-version progression documented
- Cleaner separation of concerns

### 3. Curriculum Structure ✅
- Phase-based progression
- Block-based learning units
- Clear completion criteria

### 4. Publishing Direction ✅
- Fourth web property confirmed
- Domain strategy: thegame.alvarsirlin.dev
- Content strategy: Learning documentation + methodology

---

## Next Session Focus

**READY FOR**: First Phase 1 learning session
**FACULTY**: Dr. Elena Vasquez + Prof. Marcus Chen
**TOPIC**: 1.1 Problem-Solution Map - flogger.app complexity analysis
**GOAL**: Complete first curriculum block using new structure

**ENVIRONMENT**:
- ✅ the_game structure established
- ✅ Curriculum documented  
- ✅ Progress tracking ready
- ✅ Faculty guidance defined

*System ready for Phase 1, Block 1.1 learning session activation.*