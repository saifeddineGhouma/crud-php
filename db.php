<?php

require_once 'config.php';

class Database extends Config
{
    // Insert User Into Database
    public function insert($fname, $lname, $email, $phone)
    {
        $sql = 'INSERT INTO users (first_name, last_name, email, phone) VALUES (:fname, :lname, :email, :phone)';
        $stmt = $this->conn->prepare($sql);
        $stmt->execute([
          'fname' => $fname,
          'lname' => $lname,
          'email' => $email,
          'phone' => $phone
        ]);
        return true;
    }

    // Fetch All Users From Database
    public function read($search = null)
    {
        if(!empty($search)){
           
        $sql = 'SELECT * FROM users 
                WHERE first_name LIKE :search 
                OR last_name LIKE :search 
                OR email LIKE :search 
                OR phone LIKE :search 
                OR country LIKE :search';
                $stmt = $this->conn->prepare($sql);
                $stmt->execute(['search' => "%$search%"]);



        }else{
            $sql = 'SELECT * FROM users';
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
        }
        $result = $stmt->fetchAll();
        return $result;
    }

    // Fetch Single User From Database
    public function readOne($id)
    {
        $sql = 'SELECT * FROM users WHERE id = :id';
        $stmt = $this->conn->prepare($sql);
        $stmt->execute(['id' => $id]);
        $result = $stmt->fetch();
        return $result;
    }

    // Update Single User
    public function update($id, $fname, $lname, $email, $phone)
    {
        $sql = 'UPDATE users SET first_name = :fname, last_name = :lname, email = :email, phone = :phone WHERE id = :id';
        $stmt = $this->conn->prepare($sql);
        $stmt->execute([
          'fname' => $fname,
          'lname' => $lname,
          'email' => $email,
          'phone' => $phone,
          'id' => $id
        ]);

        return true;
    }

    // Delete User From Database
    public function delete($id)
    {
        $sql = 'DELETE FROM users WHERE id = :id';
        $stmt = $this->conn->prepare($sql);
        $stmt->execute(['id' => $id]);
        return true;
    }
}
