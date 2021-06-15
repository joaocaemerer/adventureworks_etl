with
    source as (
        select 
        /*pk*/
        businessentityid
        , territoryid
        , salesquota
        , modifieddate
        , rowguid
        , saleslastyear
        , commissionpct
        , bonus
        , salesytd
	

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'sales_salesperson')}}
    )

select *
from source