with chamadas as (
    select * from {{ref('chamadas_prata')}}
)

select 
data
,sum(tempo_falando)tempo_falando
,sum(tempo_fila)tempo_fila
,sum(case when indentificador = 1 then 1 else 0 end)Atendidas
,sum(case when indentificador = 2 then 1 else 0 end)Abandonadas
,sum(case when indentificador in (1,2) then 1 else 0 end)Recebidas
,sum(Atendida_NS)Atendida_NS
from chamadas
group by data