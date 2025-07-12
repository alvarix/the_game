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
