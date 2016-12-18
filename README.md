# datafix


This is a simple Shiny application meant to be used by anyone who regularly uses R to transform spreadsheet data. You can store any R script you use to alter data and create a list item for it in the UI dropdown. Anyone can then access the application, upload an XLSX file in the matching format, and select the transformation. They then press "Download" and get an updated file back after the designated script has run.

The app comes with a single standard transformation, "Grade Summaries." You can upload a file with two columns labeled "Student" and "Grade" and it will return a file with each student listed once in the first column and their grade average in the second column.

To add a transformation, you need to do three things:

Create a name for it (e.g. "Building Number Address Lookup") and add it to dropdown in the UI code. (Simply include it in the same list as where "Grade Summaries" appears.
Move the R script to the "datafix" folder.
Add a record to "lookup.csv". The first column should be the same name as in the UI ("Building Number Address Lookup"). The second name should be the R script filename in the "datafix" folder (e.g. "buildingLookup.R").
You should now have an item in the application dropdown that will run your code on any input file.
