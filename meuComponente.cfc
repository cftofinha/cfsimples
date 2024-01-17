<cfcomponent>
    <cffunction  name="tratarStructs" access="public" returntype="struct" output="false">
        <cfargument  name="modelo" type="string" required="true">
        <cfargument  name="ano" type="number" required="true">
        <cfargument  name="cor" type="string" required="true">

        <cfscript>
            carro = structNew();
            carro.modelo = arguments.modelo;
            carro.ano = arguments.ano;
            carro.cor = arguments.cor;
        </cfscript>

        <cfreturn carro>

    </cffunction>

    <cffunction  name="tratarArrays" access="public" returntype="array" output="false">
        <cfargument  name="carro" type="struct" required="true">

        <cfscript>
            arrayDeCarros = arrayNew(1);
            arrayAppend(arrayDeCarros, carro);
        </cfscript>

        <cfreturn arrayDeCarros>

    </cffunction>

    <cffunction name="tratarData" output="false" returntype="string">
		<cfargument name="data" default="" />
        <cfset var dataformatada = lsDateFormat(arguments.data, 'dd/mm/yyyy')>
        
        <cfreturn dataformatada />

    </cffunction>

    <cffunction name="getDadosBanco" output="false" returntype="query">
		<cfargument name="condicoes" default="" />
        
        <cfquery name="qCons" datasource="meuBanco">
            select * from tabela
        </cfquery>
        
        <cfreturn qCons />

    </cffunction>

    <cffunction name="replaceTexto" output="false" returntype="string">
		<cfargument name="texto" default="" />

		<cfset arguments.texto = replace(arguments.texto,"ç","c","all") />
		<cfset arguments.texto = replace(arguments.texto,"ã","a","all") />

		<cfset arguments.texto = replace(arguments.texto,"\u00E0","à","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00E2","â","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00E3","ã","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00E4","ä","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C1","Á","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C0","À","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C2","Â","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C3","Ã","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C4","Ä","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00E9","é","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00E8","è","all") />

		<cfset arguments.texto = replace(arguments.texto,"\u00EA","ê","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C9","É","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C8","È","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00CA","Ê","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00CB","Ë","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00ED","í","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00EC","ì","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00EE","î","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00EF","ï","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00CD","Í","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00CC","Ì","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00CE","Î","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00CF","Ï","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00F3","ó","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00F2","ò","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00F4","ô","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00F5","õ","all") />

		<cfset arguments.texto = replace(arguments.texto,"\u00F6","ö","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00D3","Ó","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00D2","Ò","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00D4","Ô","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00D5","Õ","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00D6","Ö","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00Fa","ú","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00F9","ù","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00Fb","û","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00Fc","ü","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00DA","Ú","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00D9","Ù","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00DB","Û","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00E7","ç","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00C7","Ç","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00F1","ñ","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u00D1","Ñ","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u0026","&","all") />
		<cfset arguments.texto = replace(arguments.texto,"\u0027","'","all") />

		<cfreturn arguments.texto />
	</cffunction>

</cfcomponent>