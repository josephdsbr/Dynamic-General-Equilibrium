# Modelo de Equilíbrio Geral #



## Consumidor ##

$\max\limits_{c, l} = C^{\beta}l^{1 - \beta} \\ s.a. \ C = wN^{s}$

Contudo, $N^{s} + l = h$ , logo podemos reformular a restrição orçamentária para:

$C = w(h - l)$

## Produtor ##

$\max\limits_{w} \ \pi = AK^{\alpha}N^{1 - \alpha} - wN$

### Parametros: ###

$\beta \equiv$ Elasticidade da Utilidade em relação a renda
$A \equiv $ Produtividade Total dos Fatores de Produção
$K \equiv$ Estoque de Capital Físico
$\alpha \equiv$ Elasticidade da Produção em Relação ao Capital
$h \equiv$ Total de horas disponíveis

### Lagrangeano ###

$L(C, l , \lambda) = \beta\ln C + (1 - \beta)\ln l - \lambda(C - w(h - l))$

Derivando chegamos a seguites expressões:

$\frac{\delta L}{\delta C} = C = \frac{\beta}{\lambda}$

$\frac{\delta L}{\delta l} = l = \frac{1 - \beta}{w\lambda}$

$\frac{\delta L}{\delta \lambda} = C = w(h - l)$

Substituindo os valores de $l$ e $C$ na última equação podemos encontrar que $\lambda = \frac{1}{wh}$
Logo, podemos achar os valores ótimos de $C$ e $l$ .

$C^{*} = \beta w h \\ l ^{*} = (1 - \beta)h$

Como sabemos que $N^{s} = h - l^{*}$, então achamos que $N^{s} = h\beta$
Todavia, ainda nos falta determinar o valor de $w^{*}$ que é endogeno.

## Produto Marginal do Trabalho ##

Maximizando o lucro em relação ao trabalho, achamos:

$\frac{\delta \pi}{\delta N} = (1 - \alpha)A(\frac{K}{N})^{\alpha} = w^{*}$

Como $N^{s} = N$, então substituindo o valor encontrado nesta equação achamos que:

$w^{*} = \frac{( 1 - \alpha)AK^{\alpha}}{(h\beta)^{\alpha}}$

Por conseguinte, conseguimos achar, finalmente as expressões ótimas para:

$C^{*} = A(1 - \alpha)(\beta h)^{1-\alpha}K^{\alpha}$

$l^{*} = (1 - \beta)h$

$N^{*} = \beta h$

$\lambda = \frac{\beta^{\alpha}}{(1 - \alpha)AK^{\alpha}h^{1 - \alpha}}$