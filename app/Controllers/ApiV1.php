<?php

class ApiV1 extends Controller
{
    public function get($country_id = null, $page = null, $pagesize = null)
    {
        $model = $this->model('countries_model');
        $results = $model->get($country_id, $page, $pagesize);
        $response = [];
        foreach ($results as $item) {
            array_push($response, $item);
        }
        return $response;
    }

    public function post($data = [])
    {
        if ($data) {
            $model = $this->model('countries_model');
            $response = $model->insert($data);
            return [$response];
        }
        return [false];
    }

    public function put($data = [])
    {
        if ($data) {
            $model = $this->model('countries_model');
            $response = $model->update_model($data);
            return [$response];
        }
        return [false];
    }

    public function delete($country_id)
    {
        $model = $this->model('countries_model');
        $result = $model->delete_model($country_id);
        return [$result];
    }
}
