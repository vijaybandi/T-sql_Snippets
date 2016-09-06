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
			<Title>Count rows per partition</Title>
                        <Shortcut></Shortcut>
			<Description>Code Snippet for counting the number of rows in a table per partition.</Description>
			<Author>Matan Yungman</Author>
			<SnippetTypes>
                                <SnippetType>SurroundsWith</SnippetType>
			</SnippetTypes>
		</Header>
		<Snippet>
			<Declarations></Declarations>
			<Code Language="SQL"><![CDATA[
SELECT partition_number, rows FROM SYS.PARTITIONS WHERE object_id=object_id('$selected$') and index_id in(0,1) $end$
]]>
			</Code>
		</Snippet>
	</CodeSnippet>
</CodeSnippets>