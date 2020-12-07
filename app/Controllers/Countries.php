<?php

class Countries extends Controller
{
    private $requestMethod;
    private $requestBody;
    private $data;

    public function __construct()
    {
        $this->requestMethod = $_SERVER['REQUEST_METHOD'];

        $this->requestBody = json_decode(file_get_contents('php://input'), true);
    }
    public function index($country_id = null, $page = null, $pagesize = null)
    {
        $apiv1 =  $this->load('apiv1');
        switch ($this->requestMethod) {
            case 'GET':
                echo Response::respond($apiv1->get($country_id, $page, $pagesize));
                break;
            case 'POST':
                if (!validate($this->requestBody)) {
                    Response::respondAndDie(['Invalid data'], Response::HTTP_NOT_ACCEPTABLE);
                }
                echo Response::respond($apiv1->post($this->requestBody));
                break;
            case 'PUT':
                if (!validate($this->requestBody)) {
                    Response::respondAndDie(['Invalid data'], Response::HTTP_NOT_ACCEPTABLE);
                }
                echo Response::respond($apiv1->put($this->requestBody));
                break;
            case 'DELETE':
                if (is_null($country_id))
                    Response::respondAndDie(['You must enter Country ID'], Response::HTTP_NOT_ACCEPTABLE);
                echo Response::respond($apiv1->delete($country_id));
                break;
            default:
                Response::respondAndDie(['Invalid http method =( GET,POST,PUT,DELETE methods are available.'], Response::HTTP_METHOD_NOT_ALLOWED);
                break;
        }
    }
}
