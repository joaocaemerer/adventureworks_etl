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
        , cast(modifieddate as date) as modifieddate	
        , rowguid			
        , emailpromotion			
        , title

	

        /* Stich columns */		
        , _sdc_received_at			
        , _sdc_sequence	
        , _sdc_batched_at			
        , _sdc_extracted_at
        , _sdc_table_version			

        
        from {{source('adventureworks_etl', 'person_person')}}
    )

select *
from source