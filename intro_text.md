
This simple Shiny app is based on the java-ui example by [Matt Parker](http://blog.revolutionanalytics.com/2015/12/reports-r-jquery.html) and demonstrates:

* Creating a graph of summed totals from component part data using dplyr with ggplot2 (national from state-level data);
* Sorting a data frame so that categorical data displays on a ggplot2 legend in order of the numerical column;
* Limiting display of categories in a graph legend to the top n (selectable by the user), with remaining values listed as "other;"
* Coloring only the top n categories on a graph, and making all other categories gray;
* Changing line weight for the top n categories on a graph, and making;
* Creating an interactive, tabbed UI using Shiny, with each tab displaying different graphs and controls.

