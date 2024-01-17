<cfset instMeuComponente = createObject("component", "meuComponente") />
<!---<cfset meuCarro = instMeuComponente.tratarStructs(modelo: 'Fiat', ano: 2020, cor: 'Vermelho') />
<cfset meuCarro1 = instMeuComponente.tratarStructs(modelo: 'Jeep', ano: 2022, cor: 'Verde') />
<cfset meuCarro2 = instMeuComponente.tratarStructs(modelo: 'Audi', ano: 2021, cor: 'Azul') />

<cfdump var="#meuCarro#" label="meuCarro" />
<cfdump var="#meuCarro1#" label="meuCarro" />
<cfdump var="#meuCarro2#" label="meuCarro" />

<cfset tratarArrays = instMeuComponente.tratarArrays(carro: meuCarro2) />
<cfdump var="#tratarArrays#" label="tratarArrays" />

<cfset arrayDeCarrosFinal = arrayNew(1) />
<cfset arrayAppend(arrayDeCarrosFinal, instMeuComponente.tratarArrays(carro: meuCarro)) />
<cfset arrayAppend(arrayDeCarrosFinal, instMeuComponente.tratarArrays(carro: meuCarro1)) />
<cfset arrayAppend(arrayDeCarrosFinal, instMeuComponente.tratarArrays(carro: meuCarro2)) />

<cfdump var="#arrayDeCarrosFinal#" label="arrayDeCarrosFinal" />


<cfset arrayDeCarrosFinal2 = arrayNew(1) />
<cfset arrayAppend(arrayDeCarrosFinal2, meuCarro) />
<cfset arrayAppend(arrayDeCarrosFinal2, meuCarro1) />
<cfset arrayAppend(arrayDeCarrosFinal2, meuCarro2) />

<cfdump var="#arrayDeCarrosFinal2#" label="arrayDeCarrosFinal2" />--->

<cfset tratarTexto = instMeuComponente.tratarData(data: "2023-01-07") />
<cfdump var="#tratarTexto#" label="tratarTexto" />
