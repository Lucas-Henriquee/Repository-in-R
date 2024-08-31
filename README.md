# 📊 Fundamentos da Linguagem R

Bem-vindo ao repositório **Fundamentos da Linguagem R**! Este repositório é destinado a todos que desejam aprender e aprofundar seus conhecimentos em R, uma das linguagens de programação mais utilizadas em estatística e ciência de dados.

## 📚 Resumo

A linguagem R é amplamente reconhecida por suas capacidades em análise estatística, manipulação de dados e visualização gráfica. Neste repositório, abordamos os principais conceitos e práticas essenciais para o uso eficiente de R.

## 🗂️ Conteúdo

### Aulas

#### Aula 1: Comandos Básicos em R e Primeiros Gráficos
- **Resumo:** Introdução aos comandos básicos da linguagem R, incluindo operações matemáticas simples e criação de gráficos. A aula também abrange a criação de um modelo de regressão linear simples e a adição de elementos gráficos personalizados.
- **Código Desenvolvido:** O código completo desta aula pode ser acessado na pasta [Aula 01](Aulas/Aula01_20240317).

#### Aula 2: R como Calculadora
- **Resumo:** Exploração das capacidades do R como uma poderosa calculadora. Nesta aula, são abordadas operações aritméticas básicas, potências, raízes, notação científica, funções exponenciais e logarítmicas, cálculo de módulos, truncamento, arredondamento e a ordem de precedência das operações.
- **Código Desenvolvido:** O código completo desta aula pode ser acessado na pasta [Aula 02](Aulas/Aula02_20240318).

#### Aula 3 e 4: Trabalhando com Vetores e Operações Avançadas em R
- **Resumo:** Introdução à manipulação de vetores em R, uma das estruturas de dados mais fundamentais na linguagem. Exploramos a criação, manipulação e operações com vetores, incluindo soma, multiplicação e produtos escalares. Também abordamos a criação de gráficos simples a partir de vetores e o uso de loops para cálculo de somas e produtos. Por fim, discutimos o uso de arquivos de script e funções externas para organização do código.
- **Código Desenvolvido:** O código completo destas aulas pode ser acessado na pasta [Aula 03](Aulas/Aula03_20240325) e [Aula 04](Aulas/Aula04_20240408).

#### Aula 5: Análise Estatística Descritiva
- **Resumo:** **(Aula não disponível no repositório)**.

#### Aula 6: Manipulação de Strings e Análise Estatística com Pacotes
- **Resumo:** Nesta aula, exploramos funções de manipulação de strings em R, como `paste` e `paste0`, para concatenar e formatar texto. Também aprendemos a instalar e carregar pacotes, como `ISwR` e `ggplot2`, e a utilizar funções desses pacotes para análise de dados. A aula inclui a análise de dados de diamantes com gráficos e modelos lineares, bem como a criação de histogramas e a análise de assimetria dos dados gerados.
- **Código Desenvolvido:** O código completo desta aula pode ser acessado na pasta [Aula 06](Aulas/Aula06_20240422).


#### Aula 7: Operadores Lógicos e Análise Estatística
- **Resumo:** Nesta aula, exploramos operadores lógicos e relacionais em R para filtrar e manipular dados. Utilizamos funções para verificar condições, calcular quantidades e probabilidades associadas a essas condições, e realizar análises estatísticas básicas. A aula inclui a criação de amostras aleatórias, a aplicação de filtros lógicos, e a análise de valores extremos e distribuições usando funções como `pnorm` e `qnorm`. Também discutimos como visualizar e manipular números complexos e como criar gráficos com escala igual.
- **Código Desenvolvido:** O código completo desta aula pode ser acessado na pasta [Aula 07](Aulas/Aula07_20240506).

