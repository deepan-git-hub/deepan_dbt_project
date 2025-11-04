{% macro ifs(color) %}

    {% if color == 'Red' %}

        'Yes,You are selected Red Color'

        {% elif color == 'Green'%}

           'Yes,You are selected Green Color'

        {% elif color == 'Blue'%}

           'Yes,You are selected Blue Color'

    {% else %}

        'Yes,You are selected other Color'    


    {% endif %}

{% endmacro %}