{% macro test_not_null_macro(model,column) %}

    select {{column}}
    from {{ref(model)}}
    where {{column}} is null

{% endmacro %}