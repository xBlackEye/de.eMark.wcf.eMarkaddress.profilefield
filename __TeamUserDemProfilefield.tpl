{if USER_DEMPROFILEFIELDOPTIONS_SHOWTEAM_ENABLE == 1 && $userProfile->eMarkaddress}
<div style="margin-left: 50px;margin-right: 10px;"></div>
	<div class="teamDemProfilefield">
		<a class="jsStaticDialog" data-dialog-id="{$userProfile->eMarkaddress}">
			<i class="fa fa-qrcode"><img src="/images/style-2/favicon.ico" /></i>
		</a>
		<div id="{$userProfile->eMarkaddress}" class="jsStaticDialogContent" style="display:none;" data-title="{$userProfile->username}{lang}wcf.user.option.eMarkaddress.boxtitle{/lang}">
			<center>
				<img src="https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl={$userProfile->eMarkaddress}&chld=H|0" style="border:7px #e8be74 dashed;" title="{$userProfile->eMarkaddress}" />
    			<br><br>
    			<pre>{$userProfile->eMarkaddress}</pre>
			</center>
		</div>
	</div>
{/if}
