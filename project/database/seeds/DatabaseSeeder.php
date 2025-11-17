<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
//         $this->call(UserSeeder::class);
        DB::table('languages')->updateOrInsert(
            ['language' => 'en'], // Check if language exists
            [
                'is_default' => 1,         // Default language
                'file'       => 'en.json', // Language file
                'name'       => 'English', // Language name
                'rtl'        => '0',       // 0 = LTR
                'status'     => 1,         // Active
            ]
        );
        DB::table('admin_languages')->updateOrInsert(
            ['language' => 'en'], // Check if language exists
            [
                'is_default' => 1,         // Default language
                'file'       => 'en.json', // Language file
                'name'       => 'English', // Language name
                'rtl'        => '0',       // 0 = LTR
            ]
        );
    }
}
