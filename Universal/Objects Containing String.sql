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
			<Title>Objects containing string</Title>
                        <Shortcut></Shortcut>
			<Description>Code snippet for displaying progremmatic objects that contain a certain string.</Description>
			<Author>Matan Yungman</Author>
			<SnippetTypes>
                                <SnippetType>SurroundsWith</SnippetType>
			</SnippetTypes>
		</Header>
		<Snippet>
			<Declarations></Declarations>
			<Code Language="SQL"><![CDATA[			
select object_name(object_id) as object_name,definition
from sys.sql_modules
where definition like '%$selected$%' $end$
]]>
			</Code>
		</Snippet>
	</CodeSnippet>
</CodeSnippets>