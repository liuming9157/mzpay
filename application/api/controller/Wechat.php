<?php
namespace app\api\controller;
use think\Model;
use think\Config;
use wechat\Application;
use app\common\controller\Api;
class Wehcat extends Api{
	public _initialize(){
		$appid=Config::get('mzpay.wx_appid');
		$mch_id=Config::get('mzpay.wx_mchid')
	}
	
	//下载对账单
	public function getBill(){
		
	}
}