#### Aula 8: Infinito, Matrizes e Arrays
- **Resumo:** Nesta aula, abordamos conceitos relacionados a infinitos e cálculos com grandes números em R, incluindo operações com fatoriais e a função gama para cálculos de números grandes. Exploramos também a manipulação de valores indeterminados e a gestão de valores `NA`. Em seguida, focamos na criação e manipulação de matrizes e arrays, realizando operações básicas, como a criação de matrizes e a aplicação de funções em matrizes. Finalmente, trabalhamos com diferentes tipos de dados, como o conjunto de dados `iris`, e exploramos a tabela de contingência com o conjunto de dados `Titanic` e as análises de `mtcars`.
- **Código Desenvolvido:** O código completo desta aula pode ser acessado na pasta [Aula 08](Aulas/Aula08_20240513).

#### Aula 9: Fatores, Listas e Data Frames
- **Resumo:** Nesta aula, exploramos conceitos importantes relacionados a fatores, listas e data frames em R. Começamos com a criação e manipulação de fatores para variáveis categóricas, alterando níveis e ordenando fatores. Em seguida, abordamos as listas, mostrando como criar e acessar seus elementos, e como manipular dados com `sample` e `table`. Na seção sobre data frames, fizemos uso do conjunto de dados `iris` para criar gráficos, inserir novas variáveis e realizar operações básicas. Também aprendemos a ordenar dados, a criar e exportar data frames e a usar funções gráficas para análise de dados. Por fim, abordamos o uso da função `sink` para exportar resultados de análises para arquivos de texto.
- **Código Desenvolvido:** O código completo desta aula está disponível na pasta [Aula 09](Aulas/Aula09_20240517).


#### Aula 10: Importação, Plot de Dados e e^x
- **Resumo:** Nesta aula, abordamos a importação de dados em R a partir de diferentes formatos e separadores, como `.txt`, `.csv`, e URLs. Exploramos a manipulação de dados importados, realizando operações básicas e criando gráficos. Em seguida, focamos na função exponencial \( e^x \), realizando integrações e aproximando o valor de \( e \) por meio de séries de Taylor. Também analisamos o conjunto de dados `mtcars`, realizando análises de regressão e criando gráficos com diferentes variáveis. Finalizamos com a utilização de gráficos de dispersão e agregações de dados, e discutimos a importância de entender a estrutura dos dados ao importar e manipular informações.

- **Código Desenvolvido:** O código completo desta aula está disponível na pasta [Aula 10](Aulas/Aula10_20240520).

#### Aula 11: Amostragem e Comando `sample()`
- **Resumo:** Nesta aula, exploramos a amostragem em R utilizando o comando `sample()`, abordando amostragem com e sem reposição. Iniciamos com amostragens simples do conjunto de dados `iris`, comparando amostras com e sem repetição. Em seguida, analisamos o conjunto de dados `diamonds` do pacote `ggplot2`, realizando amostragem, cálculo de estatísticas básicas e correlação. Criamos uma função personalizada para gerar amostras e calcular estatísticas, repetimos o processo múltiplas vezes para analisar distribuições. Finalmente, realizamos uma atividade extra para explorar a probabilidade de aniversários no mesmo dia em um grupo de pessoas.

- **Código Desenvolvido:** O código completo desta aula está disponível na pasta [Aula 11](Aulas/Aula11_20240715).


#### Aula 12: Probabilidade de Aniversário e Formatação de Datas
- **Resumo:** Nesta aula, exploramos a probabilidade de coincidência de aniversários utilizando o conceito do "Problema do Aniversário". Implementamos funções para calcular a probabilidade de coincidências e utilizamos a função `replicate()` para realizar simulações e obter estimativas. Além disso, abordamos a formatação e manipulação de datas em R, utilizando funções para extrair e formatar diferentes componentes das datas.

- **Código Desenvolvido:** O código completo desta aula está disponível na pasta [Aula 12](Aulas/Aula12_20240826).


### Trabalhos

#### Trabalho 1: Relatórios Técnicos em R Markdown
- **Resumo:** Este trabalho explora a criação de relatórios técnicos em R Markdown, incluindo a análise estatística do conjunto de dados iris e a formatação de equações matemáticas em LaTeX. As atividades envolvem calcular estatísticas descritivas categorizadas por espécie, criar gráficos, e escrever equações matemáticas usando LaTeX.
- **Código Desenvolvido:** O código completo deste trabalho pode ser acessado na pasta [Trabalho 01](Trabalhos/Atividade01).

