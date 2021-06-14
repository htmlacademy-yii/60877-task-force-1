<?php

namespace htmlacademy\models;

abstract class AbstractClass
{
    protected $inner_name;
	protected $public_name;

    abstract public function CheckRights($idExecutor, $idTaskmaker, $idUser);
        public function get_inner_name () {
            return $this->$inner_name;
        }
        public function get_public_name () {
            return $this->$public_name;
        }
    }









