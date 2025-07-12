#!/bin/bash

# Migration: Create Paradigm Tracking System
# Creates folder structure for tracking paradigm shifts and conversation compaction

ROOT="$HOME/Sites/ai/the_game"
cd "$ROOT"

echo "Creating paradigm tracking system..."

# Create main paradigm tracking structure
mkdir -p Schema/Paradigms/V1.0
mkdir -p Schema/Paradigms/Templates
mkdir -p Schema/Compactions/Sessions
mkdir -p Schema/Compactions/Conversations

# Create paradigm template
cat > Schema/Paradigms/Templates/paradigm-template.md << 'EOF'
---
type: paradigm-shift
version: [X.X]
date: [YYYY-MM-DD]
session: [session-name]
previous_version: [X.X]
tags: [paradigm, shift, version]
---

# Paradigm Shift: [Version] - [Title]

## Summary
Brief description of the fundamental change or breakthrough.

## Key Changes
- **Added**: New features/concepts introduced
- **Modified**: Existing elements that changed
- **Removed**: Elements no longer relevant
- **Enhanced**: Improvements to existing functionality

## Context
What led to this paradigm shift? What problem was solved or opportunity identified?

## Impact
- **Technical**: Changes to system architecture
- **User Experience**: How this affects learning flow
- **Future Implications**: What this enables going forward

## Conversation Summary
[Auto-generated from conversation compaction]

## Files Modified
- [ ] File 1: Description of changes
- [ ] File 2: Description of changes

## Migration Notes
Instructions for updating existing instances to new paradigm.

## Links
- [[../V[prev]/|Previous Paradigm]]
- [[../../CHANGELOG|Full Changelog]]
- [[../../README|Schema Documentation]]
EOF

# Create conversation compaction template
cat > Schema/Compactions/Templates/conversation-summary.md << 'EOF'
---
type: conversation-summary
session: [session-name]
date: [YYYY-MM-DD]
paradigm_version: [X.X]
participants: [human, ai]
tags: [conversation, summary, compaction]
---

# Conversation Summary: [Session Name]

## Overview
High-level summary of the conversation and its outcomes.

## Key Decisions Made
1. **Decision 1**: Context and rationale
2. **Decision 2**: Context and rationale

## Actions Taken
- [ ] Action 1: Description and outcome
- [ ] Action 2: Description and outcome

## Code/Structure Changes
### Files Created
- File path: Purpose and content summary

### Files Modified  
- File path: Changes made and reasoning

### System Architecture
Description of any structural or paradigm changes.

## Learning Outcomes
- **Concepts Explored**: New ideas or approaches discussed
- **Problems Solved**: Issues resolved during conversation
- **Questions Raised**: Outstanding items for future exploration

## Follow-up Items
- [ ] Task 1: Description
- [ ] Task 2: Description

## Context for Future Sessions
Key information that should be remembered for continuation.

## Links
- [[../../Paradigms/V[X.X]/|Related Paradigm]]
- [[../Sessions/|Other Sessions]]
EOF

# Create V1.0 paradigm documentation
cat > Schema/Paradigms/V1.0/initial-architecture.md << 'EOF'
---
type: paradigm-shift
version: 1.0
date: 2025-07-11
session: the_game
previous_version: 0.0
tags: [paradigm, initial, architecture, learning-game]
---

# Paradigm Shift: V1.0 - Initial Learning Game Architecture

## Summary
Established foundational architecture for domain-agnostic learning game system with avatar progression, session tracking, and schema-driven structure.

## Key Changes
- **Added**: Complete Games and Schema folder structures
- **Added**: Migration scripts for automated deployment
- **Added**: Obsidian integration with front matter and wiki-links
- **Added**: Avatar-based progress tracking system
- **Added**: Domain-agnostic learning support
- **Enhanced**: AVATAR.md with structured learning status

## Context
Built from analysis of Schema/README.md requirements and existing Notes iterations. Needed systematic approach to track learning across multiple knowledge domains beyond just programming.

## Impact
- **Technical**: Established repeatable migration pattern and comprehensive data schemas
- **User Experience**: Clear progression system with XP, degrees, and session structure
- **Future Implications**: Foundation for interactive game instances and AI summarization strategies

