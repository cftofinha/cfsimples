<cfapplication name= "cfsimples" 
    sessiontimeout="#CreateTimeSpan(0,0,10,0)#" 
    applicationtimeout=#CreateTimeSpan(1,0,0,0)#>

<cfcontent type="text/html; charset=UTF-8" />
<cfset setEncoding("URL", "UTF-8") />
<cfset setEncoding("FORM", "UTF-8") />