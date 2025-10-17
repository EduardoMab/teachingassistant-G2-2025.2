------------------------------------------------------------
Cenario : Seleção de turmas para comparação com sucesso 

Given that i am in the "Comparação de turmas" page
And ive selected the  class : "ESS"
And ive selected the class : "MD"
When i select to compare these classes
Then i go to the "Visualização da comparação" page
And i see the comparrisons in table view
------------------------------------------------------------

------------------------------------------------------------
Cenário : Seleção de turmas para comparação sem sucesso (Número insuficiente de turmas)

Given that i am in the "Comparação de turmas" page 
And ive selected the class : "ESS"
When i select to compare these classes 
Then i receive a message saying that i must selected at least 2 classes to compare
And i remain in the "Copmaração de turmas" page 
------------------------------------------------------------

------------------------------------------------------------
Cenário : Seleção de turmas para comparação sem sucesso (Turmas selecionadas com falta de dados)

Given that i am in the "Comparação de turmas" page 
And ive selected the class : "ESS"
And ive select the class : "MD2"
When i select to compare these classes 
And the class "MD2" doesnt have any students enrolled in it
Then i receive a message saying that i must selected at least 2 classes that have registered data in them
And i remain in the "Copmaração de turmas" page 
------------------------------------------------------------

------------------------------------------------------------
Cenário : Seleção de turmas para comparação sem sucesso (Número de turmas máximo excedido)

Given that i am in the "Comparação de turmas" page 
And ive selected the class : "ESS"
And ive select the class : "MD2"
And ive selected the class : "ESS3"
And ive select the class : "MD23"
And ive selected the class : "ESS3"
And ive select the class : "MD22"
When i select to compare these classes 
Then i receive a message saying that i must selected a maximum of 5 classes for the comparrison
And i remain in the "Copmaração de turmas" page 
------------------------------------------------------------

------------------------------------------------------------
Cenário : Trocando a maneira de expor a comparação

Given that I am in the "Visualização da comparação" page
And I am in "Table View" mode 
When i select "Graph View" mode. 
Then i start seeing the comparrisson in "Graph View" mode 
And i reamain in the "Visualização da comparação" page 
------------------------------------------------------------

------------------------------------------------------------
Cenário : Exportando a comparação 

Given that I am in the "Visualização da comparação" page
When i select to export the comparrison 
Then a file containing the comparison results is generated and downloaded
And i reamain in the "Visualização da comparação" page 
------------------------------------------------------------

------------------------------------------------------------
Cenário : Adicionando uma turma para a comparação com sucesso

Given that I am in the "Visualização da comparação" page
When i select to add a class
And i select MD3
Then MD3 appears in the comparrison
And i reamain in the "Visualização da comparação" page 
------------------------------------------------------------


------------------------------------------------------------
Cenário : Adicionando uma turma para a comparação sem sucesso

Given that I am in the "Visualização da comparação" page
And there are 5 classes already on display
When i select to "add" a class
And i select "MD3"
Then "MD3" appears in the comparrison
And i reamain in the "Visualização da comparação" page 
------------------------------------------------------------

------------------------------------------------------------
Cenário : Removendo uma turma para a comparação com sucesso

Given that I am in the "Visualização da comparação" page
When i select to "remove" a class
And i select "MD3"
Then "MD3" does not appear anymore in the comparrison
And i reamain in the "Visualização da comparação" page 
------------------------------------------------------------

------------------------------------------------------------
Cenário : Removendo uma turma para a comparação sem sucesso

Given that I am in the "Visualização da comparação" page
And there are 2 classes on display
When i select to remove a class
And i select "MD3"
Then i recieve a message saying that at least 2 classes must be on display at all times
And i reamain in the "Visualização da comparação" page 
------------------------------------------------------------














