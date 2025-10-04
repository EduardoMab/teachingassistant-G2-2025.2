Cenario : Seleção de turmas para comparação com sucesso 

Given that i am in the "Comparação de turmas" page
And ive selected the  class : "ESS"
And ive selected the class : "MD"
When i click to compare these classes
Then i go to the "Visualização da comparação" page
And i see the comparrison 

cenario dummy cenário

Given im at some page
When i do something 
Then something happens
And i go to some page
And if fixed an error

Cenário : Seleção de turmas para comparação sem sucesso 

Given that i am in the "Comparação de turmas" page 
And ive selected the class : "ESS"
When i click to compare these classes 
Then i receive a message saying that i must selected at least 2 classes to compare
And i remain in the "Copmaração de turmas" page 

