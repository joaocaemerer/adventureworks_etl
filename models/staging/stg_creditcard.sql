with
    source as (
        select 
        /*pk*/
        creditcardid
        , cardtype
        , expyear
        , modifieddate
        , expmonth
        , cardnumber
        
	

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'sales_creditcard')}}
    )

select *
from source