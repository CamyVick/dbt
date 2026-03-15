WITH chamadas as(
    select * from {{ref('chamadas_bronze')}}
)

SELECT 
  *,
  CASE 
    WHEN STATUS = 1 THEN 'Atendidas'
    ELSE 'Abandonadas'
  END AS Status_final
  ,case when `tme `<= 30 then 1 else 0 end Atendida_NS
FROM `schema.chamadas`