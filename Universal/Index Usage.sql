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
			<Title>Index usage</Title>
                        <Shortcut></Shortcut>
			<Description>Code snippet for displaying index usage stats for a given table.</Description>
			<Author>Matan Yungman</Author>
			<SnippetTypes>
                                <SnippetType>SurroundsWith</SnippetType>
			</SnippetTypes>
		</Header>
		<Snippet>
			<Declarations></Declarations>
			<Code Language="SQL"><![CDATA[			
select i.name as index_name, s.* from sys.dm_db_index_usage_stats s
inner join sys.indexes i
on s.object_id = i.object_id and s.index_id = i.index_id
where s.database_id = db_id() and s.object_id = object_id('$selected$')	$end$
]]>
			</Code>
		</Snippet>
	</CodeSnippet>
</CodeSnippets>