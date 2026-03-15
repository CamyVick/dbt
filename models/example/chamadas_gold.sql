with chamadas as (
    select * from {{ref('chamadas_prata')}}
)

select 
id_unico
--,convert(date,data,103) as Data 
,TMA as TEMPO_FALANDO
,`tme ` as TEMPO_FILA
,STATUS AS INDENTIFICADOR
,Status_final
,Atendida_NS
from chamadas