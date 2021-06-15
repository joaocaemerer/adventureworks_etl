with
    source as (
        select 
        /*pk*/
        customerid
        
        , territoryid
        , storeid
        , personid

        , cast(modifieddate as date) as modifieddate
        , rowguid

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'sales_customer')}}
    )

select *
from source