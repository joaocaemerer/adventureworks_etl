with
    source as (
        select 
        /*pk*/
        countryregioncode
        , name
        , modifieddate
    
        
        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'person_countryregion')}}
    )

select *
from source