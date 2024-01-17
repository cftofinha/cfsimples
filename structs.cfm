<cfscript>
    usuario = structNew();
    usuario.nome = "Francisco";
    usuario.sobreNome = "Paulino";
    usuario.email = "tofinha@gmail.com";
    session.usuario = usuario;
</cfscript>
<cfdump var="#usuario#">
<br><br>
<cfdump var="#session#">