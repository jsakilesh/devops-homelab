# Post-Mortem: [Incident Title]

**Date:** YYYY-MM-DD  
**Severity:** P1 / P2 / P3  
**Duration:** HH:MM  
**Author:** @jsakilesh  
**Status:** Draft / In Review / Closed  

---

## Summary
_Brief 2-3 sentence summary of what happened, its impact, and how it was resolved._

## Timeline

| Time (UTC) | Event |
|------------|-------|
| HH:MM | Incident detected by [alert/user/monitoring] |
| HH:MM | On-call engineer paged |
| HH:MM | Root cause identified |
| HH:MM | Mitigation applied |
| HH:MM | Service fully restored |

## Root Cause
_Describe the root cause in detail. What failed and why?_

## Impact
- **Users affected:** ~X users
- **Services affected:** service-a, service-b
- **Downtime:** X minutes
- **Error rate:** X%

## What Went Well
- Alerting fired within X minutes of the issue starting.
- Runbook was followed correctly.

## What Went Wrong
- No runbook existed for this failure mode.
- Alert threshold was too high / too low.

## Action Items

| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Add runbook for X failure | @jsakilesh | YYYY-MM-DD | [ ] |
| Lower alert threshold for Y | @jsakilesh | YYYY-MM-DD | [ ] |
| Add integration test for Z | @jsakilesh | YYYY-MM-DD | [ ] |

## Lessons Learned
_What should the team do differently next time?_