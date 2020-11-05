<?php

use Illuminate\Database\Seeder;

class user extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('user')->insert([
            ['laozi_username'=>'zzz','laozi_password'=>bcrypt('123321')]

        ]);
    }
}
