{% macro generate_alias_name(custom_alias_name, node) %}
{% set username = var('dbt_username') %}
  {% if custom_alias_name is none %}
    {{ username ~ '_' ~ node.name }}
  {% else %}
    {{ custom_alias_name }}
  {% endif %}
{% endmacro %}