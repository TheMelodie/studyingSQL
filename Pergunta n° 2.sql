select area_de_formacao, COUNT(id) pessoas_formadas from state_of_data_2022
where nivel_ensino is not null
and nivel_ensino not in ('Estudante de Graduação', 'Não tenho graduação formal', 'Prefiro não informar')
and area_de_formacao not in ('Outras Engenharias', 'Outra opção')
group by area_de_formacao order by pessoas_formadas
desc limit 5;

-- Resposta: Tendo em vista que "Outra opção" e "Outras Engenharias" não são termos --
-- que designam nenhum curso específico, estes são deixados de fora da consulta. --
-- Logo, As 5 áreas mais comuns entre quem tem nível superior são: --
-- Computação / Engenharia de Software / Sistemas de Informação/ TI --
-- Economia/ Administração / Contabilidade / Finanças/ Negócios --
-- Estatística/ Matemática / Matemática Computacional/ Ciências Atuariais --
-- Marketing / Publicidade / Comunicação / Jornalismo --
-- e, por fim, Ciências Biológicas/ Farmácia/ Medicina/ Área da Saúde. --

