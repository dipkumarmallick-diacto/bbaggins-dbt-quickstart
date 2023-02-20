{{ union_tables_by_prefix(

      database='raw',
      schema='dbt_learn_jinja', 
      prefix='orders__'
        
      )
      
  }}
/* if you have two tables orders__amazon & orders__shopify in the above schema 
then it will find those two tables and will union them */
