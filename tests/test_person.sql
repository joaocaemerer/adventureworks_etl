with
    validation as (
        select count(*)  as count
        from {{ref('dim_person')}}
    )

select * from validation where count = 0