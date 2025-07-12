#!/bin/bash

# Migration: Restructure Cast for Schema/Game Data Separation
# Separates default/template personas from game instance data

ROOT="$HOME/Sites/ai/the_game"
cd "$ROOT"

echo "Restructuring Cast for proper Schema/Game separation..."

# Create new Schema structure
mkdir -p Schema/Variables/Cast/Defaults/Teachers
mkdir -p Schema/Variables/Cast/Defaults/Spirits
mkdir -p Schema/Variables/Cast/Defaults/Environments/Geographic
mkdir -p Schema/Variables/Cast/Defaults/Environments/Weather
mkdir -p Schema/Variables/Cast/Defaults/Environments/Historical
mkdir -p Schema/Variables/Cast/Defaults/Environments/Academic

# Create new Games structure for instance-specific personas
mkdir -p Games/Cast/Active-Mentors
mkdir -p Games/Cast/Current-Spirits
mkdir -p Games/Cast/Session-Environment

# Move existing personas to appropriate Schema defaults
if [ -f "Schema/Variables/Cast/Other-Individuals/dr-elena-vasquez.md" ]; then
    mv "Schema/Variables/Cast/Other-Individuals/dr-elena-vasquez.md" "Schema/Variables/Cast/Defaults/Teachers/"
fi

if [ -f "Schema/Variables/Cast/Environment/shell-guardian.md" ]; then
    mv "Schema/Variables/Cast/Environment/shell-guardian.md" "Schema/Variables/Cast/Defaults/Spirits/"
fi

if [ -f "Schema/Variables/Cast/Environment/phd-degree-persona.md" ]; then
    mv "Schema/Variables/Cast/Environment/phd-degree-persona.md" "Schema/Variables/Cast/Defaults/Environments/Academic/"
fi

# Create comprehensive teacher defaults
cat > Schema/Variables/Cast/Defaults/Teachers/faculty-catalog.md << 'EOF'
---
type: faculty-catalog
category: teachers-database
version: 1.0
tags: [teachers, faculty, mentors, defaults]
---

# Faculty Catalog - Default Teachers

## Computer Science & Programming
- **Dr. Elena Vasquez** - Mobile-First Mathematics & Accessibility
- **Prof. Marcus Chen** - Framework Architecture & Symbol Patterns
- **Dr. Amira Hassan** - Creative Technology & Data Visualization
- **Prof. James Wright** - Legacy Systems & Migration Strategies
- **Dr. Sarah Kim** - Performance Optimization & System Architecture

## Design & Art
- **Prof. Maria Santos** - UI/UX Design Systems
- **Dr. Alex Thompson** - Color Theory & Visual Hierarchy
- **Prof. River Kim** - Typography & Brand Identity
- **Dr. Jordan Lee** - Motion Design & Animation
- **Prof. Casey Brown** - Accessibility Design Patterns

## Business & Strategy
- **Dr. David Wilson** - Technology Business Strategy
- **Prof. Lisa Garcia** - Product Management & User Research
- **Dr. Sam Patel** - Startup Strategy & MVP Development
- **Prof. Taylor Jones** - Marketing Technology Integration
- **Dr. Morgan Davis** - Data-Driven Decision Making

## Creative Technology
- **Prof. Phoenix Martinez** - Generative Art & Code
- **Dr. Robin Chen** - Interactive Media & Installations
- **Prof. Sage Johnson** - Creative Coding Methodologies
- **Dr. Ocean Williams** - Digital Art Business Models
- **Prof. Storm Anderson** - Experimental Interface Design
EOF

# Create comprehensive spirits catalog
cat > Schema/Variables/Cast/Defaults/Spirits/spirits-catalog.md << 'EOF'
---
type: spirits-catalog
category: environmental-spirits
version: 1.0
tags: [spirits, environment, tmux, defaults]
---

# Environmental Spirits Catalog

## Technical Spirits (Tmux Panes)
- **Shell Guardian** - Command line & Git mastery
- **Tree Walker** - File navigation & Vim modal editing
- **Config Keeper** - AI tuning & conversation optimization
- **Project Oracle** - Cross-project insight & business integration
- **Code Sage** - Syntax highlighting & pattern recognition
- **Debug Demon** - Error tracking & troubleshooting
- **Performance Hawk** - Speed optimization & resource monitoring

## Creative Spirits
- **Design Muse** - Visual inspiration & aesthetic guidance
- **Color Oracle** - Palette selection & harmony analysis
- **Typography Ghost** - Font pairing & readability optimization
- **Layout Spirit** - Grid systems & spatial relationships
- **Brand Familiar** - Identity consistency & voice development

## Learning Spirits
- **Knowledge Keeper** - Information organization & retrieval
- **Practice Mentor** - Skill building & repetition guidance
- **Reflection Mirror** - Self-assessment & growth tracking
- **Connection Weaver** - Concept linking & mental model building
- **Curiosity Spark** - Question generation & exploration drive
EOF

