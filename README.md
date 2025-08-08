# Spectre

A spec-driven development workflow for AI coding agents that bridges the gap between conceptual product requirements and technical implementation details. Spectre ensures alignment and reduces development iterations by providing structured templates and workflows.

## What is Spectre?

Spectre is inspired by modern spec-driven development approaches like [Kiro](https://kiro.dev/docs/specs/concepts/), [Agent OS](https://buildermethods.com/agent-os), and [AI Dev Tasks](https://github.com/snarktank/ai-dev-tasks/tree/main). It provides a systematic way to:

- **Generate Requirements** - Transform vague feature requests into structured, testable requirements
- **Create Technical Specs** - Document architecture, sequence diagrams, and implementation details
- **Plan Implementation** - Break down work into discrete, trackable tasks
- **Execute Tasks** - Guide AI agents through implementation with clear specifications

## Benefits

- **Reduced Iterations**: Clear specs prevent misunderstandings and rework
- **Better AI Collaboration**: Structured format helps AI agents understand requirements
- **Improved Quality**: Testable requirements lead to better implementations
- **Faster Development**: Clear task breakdowns enable parallel work
- **Better Documentation**: Specs serve as living documentation

## Installation

```bash
curl -sSL https://raw.githubusercontent.com/damaera/spectre/main/install.sh | sh
```

The installer will create a `.spectre/core/` directory in your current location with all the necessary template files.

## Usage

The Spectre workflow follows a logical progression with decision points between phases:

### 1. Generate Requirements
```
use @gen-requirement.md

[feature to add]
```
This will create a `requirement.md` file.

### 2. Create Technical Specifications
```
@gen-spec.md on @requirement.md

[optional detail]
```
This will create a `spec.md` file with technical specification.

### 3. Plan Implementation Tasks
```
@gen-tasks.md @spec.md
```
This will create a `tasks.md` file with discrete, trackable tasks broken down for implementation.

### 4. Execute Tasks
```
@exec-tasks.md @tasks.md
```
Ai agent will executing tasks.


## File Structure

After installation and usage, your project will have this structure:

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
│           ├── tasks.md           # Your implementation tasks
```

## Contributing

Spectre is open source and welcomes contributions! Please see our contributing guidelines for more information.

## License

MIT License - see LICENSE file for details.

## Inspiration

Spectre is inspired by:
- [Kiro](https://kiro.dev/docs/specs/concepts/) - Modern spec-driven development
- [Agent OS](https://buildermethods.com/agent-os) - Structured AI agent workflows  
- [AI Dev Tasks](https://github.com/snarktank/ai-dev-tasks/tree/main) - Task-driven development patterns

