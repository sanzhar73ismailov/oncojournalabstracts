<div id="search">

<form action="index.php" method="post">
<input type="hidden" name="page" value="search"/>
<div class="input-group mb-3">
	<input type="text" class="form-control" name="search" value="{$search_text}"> 
	<div class="input-group-append">
		<input class="btn btn-primary"  type="submit" value="Search"> 
	</div>
</div>

<table>
<tr><td>

<b>Search by:</b> 
<input type="radio" required name="fn" value="author" {if $search_criteria eq 'author'}checked{/if}>author's name &nbsp;
<input type="radio" required name="fn" value="title" {if $search_criteria eq 'title'}checked{/if}>title &nbsp;
<input type="radio" required name="fn" value="abstract" {if $search_criteria eq 'abstract'}checked{/if}>abstract(any language)
<nobr><input type="radio" required name="fn" value="keywords" {if $search_criteria eq 'keywords'}checked{/if}>keywords</nobr><Br/>

</td></tr>
<tr><td>
<b>Sorting:</b> 
<input type="radio" required name="sortby" value="asc" {if $sortby eq 'asc'}checked{/if}>newest first &nbsp;
<input type="radio" required name="sortby" value="desc" {if $sortby eq 'desc'}checked{/if}>oldest first &nbsp;
</td></tr>
</table>


</form>


{if $search_text neq ''}Found : {$publs|@count}{/if}

<table class="table table-bordered">
	{foreach from=$publs item=publ name=foo}
	<tr style="text-align: center; padding: 10px;">
		<td><nobr>{$smarty.foreach.foo.iteration}</nobr></td>
		<td style="text-align: left; padding: 10px;">
		<i>{$publ->authors}</i><br/>{$publ->name}
		<br/>
		<a href="" id="showAbstract{$publ->id}" onclick="showAbstarct({$publ->id},'{$lang}');return false;">{$showAbstractLabel} >></a>
		<div style="display:none; background-color: #EFF6FE;" id="abstract{$publ->id}">{$publ->abstract}</div>
		</td>
        <td><a href="index.php?page=abstract&id={$publ->id}" target="_blank"><nobr>{$publ->year}, {$publ->issue}, №{$publ->number}, {$publ->p_first}-{$publ->p_last}</nobr></a></td>
		<td><a class="dowloadJournal" onclick=contClick({$publ->id},'p');
			href="archive/papers/{$publ->file}"
			download><img src="img/icon-pdf-small.gif"
			alt="{$publ->file}"
			title="{$text['Download']}"/></a>
			</td>
	{/foreach}

</table>
</div>