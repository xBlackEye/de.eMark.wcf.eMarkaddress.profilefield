//pageID == 4 (Team-Seite)
{if USER_DEMPROFILEFIELDOPTIONS_SHOWTEAM_ENABLE == 1 && $user->eMarkaddress && $__wcf->getActivePage() !== null && $__wcf->getActivePage()->pageID == 4}
	<div style="margin-left:50px;margin-right:10px;"></div>
	<div class="teamDemProfilefield">
		<a class="jsStaticDialog" data-dialog-id="{$user->eMarkaddress}">
			<i class="fa fa-qrcode"><img src="/images/style-2/favicon.ico" /></i>
		</a>
		<div id="{$user->eMarkaddress}" class="jsStaticDialogContent" style="display:none;" data-title="{$user->username}{lang}wcf.user.option.eMarkaddress.boxtitle{/lang}">
			<center>
				<img src="https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl={$user->eMarkaddress}&chld=H|0" style="border:7px #e8be74 dashed;" title="{$user->eMarkaddress}" />
				<br><br>
				<pre>{$user->eMarkaddress}</pre>
			</center>
		</div>
	</div>
{/if}
