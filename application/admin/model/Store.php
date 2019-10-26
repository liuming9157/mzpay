<?php

namespace app\admin\model;

use think\Model;
use app\admin\model\Salesman;
use app\admin\model\Agent;


class Store extends Model
{

    

    

    // 表名
    protected $name = 'store';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = false;

    // 追加属性
    protected $append = [
        'status_text'
    ];
    

    
    public function getStatusList()
    {
        return ['0' => __('Status 0'), '1' => __('Status 1')];
    }


    public function getStatusTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['status']) ? $data['status'] : '');
        $list = $this->getStatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }

     public function getAgentIdAttr($value, $data)
    {
        $value = Agent::get($value)->name;
        return $value;
    }
    public function getSalesmanIdAttr($value, $data)
    {
        $value = Salesman::get($value)->name;
        return $value;
    }




}
