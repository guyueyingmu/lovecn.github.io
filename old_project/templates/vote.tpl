<title>选手管理</title>
<body bgcolor="#CBE7F5">
<link rel="stylesheet" href="common/common.css" type="text/css" />
<link rel="shortcut icon" href="mingyun60.ico" type="image/x-icon" />
<link href="common/jquery-ui.css" rel="stylesheet" type="text/css" media="screen" />
<link href="common/jquery-ui-timepicker.css" rel="stylesheet" type="text/css" media="screen" />
<script src="common/jquery.1.5.2.js" type="text/javascript"></script>
<script type="text/javascript" src="common/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="common/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" charset="utf-8" defer>
	$(function(){
		$("#datetime").datepicker({
			changeMonth: true,changeYear: true,showWeek:true,navigationAsDateFormat:true,gotoCurrent:true,buttonImageOnly:true,hideIfNoPrevNext:true,minDateTime: 0,dateFormat:'yy-mm-dd'
		});
	});
</script>
<div class='player'>
<table border="1" width="80%" height="80%" cellspacing=0 cellpadding=0 style="valign：middle;margin:auto" align='center'>
	<form name='form' method='get' id='post'>
	
		<tr><td colspan='2' style='background:repeat-x 0 -222px;' align='center'><input type='text' name='time'   id="datetime" class="Wdate"   maxlength='12' autocomplete="off" x-webkit-speech speech placeholder="请选择时间" style="border:1px solid #FFF;outline:none;font-size:14px;color:#999 !important;"><input type='submit' value='搜索' style="cursor:pointer" id='submit' name='search'><input type='hidden' value='{#$id#}' style=""  name='id'></td>
	</form>
	</tr>
    <tr>
       <td class='player' valign="middle"  align='center'>投票人号码</td>
       <td class='player'>投票时间</td>
      
    </tr>
	{#foreach from="$xuanshou" item='v'#}        	
			<tr>
        	  <td  class='player'>{#$v.caller#}</td>
        	  <td class='player' >{#$v.whendo#}</td>
			</tr>
	{#/foreach#}
<tr>
	<td colspan='2' align='center'>共<font size="30px" color="red">{#$pageTotal#}</font>页&nbsp;第<font size="30px" color="red">{#$p#}</font>页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="{#$url#}&p=1">首页</a>
   {#if $p > 1#}
   	<a href="{#$url#}&p={#$p-1#}">上一页</a>
   {#/if#}
   {#foreach from="$list" item='v'#}
           	<a href="{#$url#}&p={#$v#}" >{#if $v eq $p#}<font size='30px' color='red'>{#$v#}</font>{#else#}<font size='10px' >{#$v#}</font>{#/if#}</a>&nbsp;&nbsp;
  {#/foreach#}
   {#if $p < $pageTotal#}
   	<a href="{#$url#}&p={#$p+1#}">下一页</a>
   {#/if#}
 
 <a href="{#$url#}&p={#$pageTotal#}">尾页</a>
  
  <!--
		<select onchange="location.href='{#$url#}&p='+this.value">
         {#foreach from="$num" item='v'#}
           	<option value="{#$v#}" {#if $v eq $p#}selected="selected"{#/if#}>第{#$v#}页</option>
           {#/foreach#}
       </select>
       -->
	   <input type='button' onclick='window.history.back(-1)' value='返回' style="cursor:pointer"> <input type='button' onclick="javascript:window.location.href='manage.php';" value='首页' style="cursor:pointer">
 </td>
</tr>  
</table>
  </div>
</body>