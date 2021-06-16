with
    source as (
        select 
        /*pk*/
        salesreasonid
        , name
        , modifieddate
        , CASE 
            WHEN reasontype IS NULL
                THEN 'Sem Resposta'
            ELSE reasontype
        END as reasontype
	

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'sales_salesreason')}}
    )

select *
from source