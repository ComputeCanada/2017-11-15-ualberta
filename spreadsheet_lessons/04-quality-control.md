---
layout: lesson
title: Basic quality control and data manipulation in spreadsheets
root: .
---

## Quality Control

When you have a well-structured data table, you can use several simple techniques within your spreadsheet to ensure the data you’ve entered is free of errors.

**TIP**: Always save an original, raw version of your data BEFORE doing any type of data manipulation. That way, if you screw up, you have your original data to go back to and start over from.

**ANOTHER TIP**: When saving your raw data, always save it as VALUES and not FORMULAS. Formulas will constantly update themselves as you add, remove, copy, cut, etc., data within the spreadsheet. This means you might accidentally change your values without realizing it. If you have columns that produce a calculation, either change the calculation to a value OR re-do the calculation later.

**README files:** When you start to manipulate your data, you may want to create a completely separate README file. You can use this README file to record any and all manipulations you make to the data -- **in the order you make them**. This will allow your future self, or another team member, to follow along with your thought process if needed. You can also include detailed documentation about your data and/or file structure within your README file. If you ever need to repeat your data manipulations, you'll be very grateful you wrote the steps down!

## Sorting ##
Bad values often sort to the bottom or top of a column. For example, if your data should be numeric, then alphabetical and NULL data will group at the end of the sorted data. Sort your data by each field, one at a time. Scan through each column, paying close attention to the top and the bottom of a column.

If your dataset is well-structured and does not contain formulas, sorting should never affect the integrity of your dataset.

## Conditional formatting ##
Use with caution! But this is a great way to flag inconsistent values when entering data. It should not, however, be used to identify or represent the value within a cell, in place of that value.

## Check on cell formats ##
A good way to check if you’ve got data of the wrong type in a column is by checking column format. This can also help prevent issues when you export your data.

## Pivot tables ##
Pivot tables are a very powerful tool in Excel. They’re useful to check for issues with data integrity because they provide a quick, visual way to spot things that are amiss, including with categorical variables. They are also great for reshaping data and obtaining summary statistics quickly in a drag and drop interface.

Previous:[Dates as data.](03-dates-as-data.html) Next: [Exporting data from spreadsheets.](05-exporting-data.html)