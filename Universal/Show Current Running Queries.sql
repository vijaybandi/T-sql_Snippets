<?xml version="1.0" encoding="utf-8" ?>
<CodeSnippets  xmlns="http://schemas.microsoft.com/VisualStudio/2005/CodeSnippet">
<_locDefinition xmlns="urn:locstudio">
    <_locDefault _loc="locNone" />
    <_locTag _loc="locData">Title</_locTag>
    <_locTag _loc="locData">Description</_locTag>
    <_locTag _loc="locData">Author</_locTag>
    <_locTag _loc="locData">ToolTip</_locTag>
</_locDefinition>
	<CodeSnippet Format="1.0.0">
		<Header>
			<Title>Show Current Running Queries</Title>
                        <Shortcut></Shortcut>
			<Description>Shows current running queries with their execution plans.</Description>
			<Author>Matan yungman</Author>
			<SnippetTypes>
				<SnippetType>Expansion</SnippetType>
			</SnippetTypes>
		</Header>
		<Snippet>
			
			<Code Language="SQL">
		<![CDATA[
select 
substring(text, statement_start_offset/2+1, ((case when statement_end_offset = -1 then datalength(text) else statement_end_offset end - statement_start_offset)/2) + 1) as running_statement,
text as current_batch,
p.query_plan,
r.*
from sys.dm_exec_requests r
cross apply sys.dm_exec_sql_text(sql_handle) t
outer apply sys.dm_exec_query_plan(plan_handle) p
]]>
			</Code>
		</Snippet>
	</CodeSnippet>
</CodeSnippets>