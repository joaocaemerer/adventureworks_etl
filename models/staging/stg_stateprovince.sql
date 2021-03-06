with
    source as (
        select 
        /*pk*/
        stateprovinceid
        
        , countryregioncode
        , modifieddate
        , rowguid
        , name
        , territoryid
        , isonlystateprovinceflag
        , stateprovincecode
        
	

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'person_stateprovince')}}
    )

select *
from source