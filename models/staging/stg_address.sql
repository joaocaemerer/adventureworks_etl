with
    source as (
        select 
        /*pk*/
        addressid
        , stateprovinceid
        
        , city
        , addressline2
        , modifieddate
        , rowguid
        , postalcode
        , spatiallocation
        , addressline1
        
	

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'person_address')}}
    )

select *
from source