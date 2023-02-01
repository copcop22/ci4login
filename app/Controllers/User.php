<?php

namespace App\Controllers;

class User extends BaseController
{

    protected $db, $builder;

public function __construct() 
{
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        $data['title'] = 'User List';

        // $db      = \Config\Database::connect();
        // $builder = $db->table('users');
        $this->builder->select('users.id as userid, username, email, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $query = $this->builder->get();

        $data['users'] = $query->getResult();

        return view('user/index', $data);
    }

    public function detail($id = 0)
    {
        $data['title'] = 'User List';


        $this->builder->select('users.id as userid, username, email, fullname, user_image, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('users.id', $id);
        $query = $this->builder->get();

        $data['user'] = $query->getRow();

        //MENANGANU URL KOSONG
        if(empty($data['user'])) {
            return redirect()->to('/user');
        }

        return view('user/detail', $data);
    }

}
