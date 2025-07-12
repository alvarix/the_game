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
