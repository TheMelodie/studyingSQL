select cor_raca_etnia as etnia, genero, count(*) as total_lideres
from state_of_data_2022
where cargo_como_gestor in ('Chapter Lead','Chefe de Secretaria','Diretor/VP','Gerente/Head',
                            'LIder','Supervisor/Coordenador','Sócio ou C-level (CEO, CDO, CIO, CTO etc)')
and etnia is not 'Prefiro não informar' and genero is not null
group by cor_raca_etnia, genero
order by cor_raca_etnia, genero

-- Como "Prefiro não informar" implica em falta de informação, considerei um valor nulo --
-- e deixei de fora da consulta. Enquanto isso, "Outra" ainda indica que houve resposta, --
-- porém diferente dos grupos já nomeados, por isso permaneceu na consulta. --


