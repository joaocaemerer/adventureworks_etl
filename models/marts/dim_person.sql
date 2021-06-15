with
    source as (
        select 
        /*pk*/
        businessentityid

        , firstname	
        , middlename
        , lastname			
        , persontype			
        , namestyle			
        , suffix			
        , modifieddate	
        , rowguid			
        , emailpromotion			
        , title	

        from {{ref('stg_person')}}
    )
    /*, transformed as (
        select
            row_number() over (order by businessentityid) as businessentitysk
    )*/

select *
from source