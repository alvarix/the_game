# Schema Changelog

All notable changes to the learning game schema will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-07-11

### Added
- **V1 Structure Implementation**: Complete learning game architecture
- **Games Hub**: Central structure for tracking learning progress
  - Global Avatar Status tracking system
  - Game Instances with Sessions/Degrees/Migrations structure
  - Templates for creating new learning games
  - Example game instance: "1.1-Vue-Mastery" 
- **Schema System**: Comprehensive data models and configuration
  - Init Scripts for Human and AI setup prompts
  - Variable schemas for Cast (Avatar, Environment, Others)
  - Learning Goals and Objectives framework
  - System defaults and configuration templates
- **Migration Scripts**: Automated structure creation
  - `create_games_structure.sh`: Builds complete Games hierarchy
  - `create_schema_structure.sh`: Creates Schema system architecture
- **Obsidian Integration**: Extended markdown features
  - Front matter properties for progress tracking
  - Wiki-links for concept connections
  - Tag-based organization system
  - Domain-agnostic learning support

### Features
- Avatar-based progress tracking across multiple knowledge domains
- XP system with degrees and session-based learning
- Structured templates for game instances and learning sessions
- Human and AI prompt systems for initialization
- Comprehensive schema definitions for all system components

### Technical Details
- File structure follows hierarchical organization pattern
- YAML front matter for metadata management
- Markdown-based documentation with cross-references
- Shell script migrations for repeatable deployments
- Git-based version control integration

### Notes
- System designed to be domain-agnostic (programming, design, business, etc.)
- Foundation laid for future interactive game instances
- Architecture supports AI compaction and summarization strategies