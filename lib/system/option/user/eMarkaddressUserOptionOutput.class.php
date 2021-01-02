<?php
namespace wcf\system\option\user;
use wcf\data\user\option\UserOption;
use wcf\data\user\User;
use wcf\util\StringUtil;
/**
 * @author      xBlackEye
 * @license     GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @copyright   2021
 * @package     de.eMark.wcf.eMarkaddress.profilefield
 */
class eMarkaddressUserOptionOutput implements IUserOptionOutput {
    	public function getOutput(User $user, UserOption $option, $value) {
		if (empty($value)) return '';
		
		$value = StringUtil::encodeHTML($value);
			
		if (empty($value))
		
		return '<a href="#'.$value.'" class="jsTooltip jsStaticDialog" data-dialog-id="'.$value.'" title="{lang}wcf.user.option.eMarkaddress.profile.title{/lang}">'.$value.'</a>
			<div id="'.$value.'" class="jsStaticDialogContent" style="display: none" data-title="'.$value.'">
				<img src="https://chart.apis.google.com/chart?cht=qr&chs=500x500&chl='.$value.'&chld=H|0" /><br/><kbd>'.$value.'</kbd>
			</div>';
	}
}