{% macro test_positive_number(model, column_name) %}

select * from {{ model }} where {{ column_name }} < 0

{% endmacro %}