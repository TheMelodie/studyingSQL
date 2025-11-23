select 'Sem Graduação Formal' as graduacao, AVG(sal.ponto_medio_faixa_salarial) salario_medio from state_of_data_2022 as dados
left join vw_experiencia_area_dados as xp on dados.anos_experiencia_na_area_dados = xp.anos_experiencia_na_area_dados
left join vw_media_salarial_por_faixa as sal on dados.faixa_salarial = sal.faixa_salarial
where nivel_ensino in ('Não tenho graduação formal', 'Estudante de Graduação')
	and dados.setor = 'Tecnologia/Fábrica de Software'
	and xp.media_experiencia_em_anos <= 5

UNION

select 'Com Graduação Formal' as graduacao, AVG(sal.ponto_medio_faixa_salarial) salario_medio from state_of_data_2022 as dados
left join vw_experiencia_area_dados as xp on dados.anos_experiencia_na_area_dados = xp.anos_experiencia_na_area_dados
left join vw_media_salarial_por_faixa as sal on dados.faixa_salarial = sal.faixa_salarial
where nivel_ensino not in ('Prefiro não informar', 'Não tenho graduação formal', 'Estudante de Graduação')
	and dados.setor = 'Tecnologia/Fábrica de Software'
	and xp.media_experiencia_em_anos <= 5
    
-- Deixei "Prefiro não informar" de fora da consulta pois equivale nesse contexto à ausência de dados, --
-- além disso, também considerei "Estudante de Graduação" como "Sem Graduação Formal", pois a pessoa --
-- ainda não se graduou. Também especifiquei o setor na consulta, pois ela é referente à área de dados. --