# Expiry report for the sample site start-up tracker (fictional data).
# Reads the Documents tab and lists documents that are expired or expiring soon.
# Usage (from the repository folder):  Rscript scripts/expiry_report.R
# Needs the readxl package:            install.packages("readxl")

library(readxl)

tracker      <- "site_startup_tracker.xlsx"
report_date  <- as.Date("2026-10-09")   # same as the Settings tab
warning_days <- 60                      # same as the Settings tab

docs <- as.data.frame(read_excel(tracker, sheet = "Documents"))
docs$expiry <- as.Date(docs[["Expiry date"]])
docs$days_to_expiry <- as.numeric(docs$expiry - report_date)

# Work out the flag here, so the script does not depend on Excel's formulas
docs$flag <- ifelse(is.na(docs$expiry), NA,
              ifelse(docs$days_to_expiry < 0, "Expired",
               ifelse(docs$days_to_expiry <= warning_days, "Expiring soon", "Valid")))

report <- docs[docs$flag %in% c("Expired", "Expiring soon"),
               c("Site ID", "Doc ID", "Document type", "expiry", "days_to_expiry", "flag")]
report <- report[order(report$days_to_expiry), ]

cat("Expiry report as at", format(report_date, "%d %b %Y"), "\n\n")
if (nrow(report) == 0) {
  cat("No documents expired or expiring within", warning_days, "days.\n")
} else {
  print(report, row.names = FALSE)
  cat("\nCount by site:\n")
  print(table(report[["Site ID"]], report$flag))
}
