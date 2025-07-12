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
