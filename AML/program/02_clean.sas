/* Clean Environment */
dm "log; clear;";
ods results clear;
ods _all_ close;
ods html;

/*library*/
libname raw "D:\SAS\AML\01rawdata"; 
libname clean "D:\SAS\AML\02clean"; 
libname merge "D:\SAS\AML\03merge"; 

/*observet the overview  data*/
proc contents data=raw.aml;
run;

/*Establish new table*/
proc sort DATA=raw.aml OUT= new_aml_01 ;
BY OS_STATUS_01;
run;

proc print data=new_aml_01(obs=10); title 'AML table';
run;

/*Recode variables*/ /*��L�ܬ̦ۨ�����*/
data AMl_new; 
set new_aml_01; 
*AGE_01 -> AGE_03;
IF AGE_01 =. THEN AGE_03 ='NA'; 
ELSE IF AGE_01 < 60 THEN AGE_03 = 0; 
ELSE IF AGE_01 >=60 THEN AGE_03 = 'NA';
run;

proc print data=AMl_new(obs=5);
run;






