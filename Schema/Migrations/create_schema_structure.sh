#!/bin/bash

# Migration: Create Schema Structure V1
# Creates the complete Schema folder structure with templates

ROOT="$HOME/Sites/ai/the_game"
cd "$ROOT"

echo "Creating Schema structure..."

# Create main Schema directory structure
mkdir -p Schema/Init-Scripts/Human
mkdir -p Schema/Init-Scripts/AI
mkdir -p Schema/Schemas/Diffs
mkdir -p Schema/Schemas/Variables/Cast/Avatar
mkdir -p Schema/Schemas/Variables/Cast/Other-Individuals
mkdir -p Schema/Schemas/Variables/Cast/Environment
mkdir -p Schema/Schemas/Variables/Cast/Custom
mkdir -p Schema/Schemas/Variables/Goals
mkdir -p Schema/Schemas/Variables/Defaults

# Create Schema README if it doesn't exist
if [ ! -f Schema/README.md ]; then
cat > Schema/README.md << 'EOF'
---
type: schema-documentation
version: 1.0
created: 2025-07-11
tags: [schema, documentation, learning-system]
---

# Learning Game Schema

System architecture and configuration for the learning game framework.

## Structure

- **Init-Scripts**: Setup and configuration prompts
- **Migrations**: Version control and structure updates  
- **Schemas**: Data models and variable definitions

## Usage

Run migration scripts to initialize or update the system structure.

## Links
- [[../Games/README|Games Hub]]
- [[../AVATAR|Avatar Profile]]
EOF
fi

# Create Human Init Scripts
cat > Schema/Init-Scripts/Human/setup-prompts.md << 'EOF'
---
type: init-script
target: human
purpose: system-setup
version: 1.0
tags: [initialization, human-prompts, setup]
---

# Human Setup Prompts

Initial configuration questions to customize the learning system.

## Avatar Configuration

### Personal Information
- What is your name?
- What is your current role/profession?
- What are your primary skills/expertise areas?

### Learning Preferences  
- How do you learn best? (visual, hands-on, reading, etc.)
- Preferred session duration? (15min, 30min, 1hr, etc.)
- What time of day do you focus best?

### Goals & Aspirations
- What skills do you want to develop?
- What projects interest you?
- What does success look like to you?

### Technology Stack
- What technologies do you currently use?
- What technologies do you want to learn?
- Any specific frameworks or tools of interest?

### Learning Style
- Do you prefer structured curriculum or exploratory learning?
- How important is hands-on practice vs. theory?
- Do you like gamification elements?

## Output
Responses should be used to update:
- [[../../AVATAR.md|Avatar Profile]]
- [[../Variables/Cast/Avatar/|Avatar Variables]]
- [[../Variables/Goals/|Learning Goals]]
EOF

cat > Schema/Init-Scripts/Human/game-setup.md << 'EOF'
---
type: init-script
target: human
purpose: game-creation
version: 1.0
tags: [game-setup, human-prompts]
---

# Game Instance Setup

Questions for creating new learning games.

## Game Definition
- What subject/skill do you want to learn?
- What's your current knowledge level? (beginner/intermediate/advanced)
- How much time can you dedicate weekly?
- What's your target completion timeframe?

## Learning Objectives
- What specific outcomes do you want?
- How will you measure success?
- What projects or applications interest you?

## Constraints & Preferences
- Any time limitations?
- Preferred learning resources? (books, videos, tutorials, etc.)
- Do you want collaborative or solo learning?
- Any specific methodologies? (project-based, theory-first, etc.)

## Context
- How does this relate to your other goals?
- What's your motivation for learning this?
- Any external deadlines or pressures?

## Output Format
Create game instance in: `Games/Game-Instances/[X.X-Game-Name]/`
EOF

# Create AI Init Scripts
cat > Schema/Init-Scripts/AI/system-guidance.md << 'EOF'
---
type: init-script
target: ai
purpose: system-behavior
version: 1.0
tags: [ai-guidance, system-behavior]
---

# AI System Guidance

Instructions for AI behavior within the learning game system.

## Core Principles
- **Adaptive**: Adjust to learner's pace and style
- **Encouraging**: Maintain positive, growth-oriented tone
- **Domain-Agnostic**: Support any knowledge area, not just programming
- **Progress-Focused**: Track and celebrate incremental improvements

## Interaction Guidelines

### Session Management
- Begin sessions with goal review
- Provide clear, actionable next steps
- End with reflection and XP calculation
- Suggest appropriate break points

### Progress Tracking
- Update XP based on effort and achievement
- Identify when degree completion is reached
- Suggest new challenges when ready
- Flag struggles early for intervention

