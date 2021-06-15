with
    source as (
        select 
        productid
        , productsubcategoryid
        , productmodelid

        , sellenddate
        , safetystocklevel
        , finishedgoodsflag
        , class
        , makeflag
        , productnumber
        , reorderpoint
        , modifieddate
        , rowguid
        , weightunitmeasurecode
        , standardcost
        , name
        , style
        , sizeunitmeasurecode
        , listprice
        , daystomanufacture
        , productline
        , size
        , color
        , sellstartdate
        , weight

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'production_product')}}
    )

select *
from source