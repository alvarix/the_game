---
type: init-script
target: human
purpose: games-directory-creation
version: 1.1
tags: [initialization, games-setup, dynamic-creation]
---

# Games Directory Initialization

Dynamic creation of Games structure based on user preferences and selections.

## Pre-Initialization Questions

### Learning Profile Assessment
1. **What subject do you want to learn first?**
   - [ ] Programming (Vue, React, Python, etc.)
   - [ ] Design (UI/UX, Visual, Motion, etc.)
   - [ ] Business (Strategy, Marketing, Analytics, etc.)
   - [ ] Creative Technology (Generative Art, Interactive, etc.)
   - [ ] Other: ________________

2. **What's your current skill level in this area?**
   - [ ] Complete Beginner
   - [ ] Some Experience
   - [ ] Intermediate
   - [ ] Advanced (learning new specialization)

3. **How much time can you dedicate weekly?**
   - [ ] 2-3 hours (casual)
   - [ ] 5-7 hours (regular)
   - [ ] 10+ hours (intensive)

4. **What's your preferred learning style?**
   - [ ] Project-based (learn by building)
   - [ ] Theory-first (understand then apply)
   - [ ] Mixed approach
   - [ ] Experimental/exploratory

### Environmental Preferences

5. **What kind of learning environment energizes you?**
   - [ ] Urban creative spaces (NYC SoHo, SF Mission)
   - [ ] Natural settings (Mountain cabin, Beach house)
   - [ ] Academic institutions (The New School, MIT Media Lab)
   - [ ] Historical contexts (Bauhaus, Swiss Design era)

6. **What weather/atmosphere helps you focus?**
   - [ ] Productive (Morning fog, Light rain, Cool breeze)
   - [ ] Creative (Thunderstorm, Sunset, Golden hour)
   - [ ] Intense (Heat wave, Blizzard focus)
   - [ ] Seasonal (Spring growth, Fall harvest)

### Mentorship Preferences

7. **What type of guidance do you prefer?**
   - [ ] Structured curriculum with clear milestones
   - [ ] Flexible exploration with gentle guidance
   - [ ] Challenge-based with problem-solving focus
   - [ ] Collaborative with peer interaction

8. **Which mentor style appeals to you?**
   - [ ] Mathematical precision (Dr. Elena Vasquez style)
   - [ ] Systems architecture (Prof. Marcus Chen style)
   - [ ] Creative integration (Dr. Amira Hassan style)
   - [ ] Research methodology (PhD Degree style)

### Technical Environment

9. **What development environment do you use?**
   - [ ] VS Code
   - [ ] Vim/Neovim
   - [ ] Other: ________________

10. **Are you comfortable with command line?**
    - [ ] Expert level
    - [ ] Basic commands
    - [ ] Prefer GUI tools
    - [ ] Want to learn

## Output Processing

Based on responses, the initialization system will:

1. **Create Games Directory Structure**
   ```
   Games/
   ├── README.md (generated)
   ├── Global-Avatar-Status/ (if multiple games)
   ├── Game-Instances/
   │   └── [X.X-Subject-Name]/
   └── Active-Environment/
   ```

2. **Generate First Game Instance**
   - Folder: `Games/Game-Instances/1.1-[Subject]-[Focus]/`
   - Customized curriculum based on skill level
   - Appropriate mentor assignment
   - Environmental context selection

3. **Assign Cast Members**
   - Primary mentor from selected style
   - Appropriate environmental spirits
   - Academic context (if applicable)

4. **Configure XP System**
   - Session duration targets
   - Difficulty scaling
   - Achievement milestones

5. **Create Session Templates**
   - Customized for chosen learning style
   - Integrated with selected environment
   - Mentor voice calibration

## Next Steps After Initialization
1. Review generated game structure
2. Customize any templates
3. Begin first learning session
4. Establish routine and rhythm

## Links
- [[../AI/games-generation|AI Generation Script]]
- [[../../Variables/Cast/Defaults/|Cast Selection]]
- [[../../Variables/Goals/|Goal Templates]]