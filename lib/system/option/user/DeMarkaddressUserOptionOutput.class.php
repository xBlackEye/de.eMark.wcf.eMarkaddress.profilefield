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
class DeMarkaddressUserOptionOutput implements IUserOptionOutput {
    	public function getOutput(User $user, UserOption $option, $value) {
		if (empty($value)) return '';
		
		$value = StringUtil::encodeHTML($value);
				
		return '<a href="#'.$value.'" class="jsTooltip jsStaticDialog" data-dialog-id="'.$value.'" title="QR-Code">'.$value.'</a>
			<div id="'.$value.'" class="jsStaticDialogContent" style="display:none;text-align:center;" data-title="'.$user->username.' - '.$value.'">
				<img title="'.$value.'" src="https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl='.$value.'&chld=H|0" style="border:7px #e8be74 dashed;" />
				<br><br>
				<pre>'.$value.'</pre>
			</div>';
	}
}
