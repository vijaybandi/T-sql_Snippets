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
			<Title>SP_HelpIndex</Title>
                        <Shortcut></Shortcut>
			<Description>Code snippet for displaying the indexes of a specified table.</Description>
			<Author>Matan Yungman</Author>
			<SnippetTypes>
                                <SnippetType>SurroundsWith</SnippetType>
			</SnippetTypes>
		</Header>
		<Snippet>
			<Declarations></Declarations>
			<Code Language="SQL"><![CDATA[			
						
sp_helpindex '$selected$' $end$
]]>
			</Code>
		</Snippet>
	</CodeSnippet>
</CodeSnippets>