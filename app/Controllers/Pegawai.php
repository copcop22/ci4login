<?php

namespace App\Controllers;

class Pegawai extends BaseController
{

    protected $db, $builder;

public function __construct() 
{
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }
    public function index()
    {
        $data['title'] = 'My Profile';
        return view('pegawai/index', $data);
    }

    public function edit($id = false)
    {
  
        $data['title'] = 'Edit Profile';


        $this->builder->select('users.id as userid, username, email, fullname, user_image, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('users.id', $id);
        
        $query = $this->builder->get($id);

        $data['user'] = $query->getRow();

        //MENANGANU URL KOSONG
        return view('pegawai/edit', $data);
    }

    public function update()
    {

        $data['title'] = 'Edit Profile';

        $this->builder->select('users.id as userid, username, email, fullname, user_image, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('userid', $id);

        
        $query = $this->builder->get($id);

        $data['user'] = $query->update($this->request->getPost('userid'), $this->request->getPost($id));

        //MENANGANU URL KOSONG
        return view('pegawai/edit', $data);
    }

}
