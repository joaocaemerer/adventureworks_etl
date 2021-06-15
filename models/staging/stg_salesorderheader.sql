with
    source as (
        select 
        /*pks*/
           territoryid
        ,   currencyrateid
        ,   customerid
        ,   shipmethodid
        ,   salesorderid
        ,   billtoaddressid
        ,   salespersonid
        ,   creditcardid
        ,   shiptoaddressid


        ,   purchaseordernumber
        ,   modifieddate
        ,   rowguid
        ,   taxamt
        ,   onlineorderflag
        ,   status
        ,   orderdate
        ,   creditcardapprovalcode
        ,   subtotal
        ,   revisionnumber
        ,   freight
        ,   duedate
        ,   totaldue
        ,   shipdate
        ,   accountnumber

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'sales_salesorderheader')}}
    )

select *
from source