# Create geographic environments
cat > Schema/Variables/Cast/Defaults/Environments/Geographic/locations-catalog.md << 'EOF'
---
type: geographic-catalog
category: locations
version: 1.0
tags: [geography, locations, environment, defaults]
---

# Geographic Environments Catalog

## Cities & Urban
- **NYC - SoHo Studio** - Creative energy, gallery district inspiration
- **San Francisco - Mission District** - Startup culture, tech innovation
- **Portland - Pearl District** - Artisan tech, sustainable design focus
- **Austin - East Side** - Music tech, creative coding community
- **Berlin - Kreuzberg** - Underground tech, experimental digital art
- **Tokyo - Shibuya** - Cutting-edge UI, mobile-first culture
- **London - Shoreditch** - Design thinking, fintech innovation

## Natural Settings
- **Mountain Cabin** - Deep focus, minimal distractions
- **Beach House** - Relaxed learning, creative flow
- **Forest Retreat** - Contemplative coding, nature patterns
- **Desert Studio** - Minimalist focus, essential elements only
- **Lake House** - Reflection space, iterative thinking
- **Garden Workshop** - Growth mindset, organic development

## Academic Institutions
- **The New School - Parsons** - Creative technology focus
- **MIT Media Lab** - Experimental interaction design
- **Stanford d.school** - Design thinking methodology
- **RISD** - Art + technology integration
- **Bauhaus** - Form follows function philosophy
- **CalArts** - Experimental digital media
EOF

# Create weather environments
cat > Schema/Variables/Cast/Defaults/Environments/Weather/weather-catalog.md << 'EOF'
---
type: weather-catalog
category: atmospheric-conditions
version: 1.0
tags: [weather, atmosphere, mood, defaults]
---

# Weather Environments Catalog

## Productive Weather
- **Morning Fog** - Gentle emergence, clarity building
- **Light Rain** - Focused indoor energy, steady progress
- **Overcast** - Even lighting, minimal glare, concentration
- **Cool Breeze** - Fresh thinking, mental clarity
- **Autumn Crisp** - Sharp focus, harvest mindset

## Creative Weather  
- **Thunderstorm** - Dramatic inspiration, breakthrough moments
- **Sunset Golden Hour** - Warm creativity, artistic flow
- **Snow Fall** - Quiet contemplation, clean slate feeling
- **Summer Storm** - Intense bursts, rapid iteration
- **Dawn Light** - New beginnings, fresh perspectives

## Challenging Weather
- **Heat Wave** - Intensity training, pressure adaptation
- **Blizzard** - Deep focus necessity, isolation productivity
- **Hurricane** - Crisis management, rapid problem solving
- **Drought** - Resource conservation, efficiency focus
- **Flood** - Overflow management, prioritization skills

## Seasonal Patterns
- **Spring Awakening** - Growth mindset, new project energy
- **Summer Intensity** - Full production mode, high output
- **Fall Harvest** - Completion focus, skill consolidation
- **Winter Reflection** - Planning phase, architecture thinking
EOF

# Create historical environments
cat > Schema/Variables/Cast/Defaults/Environments/Historical/eras-catalog.md << 'EOF'
---
type: historical-catalog
category: time-periods
version: 1.0
tags: [history, eras, context, defaults]
---

# Historical Environments Catalog

## Technology Eras
- **Pre-Web Era** (1980s) - Command line mastery, fundamental thinking
- **Early Web** (1990s) - HTML/CSS foundations, semantic structure
- **Dynamic Web** (2000s) - JavaScript emergence, interaction design
- **Mobile Revolution** (2010s) - Responsive design, touch interfaces
- **Modern Frameworks** (2020s) - Component architecture, reactive patterns
- **Future Web** (2030s+) - AI integration, spatial computing

## Design Movements
- **Bauhaus** (1920s) - Form follows function, systematic design
- **Swiss Design** (1950s) - Grid systems, typography precision
- **Postmodernism** (1980s) - Deconstruction, experimental layouts
- **Flat Design** (2010s) - Minimalism, content focus
- **Neumorphism** (2020s) - Soft UI, tactile digital experiences

## Learning Traditions
- **Apprenticeship Era** - Master/student relationships, craft tradition
- **Academy System** - Formal instruction, standardized curriculum
- **Workshop Culture** - Collaborative learning, peer instruction
- **Digital Age** - Online education, distributed knowledge
- **AI Partnership** - Human/AI collaborative learning

## Innovation Periods
- **Renaissance** - Art/science integration, polymathic thinking
- **Industrial Revolution** - System thinking, process optimization
- **Information Age** - Data organization, knowledge management
- **Creative Economy** - Art/technology synthesis, cultural production
- **Sustainability Era** - Circular thinking, regenerative design
EOF

echo "Cast restructuring completed!"
echo "Created:"
echo "  - Schema/Variables/Cast/Defaults/ (template personas)"
echo "  - Games/Cast/ (instance-specific assignments)"
echo "  - Comprehensive catalogs for teachers, spirits, environments"