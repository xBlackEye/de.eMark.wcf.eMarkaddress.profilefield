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

		chdir('public_html');
		
		$qrimg = file_get_contents('./images/qr_codes/'.$value.'png');
		$qrimgurl = 'https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl='.$value.'&chld=H|0';
		
		$qrinfo = getimagesize($qrimg);

		if(!$qrinfo){
		    file_put_contents($qrimg, file_get_contents($qrimgurl));
		}
				
		return '<a href="#'.$value.'" class="jsTooltip jsStaticDialog" data-dialog-id="'.$value.'" title="QR-Code">'.$value.'</a>
			<div id="'.$value.'" class="jsStaticDialogContent" style="display: none" data-title="'.$value.'">
				<img title="'.$value.'" src="https://deutsche-emark.org'.$qrimg.'" /><br><br><kbd>'.$value.'</kbd>
			</div>';
	}
}
