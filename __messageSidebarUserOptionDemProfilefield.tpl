{if USER_DEMPROFILEFIELDOPTIONS_SHOWSIDEBAR_ENABLE == 1 && $userProfile->isAccessible('canViewProfile') && !$isReply}
{assign var='__sidebarUserOptions' value=','|explode:MESSAGE_SIDEBAR_USER_OPTIONS_SIDEBARPROFILEFIELD}
	<div class="userDemProfilefield">
		{foreach from=$__sidebarUserOptions item='__sidebarUserOption'}
			{if $userProfile->getUserOption($__sidebarUserOption)}
			{assign var='__formattedUserOption' value=$userProfile->getFormattedUserOption($__sidebarUserOption)}
				{if $__formattedUserOption}
					{if $__sidebarUserOption == "eMarkaddress"}
						<span class="jsTooltip jsStaticDialog" data-dialog-id="{$userProfile->eMarkaddress}" title="{$userProfile->eMarkaddress}">
							<i style="font-size:50px;" class="fa fa-qrcode"></i>
							<img src="/images/style-2/favicon.ico" style="position:absolute; left:6px; top:9px;">
						</span>
						<div id="{$userProfile->eMarkaddress}" class="jsStaticDialogContent" style="display:none;" data-title="{$userProfile->username}{lang}wcf.user.option.eMarkaddress.boxtitle{/lang}">
							<center>
								<img src="https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl={$userProfile->eMarkaddress}&chld=H|0" style="border:7px #e8be74 dashed;" title="{$userProfile->eMarkaddress}" />
							</center>
						</div>
					{/if}
				{/if}
			{/if}
		{/foreach}
	</div>
{/if}
