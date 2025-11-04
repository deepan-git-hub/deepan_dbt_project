{% macro generate_greetings() %}

    {% set columns = ['host_id','name','is_superhost'] %}

    {% for columns in columns %}

        {{ columns }},

    {% endfor %}    

{% endmacro %}