# Sentinel

**Sentinel** is a production-oriented Linux health and incident response toolkit built entirely in Bash.

It is designed to teach engineers how production systems fail, how to debug them, and how to build reliable operational tooling using nothing but standard Linux utilities.

Sentinel is not a monitoring replacement.  
It is a learning-driven operational framework.

---

## Why Sentinel Exists

Modern engineers often rely heavily on cloud dashboards and third-party observability tools. While those tools are powerful, they abstract away the most important layer:

**The Linux system itself.**

When production systems fail, the first line of defense is often:
- SSH access
- Terminal access
- Logs
- System utilities

Sentinel exists to:

- Teach production debugging fundamentals
- Provide structured system health diagnostics
- Demonstrate clean Bash architecture
- Encourage operational thinking
- Help engineers become confident in real incident scenarios

It is built as if it were an internal SRE tool.

---

## Philosophy

Sentinel follows these principles:

- Strict Bash (`set -euo pipefail`)
- Modular architecture
- Clear logging standards
- Idempotent operations
- Defensive scripting
- Minimal dependencies (standard Linux utilities only)
- Explicit exit codes
- Production-style structure

The goal is not just functionality.

The goal is clarity and operational maturity.

---

## What Sentinel Does

Sentinel provides structured system inspection and recovery capabilities.

Planned capabilities include:

### Health Checks
- CPU usage
- Memory usage
- Disk utilization
- High-resource processes
- Zombie processes
- Uptime
- Open ports
- Service status

### Log Diagnostics
- Service-specific log inspection
- Error extraction
- Failure pattern detection
- Recent critical events summary

### Incident Reports
- System snapshot generation
- Structured diagnostic output
- Timestamped report storage

### Recovery Actions
- Service restart verification
- Post-restart validation
- Action logging

### Scheduled Monitoring
- Cron-compatible execution
- Log-based periodic checks

---

## Architecture

Sentinel is intentionally structured like a production CLI tool.

sentinel/
│
├── bin/
│ └── sentinel # CLI entrypoint
│
├── lib/
│ ├── logging.sh # Logging utilities
│ ├── checks.sh # System health checks
│ ├── recovery.sh # Service recovery logic
│ └── utils.sh # Shared helpers
│
├── config/
│ └── config.sh # Configurable thresholds
│
├── reports/ # Generated incident reports
│
├── docs/
│ ├── architecture.md
│ ├── production-thinking.md
│ └── how-it-works.md
│
└── README.md


### Design Decisions

- `bin/` contains only entry logic and routing.
- `lib/` contains modular, testable functionality.
- All output is routed through centralized logging.
- No global state leakage.
- Path resolution is explicit.
- Script execution is deterministic.

---

## Usage (Planned Interface)

./sentinel check
./sentinel report
./sentinel logs --service nginx
./sentinel heal nginx


Each command is designed to simulate real-world operational workflows.

---

## Engineering Practices Demonstrated

Sentinel is designed as a teaching framework for:

- Strict mode enforcement
- Defensive Bash scripting
- Argument parsing
- Trap handling
- Signal management
- Lock files
- Process inspection
- Log parsing with grep/awk/sed
- Structured output formatting
- Cron-safe automation
- Exit code discipline
- Clean Git history
- Modular script design

---

## Target Audience

Sentinel is for:

- Engineers learning Linux deeply
- Backend developers who want operational confidence
- DevOps and SRE aspirants
- Students who want real production intuition
- Small teams without complex monitoring stacks

---

## Non-Goals

Sentinel is not:

- A replacement for Prometheus
- A full monitoring stack
- A distributed tracing solution
- A cloud-native observability platform

It is intentionally minimal.

It focuses on the Linux layer.

---

## Requirements

- Linux system
- Bash 4+
- Standard GNU utilities (`ps`, `df`, `free`, `ss`, `journalctl`, etc.)
- No external dependencies

---

## Installation (Development)

Clone the repository:

git clone https://github.com/
<your-username>/sentinel.git

cd sentinel

chmod +x bin/sentinel

Run:
```./bin/sentinel
```

---

## Roadmap

Phase 1 – Core CLI and logging  
Phase 2 – Health checks  
Phase 3 – Log diagnostics  
Phase 4 – Report generation  
Phase 5 – Auto-recovery  
Phase 6 – Scheduled execution support  
Phase 7 – Structured output mode (JSON)

---

## Learning Goals

By contributing to or studying Sentinel, you should:

- Understand how production systems degrade
- Gain confidence debugging live systems
- Write maintainable Bash
- Think like an SRE
- Appreciate Linux as the foundation layer

---

## Contributing

Contributions should:

- Follow strict Bash practices
- Avoid unnecessary dependencies
- Preserve modularity
- Include clear documentation
- Maintain deterministic behavior

All new features must include:
- Rationale
- Failure considerations
- Logging standards

---

## License

MIT License

---

## Final Note

Sentinel is built with the belief that:

> Strong engineers understand the system beneath the abstraction.

Cloud dashboards are helpful.

But production confidence comes from understanding the machine.

Sentinel exists to build that confidence.

