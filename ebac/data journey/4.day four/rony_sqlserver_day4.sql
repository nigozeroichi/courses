--
--*** CRIAÇÃO TABELA TRANSAÇÃO ***
--

CREATE TABLE tbVendas_Final (
CodCliente	int , 
Categoria	varchar(50), 
SubCategoria varchar(50), 
Produto		varchar(50), 
Ano			int, 
Mes			int, 
Cidade		varchar(50), 
Valor		float, 
Volume		float);

--
--*** CARGA DE DADOS VIA BULK INSERT ***
--
TRUNCATE TABLE tbVendas_Final

BULK INSERT tbVendas_Final
    FROM 'C:\Users\rony.marques.junior\Documents\Jornada de Dados EBAC\Imersao Dados\outPut\Aula 3\Dados para SQL\vendas.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  
	ROWTERMINATOR = '0x0a'
    )

--
--*** CRIAÇÃO TABELA POTENCIAL ***
--

CREATE TABLE tbPotencial_Final (
CodCliente				int, 
Ano						int, 
Area_Comercial			float, 
Area_Hibrida			float, 
Area_Residencial		float, 
Area_Industrial			float, 
ValorPotencial			float
);

--
--*** CARGA DE DADOS VIA BULK INSERT ***
--

TRUNCATE TABLE tbPotencial_Final

BULK INSERT tbPotencial_Final
    FROM 'C:\Users\rony.marques.junior\Documents\Jornada de Dados EBAC\Imersao Dados\outPut\Aula 3\Dados para SQL\potencial.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  
	ROWTERMINATOR = '0x0a'
    );

CREATE INDEX index1 ON tbVendas_Final (CodCliente);
CREATE INDEX index1 ON tbPotencial_Final (CodCliente);