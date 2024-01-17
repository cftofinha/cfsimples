<cfscript>
    arrayDeCarros = arrayNew(1);
    carro = structNew();

    //primeiro carro
    carro.modelo = "Fiat Argo";
    carro.ano = 2020;
    carro.cor = "Vermelho";
    arrayAppend(arrayDeCarros, carro);

    //segundo carro
    carro = structNew();
    carro.modelo = "Chevrolet Tracker";
    carro.ano = 2023;
    carro.cor = "Azul";
    arrayAppend(arrayDeCarros, carro);

     //terceiro carro
    carro = structNew();
    carro.modelo = "Jeep Compass";
    carro.ano = 2024;
    carro.cor = "Cinza";
    arrayAppend(arrayDeCarros, carro);

</cfscript>
<cfdump var="#carro#" label="Struct de Carro">
<br><br>
<cfdump var="#arrayDeCarros#" label="Arrays de Carros">
<cfoutput>
Qtd de Carros <==> #arrayLen(arrayDeCarros)#
<cfloop array="#arrayDeCarros#" index="i">
    <cfif not compareNoCase(i.modelo, 'Chevrolet Tracker')>
        #i.modelo# - #i.ano# - #i.cor#<br>
    </cfif>
</cfloop>
</cfoutput>