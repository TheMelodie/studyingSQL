select count(id) as total_mulheres, regiao_onde_mora FROM state_of_data_2022
where genero = 'Feminino'
and faixa_salarial = 'Acima de R$ 40.001/mês' and regiao_onde_mora is not NULL
order by total_mulheres desc
limit 1;

-- Resposta: A maior faixa salarial da pesquisa é acima de R$ 40.001,00, --
-- logo, utlizando os dados disponíveis, a região com mais mulheres --
-- recebendo nessa faixa salarial é a região Sudeste. --
