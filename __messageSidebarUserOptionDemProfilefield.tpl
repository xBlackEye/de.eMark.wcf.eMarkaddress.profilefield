{if USER_DEMPROFILEFIELDOPTIONS_SHOWSIDEBAR_ENABLE == 1 && $userProfile->isAccessible('canViewProfile') && $userProfile->eMarkaddress}
	<div class="userDemProfilefield">
		<a class="jsTooltip jsStaticDialog" data-dialog-id="{$userProfile->eMarkaddress}">
			<i class="fa fa-qrcode"></i>
			<img src="/images/style-2/favicon.ico" />
		</a>
		<div id="{$userProfile->eMarkaddress}" class="jsStaticDialogContent" style="display:none;" data-title="{$userProfile->username}{lang}wcf.user.option.eMarkaddress.boxtitle{/lang}">
			<center>
				<img src="https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl={$userProfile->eMarkaddress}&chld=H|0" style="border:7px #e8be74 dashed;" title="{$userProfile->eMarkaddress}" />
			</center>
		</div>
	</div>
{/if}
