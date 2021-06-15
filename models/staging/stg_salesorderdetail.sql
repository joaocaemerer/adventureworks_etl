with
    source as (
        select 
        salesorderdetailid
        , orderqty
        , salesorderid
        , rowguid
        , productid
        , specialofferid

        , unitprice
        , cast(modifieddate as date) as modifieddate	
        , carriertrackingnumber
        , unitpricediscount

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'sales_salesorderdetail')}}
    )

select *
from source