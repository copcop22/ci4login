<?php

namespace App\Models;

use CodeIgniter\Model;

class PegewaiModel extends Model
{
        protected $table = 'users';
        protected $primaryKey = 'id';
        protected $returnType = 'object';
        protected $useTimestamps = true;
        protected $allowedFields = ['email', 'username', 'fullname', 'user_image'];

}
