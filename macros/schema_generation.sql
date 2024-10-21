{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set default_schema = target.schema -%} 
    {%- if custom_schema_name is none -%}
        {%- set model_path_str = node.path | string -%}
        {%- set folder_name = model_path_str.split('/')[-2] -%}
        {{ folder_name }}
    {%- else -%}
        {{ default_schema }}_{{ custom_schema_name | trim }}
    {%- endif -%}
{%- endmacro %}