#### Trabalho 2: Trabalhando com Vetores
- **Resumo:**  Este trabalho foca na criação e manipulação de vetores em R, utilizando funções como rep e paste. As atividades incluem a criação de vetores numéricos específicos, operações com somatórios, e a manipulação de dados do conjunto juul para calcular médias e filtrar linhas específicas.
- **Código Desenvolvido:** O código completo deste trabalho pode ser acessado na pasta [Trabalho 02](Trabalhos/Atividade02).

#### Trabalho 3: Estruturas de Dados em R
- **Resumo:** Este trabalho explora diversas estruturas de dados em R, incluindo matrizes, fatores, listas e data frames. As atividades envolvem a resolução de sistemas de equações, manipulação de fatores, operações com listas, construção e manipulação de data frames, e análise de dados complexos como o conjunto Titanic. As tarefas buscam aplicar conceitos de estatística e programação em R para resolver problemas práticos.
- **Código Desenvolvido:** O código completo deste trabalho pode ser acessado na pasta [Trabalho 03](Trabalhos/Atividade03).

#### Trabalho 4: Importação de Dados e Gráficos em R
- **Resumo:**  Este trabalho foca na importação e manipulação de dados, além da criação de gráficos em R. As atividades incluem a leitura de arquivos CSV e tabelas, manipulação de conjuntos de dados históricos, construção de matrizes de correlação, e criação de gráficos detalhados como dispersões, ajustes de modelos lineares e quadráticos, e visualização de distribuições de densidade beta. As tarefas aplicam conhecimentos de estatística e programação em R para a análise de dados e visualização de resultados.
- **Código Desenvolvido:** O código completo deste trabalho pode ser acessado na pasta [Trabalho 04](Trabalhos/Atividade04).

#### Trabalho 5:  Uso do Pacote ggplot2
- **Resumo:** Este trabalho explora a criação de gráficos usando o pacote ggplot2 em R, focando em diferentes técnicas de visualização de dados. As atividades incluem adicionar texto a gráficos, construir diagramas de dispersão, personalizar símbolos de dados, e criar gráficos complexos como gráficos de área e densidade. Através do conjunto de dados gapminder, mtcars, e diamonds, os alunos são instruídos a aplicar e combinar múltiplas funções do ggplot2 para manipular e personalizar visualizações. O trabalho envolve a criação de relatórios em formato R Markdown (.html ou .pdf), que devem ser entregues até a data limite especificada.
- **Código Desenvolvido:** O código completo deste trabalho pode ser acessado na pasta [Trabalho 05](Trabalhos/Atividade05).

##### Observação: Todas as atividades de trabalhos foram compiladas em arquivos .html e .pdf.

## ⚙️  Orientações

1. **Instale o R e o R Commander**: Siga as instruções em [CRAN](https://cran.r-project.org/) para instalar o R e o pacote R Commander.
2. **Escolha uma IDE**:
   - **RStudio**: IDE recomendada para trabalhar com R. Baixe em [RStudio](https://www.rstudio.com/).
   - **VSCode**: Outra ótima opção com suporte para R via extensões. Baixe em [VSCode](https://code.visualstudio.com/).
3. **Clone o Repositório**: `git clone https://github.com/Lucas-Henriquee/Repository-in-R.git`

4. **Explore os Exemplos**: Navegue pelos exemplos e tutoriais incluídos para entender melhor como utilizar R para análise de dados.

## 🛠️ Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests com melhorias, correções ou novos conteúdos.

## 📧 Dúvidas?

Qualquer dúvida, entre em contato comigo por [e-mail](mailto:lucashenrique003n@gmail.com).


## 🎓 Considerações Finais

Este material foi desenvolvido na disciplina Laboratório de Estatística (EST-064), ministrada pelo Professor Lupércio França Bessegato, no primeiro sementre de 2024 na UFJF.

---