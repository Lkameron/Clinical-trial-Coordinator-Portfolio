# Clinical trial site start-up tracker (sample)

A working Excel tracker showing how a Clinical Trial Coordinator could manage essential documents, site readiness, follow-up actions and site payments during study start-up.

> **All data is fictional.** The study (DEMO-001), sites, people and figures are invented. There is no real trial, site or patient information in this repository.


## Why I built this

<!-- Rewrite this paragraph in your own words. -->
I am moving from research and regulated financial services into clinical trial operations. I built this to practise the core of the coordinator role: keeping accurate, audit-ready records and making sure nothing is missed before a site opens.

## What is in the workbook

| Tab | What it does |
|---|---|
| Dashboard | Summary counts, per-site view and two charts, all calculated from the other tabs |
| Settings | Report date, warning windows and the drop-down lists |
| Sites | Target and actual Site Ready dates, % of documents filed, Site Ready blockers |
| Documents | 50 essential documents across 5 sites: status, expiry flag, filing quality check, next action and chase date |
| Payments | Milestone payments: budget against invoiced, variance, days outstanding |
| Contact Log | Record of contact with sites and whether follow-ups were completed |
| Change Log | Audit trail: what changed, when, who changed it and why |

## How it works

- **One report date drives everything.** Change it on Settings and every flag and count updates.
- **Drop-down lists** keep status values consistent, so the counts cannot be broken by a typo.
- **Document flag** checks in order: Missing, Expired, Expiring soon (within 60 days), OK, In progress.
- **Site Ready blockers** counts documents needed for Site Ready that are not filed, plus any that are filed but expired.
- **Chase status** shows Overdue, Due this week or Scheduled for every open action.
- **Filing QC** passes a document if it was filed within 7 days of receipt.
- **Change Log** records every change to a status, date or amount. Entries are added, never deleted.

Blue text is typed input. Black text is a formula.

## What the tracker shows (as at 9 October 2026)

1. **S02 is open with an expired insurance certificate** (expired 30 September). This is the first action: an active site must not continue without valid cover.
2. **S03 is due to open on 26 October but the investigator's GCP certificate expires on 28 October**, and the renewal chase is already overdue.
3. **S04 has 5 Site Ready blockers** with a month to go, including a contract still awaiting signature.
4. **S05 is on hold** and will miss its 12 October target; its actions are parked until the review on 2 November.
5. **One S02 invoice has been unpaid for 50 days**, beyond the 30-day limit.
6. **88% of documents were filed on time**; 4 were filed late.

## What I would do next

<!-- Keep, change or add to these. -->
- In a real study this information lives in a clinical trial management system (CTMS) and an electronic trial master file (eTMF). This spreadsheet is a training model of the logic those systems apply.
- Add working-day calculations so targets ignore weekends and bank holidays.
- Add a per-site printable summary for study team meetings.

## Extras

- `scripts/expiry_report.R` reads the Documents tab and prints expired and expiring documents by site.
- `planning/` holds the Gantt chart for my systematic review. <!-- Add your Gantt chart file here, or delete this line. -->

## How this was made

I built the first version with help from an AI assistant (Claude), then reviewed every formula and extended it myself. <!-- List what you changed or added. -->

## Contact

<!-- Your name and LinkedIn link -->
