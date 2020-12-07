<?php

use Illuminate\Database\Eloquent\Model;

class Countries_model extends Model
{
    protected $table = 'country';
    public $timestamps = false;

    public function get($country_id = null, $page = null, $pagesize = null)
    {
        $country_id = !is_null($country_id) ? (int)$country_id : null;
        $page = !is_null($page) ? (int)$page : null;
        $pagesize = !is_null($pagesize) ? (int)$pagesize : null;
        if ($country_id !== 0 && !is_null($page) && !is_null($pagesize)) {
            $start = ($page - 1) * $pagesize;
            $result = self::where('id', $country_id)->skip($start)->take($pagesize)->get();
            return $result;
        }
        if ($country_id !== 0 && is_numeric($country_id)) {
            $result = self::where('id', $country_id)->get();
            return $result;
        }
        if ($country_id === 0 && !is_null($page) && !is_null($pagesize)) {
            $start = ($page - 1) * $pagesize;
            $result = self::all()->skip($start)->take($pagesize);
            return $result;
        }
        $result = self::all();
        return $result;
    }

    public function insert($data)
    {
        $name = $data['name'];
        $numCode = $data['num_code'];
        $phoneCode = $data['phone_code'];
        $this->name = $name;
        if (!is_null($numCode))
            $this->numcode = $numCode;
        if (!is_null($phoneCode))
            $this->phonecode = $phoneCode;
        $result = $this->save();
        return $result;
    }

    public function update_model($data)
    {
        $country_id = $data['country_id'];
        $name = $data['name'];
        $numCode = $data['num_code'];
        $phoneCode = $data['phone_code'];
        $result = self::where('id', $country_id)
            ->update([
                'name' => $name,
                'numcode' => $numCode,
                'phonecode' => $phoneCode
            ]);
        return $result;
    }

    public function delete_model($country_id)
    {
        $country = self::find($country_id);
        if ($country)
            return $result = $country->delete();
        return false;
    }
}
