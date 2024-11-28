{% macro generate_schema_name(custom_schema_name, node) -%}
    {% set username = env_var('dbt_username') %}
    {%- set default_schema = target.schema -%} 
    {%- if custom_schema_name is none -%}
        {%- set model_path_str = node.path | string -%}
        {%- set normalized_path = model_path_str.replace('\\', '/') -%}
        {%- set folder_name = normalized_path.split('/')[-2] -%}
        {{ folder_name }}
    {%- else -%}
        {{ default_schema }}_{{ custom_schema_name | trim }}
    {%- endif -%}
{%- endmacro %}