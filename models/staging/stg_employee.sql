with
    source as (
        select 
        /*pk*/
        loginid
        , nationalidnumber
        , sickleavehours
        , currentflag
        , modifieddate
        , rowguid
        , gender
        , hiredate
        , salariedflag
        , birthdate
        , maritalstatus
        , organizationnode
        , businessentityid
        , vacationhours
        , jobtitle
	

        /* Stich columns */		
        , _sdc_table_version
        , _sdc_batched_at
        , _sdc_extracted_at
        , _sdc_received_at
        , _sdc_sequence
        
        from {{source('adventureworks_etl', 'humanresources_employee')}}
    )

select *
from source