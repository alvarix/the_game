# Documentation Structure - The Great Game v2.0

## Organization Philosophy

Documentation follows the environmental consciousness model:

### Core Structure
```
docs/
├── README.md                    # This file - navigation guide
├── environmental-spirits/       # Tool consciousness documentation
├── faculty/                     # Mentor profiles and teaching methods  
├── sessions/                    # Learning session templates and logs
├── concepts/                    # Evolving understanding of key topics
└── progressions/               # Gate testing and advancement tracking
```

### File Naming Conventions

**Concept Evolution**: `concept-name-v[level]-[faculty].md`
- Example: `reactivity-v1-elena.md` (Dr. Vasquez's introduction)
- Example: `reactivity-v2-marcus.md` (Prof. Chen's architectural view)

**Session Logs**: `YYYY-MM-DD-[faculty]-[topic].md`  
- Example: `2025-07-06-elena-mobile-first-testing.md`

**Spirit Documentation**: `[spirit-name]-guide.md`
- Example: `shell-guardian-guide.md`

**Gate Assessments**: `gate-[level]-[topic]-assessment.md`
- Example: `gate-1-symbol-recognition-assessment.md`

### Cross-Linking Strategy

Use Obsidian internal links extensively:
- `[[concept-name]]` for core concepts
- `[[faculty/mentor-name]]` for mentor profiles  
- `[[environmental-spirits/spirit-name]]` for tool consciousness
- `[[sessions/date-topic]]` for specific learning moments

### Version Control Integration

Each documentation update should correspond to git commits:
```bash
git add docs/
git commit -m "Docs: [concept] - [new understanding level]"
```

## Documentation as Learning Tool

Documentation isn't just record-keeping - it's active learning infrastructure:

1. **Concept Files** evolve as understanding deepens
2. **Session Logs** capture breakthrough moments for reference
3. **Cross-Links** reveal unexpected connections between topics
4. **Git History** preserves learning timeline and allows backtracking

## Documentation Standards

- **Clarity Over Cleverness**: Write for your future confused self
- **Mobile-First Thinking**: Consider how concepts work on small screens
- **Environmental Awareness**: Note which tools/spirits contributed to understanding
- **Progressive Enhancement**: Add complexity gradually, preserve simple foundations

---

*Documentation as consciousness - every file a neuron in the learning network*