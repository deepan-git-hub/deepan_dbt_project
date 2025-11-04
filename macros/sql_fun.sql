{% macro sqlfun(a, b) %}
    UPPER({{ a }}) || ' ' || {{ b }}
{% endmacro %}