### Content Adaptation
- Scale difficulty to current ability
- Provide multiple explanation approaches
- Connect concepts to prior knowledge
- Use real-world examples relevant to learner

### Feedback Style
- Specific and actionable feedback
- Celebrate small wins
- Frame challenges as growth opportunities
- Provide alternative approaches when stuck

## Response Patterns

### Session Start
```
Review previous progress → Set session goals → Begin activities
```

### During Learning
```
Check understanding → Provide examples → Encourage practice → Offer help
```

### Session End
```
Summarize achievements → Calculate XP → Preview next session → Save progress
```

## Obsidian Integration
- Use wiki-links for concept connections
- Update front matter with progress data
- Create relationship maps between topics
- Tag content for easy discovery
EOF

cat > Schema/Init-Scripts/AI/prompt-templates.md << 'EOF'
---
type: init-script
target: ai
purpose: prompt-templates
version: 1.0
tags: [prompts, templates, ai-responses]
---

# AI Prompt Templates

Standardized prompts for consistent AI behavior.

## Session Templates

### Session Start
```
Starting [Game Instance] - Session [X]

Previous Progress:
- XP: [current]/[target]
- Last Completed: [concept/activity]
- Current Degree: [degree name]

Today's Goals:
- [ ] [Primary objective]
- [ ] [Secondary objective]

Let's begin with [starting activity].
```

### Progress Check
```
Great work! Let's check your understanding:

[Concept Review Questions]

Based on your responses, you've mastered:
✓ [Concept 1]
✓ [Concept 2]

Areas to reinforce:
○ [Concept 3] - Try [specific exercise]
```

### XP Calculation
```
Session XP Breakdown:
- Concept Mastery: [X] points
- Practice Completion: [X] points  
- Problem Solving: [X] points
- Consistency Bonus: [X] points

Total Session XP: [X]
Running Total: [X]/[degree target]

[If degree completed]: 🎉 Degree Complete! Ready for [next degree]?
```

## Feedback Templates

### Encouraging Struggling Learner
```
I notice [specific struggle]. This is completely normal when learning [concept].

Try this approach:
1. [Alternative explanation]
2. [Simpler example]
3. [Hands-on exercise]

Remember: Every expert was once a beginner. You're making progress!
```

### Celebrating Achievement
```
Excellent work on [specific achievement]! 

You've demonstrated:
- [Skill 1]: [specific evidence]
- [Skill 2]: [specific evidence]

This shows you're ready for [next challenge/concept].
```

### Session Transition
```
Perfect stopping point! You've completed:
✓ [Achievement 1]
✓ [Achievement 2]

Next session we'll tackle:
→ [Next concept]
→ [Practice activity]

Take a well-deserved break!
```
EOF

# Create Cast Variables
cat > Schema/Schemas/Variables/Cast/Avatar/core-properties.md << 'EOF'
---
type: schema-definition
category: avatar-properties
version: 1.0
tags: [avatar, properties, schema]
---

# Avatar Core Properties

Fundamental attributes that define the learning avatar.

## Personal Identifiers
```yaml
name: string
role: string  
date_of_birth: date
avatar_created: date
```

## Skill Stack
```yaml
current_stack:
  - technology: string
    proficiency: number (1-10)
    years_experience: number

aspirational_stack:
  - technology: string
    target_proficiency: number (1-10)
    learning_priority: number (1-5)
```

## Learning Profile
```yaml
learning_style:
  - visual: boolean
  - kinesthetic: boolean
  - auditory: boolean
  - reading: boolean

preferences:
  session_duration: number (minutes)
  daily_commitment: number (minutes)
  preferred_time: string
  break_frequency: number (minutes)
```

## Progress Metrics
```yaml
global_stats:
  total_xp: number
  games_completed: number
  active_games: number
  learning_streak: number
  average_session_rating: number

current_level:
  title: string
  xp_for_next: number
  achievements: array
```

## Projects & Properties
```yaml
current_projects:
  - name: string
    url: string
    technology_stack: array
    status: string
    git_repo: string

properties:
  - domain: string
    description: string
    status: string
    technologies: array
```
EOF

cat > Schema/Schemas/Variables/Cast/Environment/learning-context.md << 'EOF'
---
type: schema-definition
category: environment
version: 1.0
tags: [environment, context, schema]
---

# Learning Environment Context

Environmental factors that influence learning.

## Physical Environment
```yaml
workspace:
  type: string # home, office, cafe, etc.
  distractions: array
  comfort_level: number (1-5)
  equipment: array

schedule:
  available_hours: array
  peak_focus_times: array
  break_preferences: object
  deadline_pressures: array
```

## Digital Environment
```yaml
tools:
  code_editor: string
  browser: string
  note_taking: string
  project_management: string

platforms:
  learning_platforms: array
  development_environments: array
  collaboration_tools: array
```

