/* Clean Environment */
dm "log; clear;";
ods results clear;
ods _all_ close;
ods html;

/*library*/
libname raw "D:\SAS\AML\01rawdata"; 
libname clean "D:\SAS\AML\02clean"; 
libname merge "D:\SAS\AML\03merge"; 

/*check data*/
proc contents data=raw.aml;
run;

