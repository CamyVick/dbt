WITH chamadas as(
    select * from {{ref('callcenter_bronze')}}
)

select * from chamadas