/* Clean Environment */
dm "log; clear;";
ods results clear;
ods _all_ close;
ods html;

/*Database*/
libname raw "D:\SAS\free area code\01rawdata"; 


proc print data=raw.aml(obs=5);
run;

proc print data=raw.aml(obs=10);
run;




