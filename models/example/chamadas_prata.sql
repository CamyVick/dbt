WITH chamadas as(
    select * from {{ref('chamadas_bronze')}}
)

SELECT 
  id_unico
,cast(data as date) as Data 
,TMA as TEMPO_FALANDO
,`tme ` as TEMPO_FILA
,STATUS AS INDENTIFICADOR
,CASE 
    WHEN STATUS = 1 THEN 'Atendidas'
    ELSE 'Abandonadas'
  END AS Status_final
,case when `tme `<= 30 then 1 else 0 end Atendida_NS
FROM `schema.chamadas`