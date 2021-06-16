with
    
    sales_order_header as (
        select 
            orderdate
            , duedate
            , status
            , creditcardid as creditcardid_sales_order_header
            , salesorderid as salesorderid_sales_order_header
            , shiptoaddressid as shiptoaddressid_sales_order_header
            , customerid as customerid_sales_order_header
,      from {{ref('stg_salesorderheader')}}
    )
    , credit_card as (
        select 
            creditcardid
            , cardtype
            , expyear
            , expmonth
            , cardnumber
        from {{ref('stg_creditcard')}}
    )
    , sales_order_detail as (
        select 
        salesorderdetailid
        , orderqty
        , salesorderid as salesorderid_sales_order_detail
        , productid as productid_sales_order_detail
        , unitprice
        , unitpricediscount
        from {{ref('stg_salesorderdetail')}}
    )
    , product as (
        select *
        from {{ref('stg_product')}}
    )
    , sales_order_header_sales_reason as (
        select *
        from {{ref('stg_salesorderheadersalesreason')}}
    )
    , sales_reason as (
        select *
        from {{ref('stg_salesreason')}}
    )
    , address as (
        select *
        from {{ref('stg_address')}}
    )
    , state_province as (
        select *
        from {{ref('stg_stateprovince')}}
    )
    , country_region as (
        select *
        from {{ref('stg_countryregion')}}
    )
    , customer as (
        select *
        from {{ref('stg_customer')}}
    )
    , person as (
        select *
        from {{ref('stg_person')}}
    )

select 
sales_order_header.orderdate
, sales_order_header.salesorderid_sales_order_header as orderid
, sales_order_header.duedate
, sales_order_header.status
, credit_card.cardtype
, sales_order_detail.orderqty
, sales_order_detail.unitprice
, sales_order_detail.unitpricediscount
, product.name as product_name
, sales_reason.name as sales_reason_name
, sales_reason.reasontype
, address.city
, state_province.name as state_name
, country_region.name as country_name
, person.firstname
, person.lastname
, person.persontype

from sales_order_header
left join credit_card on sales_order_header.creditcardid_sales_order_header = credit_card.creditcardid
left join sales_order_detail on sales_order_header.salesorderid_sales_order_header = sales_order_detail.salesorderid_sales_order_detail
left join product on sales_order_detail.productid_sales_order_detail = product.productid
left join sales_order_header_sales_reason on sales_order_header.salesorderid_sales_order_header = sales_order_header_sales_reason.salesorderid
left join sales_reason on sales_order_header_sales_reason.salesreasonid = sales_reason.salesreasonid
left join address on sales_order_header.shiptoaddressid_sales_order_header = address.addressid
left join state_province on address.stateprovinceid = state_province.stateprovinceid
left join country_region on state_province.countryregioncode = country_region.countryregioncode
left join customer on sales_order_header.customerid_sales_order_header = customer.customerid
left join person on customer.personid = person.businessentityid

