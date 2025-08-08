# Spectre

A spec-driven development workflow for AI agents that bridges the gap between conceptual product requirements and technical implementation details. Spectre ensures alignment and reduces development iterations by providing structured templates and workflows.

## What is Spectre?

Spectre is inspired by modern spec-driven development approaches like [Kiro](https://kiro.dev/docs/specs/concepts/), [Agent OS](https://buildermethods.com/agent-os), and [AI Dev Tasks](https://github.com/snarktank/ai-dev-tasks/tree/main). It provides a systematic way to:

- **Generate Requirements** - Transform vague feature requests into structured, testable requirements
- **Create Technical Specs** - Document architecture, sequence diagrams, and implementation details
- **Plan Implementation** - Break down work into discrete, trackable tasks
- **Execute Tasks** - Guide AI agents through implementation with clear specifications

## Core Concepts

Spectre generates three key files that form the foundation of each specification:

### 1. Requirements (`gen-requirement.md`)
Captures user stories and acceptance criteria in structured EARS (Easy Approach to Requirements Syntax) notation. Each requirement follows this pattern:

```
WHEN [condition/event]
THE SYSTEM SHALL [expected behavior]
```

**Example:**
```
WHEN a user submits a form with invalid data
THE SYSTEM SHALL display validation errors next to the relevant fields
```

### 2. Technical Specifications (`gen-spec.md`)
Documents technical architecture, sequence diagrams, and implementation considerations. This is where you capture the big picture of how the system will work, including components and their interactions.

### 3. Task Execution (`exec-tasks.md`)
Provides detailed implementation plans with discrete, trackable tasks. Each task is clearly defined with descriptions, expected outcomes, and dependencies.

## Installation

### Quick Install
```bash
curl -sSL https://raw.githubusercontent.com/damaera/spectre/main/install.sh | sh
```

### Manual Install
```bash
# Clone the repository
git clone https://github.com/damaera/spectre.git
cd spectre

# Run the installer
bash install.sh
```

The installer will create a `.spectre/core/` directory in your current location with all the necessary template files.

## Usage

### Workflow

The Spectre workflow follows a logical progression with decision points between phases:

1. **Requirements Phase** - Define user stories and acceptance criteria in structured EARS notation
2. **Design Phase** - Document technical architecture, sequence diagrams, and implementation considerations  
3. **Implementation Planning** - Break down work into discrete, trackable tasks
4. **Execution Phase** - Track progress as tasks are completed

### Getting Started

1. **Install Spectre** (see installation above)

2. **Create a new spec** for your feature:
   ```bash
   # Navigate to your project directory
   cd your-project
   
   # Create a new spec directory
   mkdir -p .spectre/specs/$(date +%Y%m%d)-feature-name
   cd .spectre/specs/$(date +%Y%m%d)-feature-name
   ```

3. **Generate requirements** using the template:
   ```bash
   cp ../../core/gen-requirement.md requirements.md
   # Edit requirements.md with your specific requirements
   ```

4. **Create technical specs**:
   ```bash
   cp ../../core/gen-spec.md design.md
   # Edit design.md with your technical architecture
   ```

5. **Plan implementation tasks**:
   ```bash
   cp ../../core/gen-tasks.md tasks.md
   # Edit tasks.md with your implementation plan
   ```

6. **Execute tasks** using the execution guide:
   ```bash
   cp ../../core/exec-tasks.md execution.md
   # Follow execution.md to implement your feature
   ```

### Working with AI Agents

Spectre is designed to work seamlessly with AI coding agents like Claude Code, Cursor, or any other AI development tool:

- **Provide Context**: Share the generated spec files with your AI agent
- **Follow Structure**: Use the EARS notation for clear, testable requirements
- **Track Progress**: Update task status as implementation progresses
- **Iterate**: Refine specs based on implementation feedback

### Best Practices

#### Requirements
- Use EARS notation for clarity and testability
- Make requirements specific and measurable
- Include both happy path and error scenarios
- Keep requirements focused on user value

#### Technical Specs
- Document key architectural decisions
- Include sequence diagrams for complex flows
- Specify data models and API contracts
- Consider performance and scalability implications

#### Task Planning
- Break tasks into 2-4 hour chunks
- Include clear acceptance criteria for each task
- Identify dependencies between tasks
- Plan for testing and validation

#### Execution
- Update task status regularly
- Document decisions and trade-offs
- Refine specs based on implementation learnings
- Maintain clear communication with stakeholders

## File Structure

After installation, your project will have this structure:

```
your-project/
├── .spectre/
│   ├── core/
│   │   ├── gen-requirement.md    # Requirements template
│   │   ├── gen-spec.md           # Technical specs template
│   │   ├── gen-tasks.md          # Task planning template
│   │   └── exec-tasks.md         # Task execution guide
│   └── specs/
│       └── YYYYMMDD-feature-name/
│           ├── requirements.md    # Your feature requirements
│           ├── design.md          # Your technical design
│           ├── tasks.md           # Your implementation plan
│           └── execution.md       # Your execution guide
```

## Benefits

- **Reduced Iterations**: Clear specs prevent misunderstandings and rework
- **Better AI Collaboration**: Structured format helps AI agents understand requirements
- **Improved Quality**: Testable requirements lead to better implementations
- **Faster Development**: Clear task breakdowns enable parallel work
- **Better Documentation**: Specs serve as living documentation

## Contributing

Spectre is open source and welcomes contributions! Please see our contributing guidelines for more information.

## License

MIT License - see LICENSE file for details.

## Inspiration

Spectre is inspired by:
- [Kiro](https://kiro.dev/docs/specs/concepts/) - Modern spec-driven development
- [Agent OS](https://buildermethods.com/agent-os) - Structured AI agent workflows  
- [AI Dev Tasks](https://github.com/snarktank/ai-dev-tasks/tree/main) - Task-driven development patterns

