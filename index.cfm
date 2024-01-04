<cfparam  name="url.nome2" default="">
<cfset session.nome = "Francisco" />
<cfoutput>
    <h1>#application.txtBemVindo# #session.nome# 
        <cfif isDefined('url.nome2') and url.nome2 GTE 5> 
            - #url.nome2#
        <cfelse>
            Ta bom
        </cfif> 
    </h1>
</cfoutput>

<cfdump var="#server.lucee.version#" label="Versão do Lucee">

<cfdump var="#session#" label="DUMP do escopo CGI">