## Conversation Summary
Analyzed requirements from multiple perspectives (technical, project management, UX). Created migration scripts for Games (avatar tracking, session management) and Schema (init scripts, data models). Implemented Obsidian Extended Markdown with front matter properties and wiki-links. Formatted AVATAR.md for consistency and established paradigm tracking system.

## Files Modified
- [x] Schema/Migrations/create_games_structure.sh: Complete Games hierarchy
- [x] Schema/Migrations/create_schema_structure.sh: Schema system architecture  
- [x] Schema/CHANGELOG.md: V1.0 implementation documentation
- [x] AVATAR.md: Formatted with front matter and learning status
- [x] Games/ structure: Hub, templates, example Vue Mastery instance
- [x] Schema/ structure: Init scripts, variable schemas, defaults

## Migration Notes
Run migration scripts to establish structure. Update AVATAR.md with personal information. Use templates to create new game instances. Follow CHANGELOG format for future updates.

## Links
- [[../../CHANGELOG|Full Changelog]]
- [[../../README|Schema Documentation]]
- [[../Templates/paradigm-template|Paradigm Template]]
EOF

# Create session compaction for the_game
cat > Schema/Compactions/Sessions/the_game_2025-07-11.md << 'EOF'
---
type: conversation-summary
session: the_game
date: 2025-07-11
paradigm_version: 1.0
participants: [alvar-sirlin, claude]
tags: [conversation, summary, initial-implementation]
---

# Conversation Summary: the_game

## Overview
Implemented V1.0 learning game architecture from Schema/README.md analysis, creating comprehensive structure for domain-agnostic learning with avatar progression.

## Key Decisions Made
1. **Domain-Agnostic Design**: Expand beyond programming to support any knowledge area
2. **Migration Script Approach**: Use automated scripts for repeatable deployments
3. **Obsidian Integration**: Leverage Extended Markdown features for rich connections
4. **Avatar Consolidation**: Move global status into AVATAR.md for consistency

## Actions Taken
- [x] Analyzed Schema/README.md from technical, PM, and UX perspectives
- [x] Created migration scripts for Games and Schema structures
- [x] Built complete folder hierarchy with templates and examples
- [x] Implemented Obsidian front matter and wiki-link integration
- [x] Updated CHANGELOG.md with V1.0 documentation
- [x] Formatted AVATAR.md with structured learning status
- [x] Established paradigm tracking system

## Code/Structure Changes
### Files Created
- Schema/Migrations/create_games_structure.sh: Games hierarchy automation
- Schema/Migrations/create_schema_structure.sh: Schema system creation
- Games/ complete structure: Hub, templates, Vue Mastery example
- Schema/ complete structure: Init scripts, variables, defaults
- Schema/CHANGELOG.md: Version tracking documentation
- Schema/Paradigms/ tracking system

### Files Modified  
- AVATAR.md: Added front matter, structured sections, corrected links

### System Architecture
Established foundation for learning game system with avatar progression, session tracking, degree-based advancement, and comprehensive schema definitions supporting any knowledge domain.

## Learning Outcomes
- **Concepts Explored**: Domain-agnostic learning systems, Obsidian Extended Markdown
- **Problems Solved**: Structured approach to tracking learning across multiple domains
- **Questions Raised**: How to implement interactive game instances and AI summarization

## Follow-up Items
- [ ] Test structure in Obsidian environment
- [ ] Create first actual learning session using Vue Mastery template
- [ ] Develop AI summarization strategies
- [ ] Design interactive game mechanics

## Context for Future Sessions
V1.0 foundation established. Next paradigm shifts should focus on interactive elements and AI compaction strategies. Always reference Schema/README.md for ongoing requirements and update paradigm tracking when fundamental changes occur.

## Links
- [[../../Paradigms/V1.0/initial-architecture|V1.0 Paradigm]]
- [[../../CHANGELOG|System Changelog]]
EOF

echo "Paradigm tracking system created successfully!"
echo "Created:"
echo "  - Schema/Paradigms/ (version tracking)"
echo "  - Schema/Compactions/ (conversation summaries)"
echo "  - V1.0 paradigm documentation"
echo "  - the_game session summary"