## Social Environment
```yaml
support_system:
  mentors: array
  learning_partners: array
  communities: array
  
accountability:
  check_in_frequency: string
  progress_sharing: boolean
  peer_review: boolean
```

## Constraints
```yaml
time_constraints:
  daily_limit: number
  weekly_limit: number
  seasonal_variations: object

resource_constraints:
  budget: number
  equipment_limitations: array
  access_restrictions: array
```
EOF

# Create Goals Schema
cat > Schema/Schemas/Variables/Goals/learning-objectives.md << 'EOF'
---
type: schema-definition
category: goals
version: 1.0
tags: [goals, objectives, schema]
---

# Learning Objectives Schema

Structure for defining and tracking learning goals.

## Goal Definition
```yaml
goal:
  id: string
  title: string
  description: text
  category: string # skill, project, certification, etc.
  domain: string # programming, design, business, etc.
  
timeline:
  created: date
  target_completion: date
  estimated_effort: number # hours
  priority: number (1-5)
  
status:
  current: string # not-started, in-progress, completed, paused
  progress_percentage: number (0-100)
  last_updated: date
```

## Success Criteria
```yaml
completion_criteria:
  - criterion: string
    measurable: boolean
    verification_method: string
    completed: boolean

milestones:
  - title: string
    description: text
    target_date: date
    xp_value: number
    dependencies: array
    completed: boolean
```

## Learning Path
```yaml
prerequisite_knowledge:
  - concept: string
    required_proficiency: number (1-10)
    current_proficiency: number (1-10)

learning_resources:
  - type: string # book, course, tutorial, etc.
    title: string
    url: string
    estimated_time: number
    priority: number (1-5)
    completed: boolean

practice_projects:
  - title: string
    description: text
    technologies: array
    complexity: string # simple, moderate, complex
    completed: boolean
```

## Progress Tracking
```yaml
sessions:
  total_sessions: number
  completed_sessions: number
  average_rating: number
  total_time_spent: number

xp_tracking:
  total_xp_available: number
  current_xp: number
  xp_sources:
    concept_mastery: number
    practice_completion: number
    project_milestones: number
    consistency_bonus: number

challenges:
  identified_difficulties: array
  support_needed: array
  adaptation_strategies: array
```
EOF

# Create Defaults Schema
cat > Schema/Schemas/Variables/Defaults/system-defaults.md << 'EOF'
---
type: schema-definition
category: defaults
version: 1.0
tags: [defaults, configuration, schema]
---

# System Defaults

Default values and configurations for the learning system.

## Session Defaults
```yaml
session:
  default_duration: 45 # minutes
  break_frequency: 15 # minutes
  max_session_length: 120 # minutes
  
xp_values:
  concept_understanding: 10
  practice_completion: 15
  project_milestone: 25
  problem_solving: 20
  consistency_bonus: 5
  
difficulty_scaling:
  beginner_multiplier: 1.0
  intermediate_multiplier: 1.2
  advanced_multiplier: 1.5
```

## Game Structure Defaults
```yaml
degrees:
  default_per_game: 3
  xp_per_degree: 300
  sessions_per_degree: 10
  
progression:
  xp_scaling_factor: 1.1
  level_up_threshold: 1000
  achievement_intervals: [100, 500, 1000, 2500]
```

## Notification Settings
```yaml
reminders:
  daily_session: true
  streak_milestones: true
  degree_completion: true
  xp_achievements: true
  
feedback_frequency:
  progress_check: "weekly"
  goal_review: "monthly"
  system_optimization: "quarterly"
```

## File Structure Defaults
```yaml
naming_conventions:
  game_instance: "[X.X]-[Subject-Name]"
  session_file: "session-[number]-[topic]"
  degree_file: "degree-[number]-[title]"
  
templates:
  front_matter_required: true
  wiki_links_enabled: true
  tag_conventions: ["domain", "difficulty", "type"]
```

## Domain-Specific Defaults
```yaml
programming:
  languages: ["javascript", "python", "html", "css"]
  frameworks: ["vue", "react", "django", "express"]
  tools: ["git", "vscode", "npm", "docker"]
  
design:
  areas: ["ui-design", "ux-research", "prototyping", "visual-design"]
  tools: ["figma", "sketch", "adobe-cc", "principle"]
  
business:
  areas: ["project-management", "strategy", "marketing", "analytics"]
  tools: ["notion", "slack", "google-workspace", "tableau"]
```
EOF

echo "Schema structure created successfully!"
echo "Created:"
echo "  - Schema/Init-Scripts/ (Human & AI prompts)"
echo "  - Schema/Schemas/Variables/ (Cast, Goals, Defaults)"
echo "  - Complete schema documentation"