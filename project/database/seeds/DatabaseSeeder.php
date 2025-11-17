<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        // ======= admin_languages =======
        DB::table('admin_languages')->updateOrInsert(
            ['id' => 1],
            [
                'is_default' => 1,
                'language' => 'English',
                'file' => '1605077901sgDxsDx1.json',
                'name' => '1605077901sgDxsDx1',
                'rtl' => 0,
            ]
        );

        // ======= admins =======
        DB::table('admins')->updateOrInsert(
            ['id' => 1],
            [
                'name' => 'admin',
                'email' => 'admin@gmail.com',
                'phone' => '01724935886',
                'role_id' => 1,
                'photo' => '1673760795n9.jpg',
                'password' => password_hash('password', PASSWORD_BCRYPT),
                'token' => null,
                'verify' => 1,
                'status' => 1,
                'remember_token' => null,
                'created_at' => '2023-01-16 08:48:27',
                'updated_at' => '2023-01-14 23:33:15',
            ]
        );

        // ======= categories =======
        $categories = [
            [1, 1, 'Home', 'home', null, '#55efc4', 0, 0, 1],
            [2, 1, 'About', 'about', null, '#81ecec', 5, 1, 1],
            [3, 1, 'Lifestyle', 'lifestyle', null, '#74b9ff', 1, 1, 1],
            [4, 1, 'Business', 'business', null, '#a29bfe', 2, 1, 1],
            [5, 1, 'Sports', 'sports', null, '#ff7675', 4, 1, 1],
            [6, 1, 'Entertainment', 'entertainment', null, '#e17055', 3, 1, 1],
            [7, 1, 'Tech', 'tech', null, '#f8c291', 7, 1, 1],
            [8, 1, 'Pages', 'pages', null, '#b8e994', 6, 1, 1],
            [12, 1, 'Faq', 'faq', 8, null, null, 1, 1],
        ];

        foreach ($categories as $cat) {
            DB::table('categories')->updateOrInsert(
                ['id' => $cat[0]],
                [
                    'language_id' => $cat[1],
                    'title' => $cat[2],
                    'slug' => $cat[3],
                    'parent_id' => $cat[4],
                    'color' => $cat[5],
                    'category_order' => $cat[6],
                    'show_at_homepage' => $cat[7],
                    'show_on_menu' => $cat[8],
                ]
            );
        }

        // ======= fonts =======
        $fonts = [
            [1, 0, 'Roboto', 'Roboto'],
            [2, 0, 'Spartan', 'Spartan'],
            [3, 0, 'Oxanium', 'Oxanium'],
            [4, 0, 'Open Sans', 'Open Sans'],
            [5, 0, 'Caladea', 'Caladea'],
            [6, 0, 'Montserrat', 'Montserrat'],
            [7, 0, 'Trade Winds', 'Trade+Winds'],
            [8, 0, 'New Rocker', 'New+Rocker'],
            [9, 0, 'Lacquer', 'Lacquer'],
            [10, 1, 'Mukta', 'Mukta'],
        ];

        foreach ($fonts as $font) {
            DB::table('fonts')->updateOrInsert(
                ['id' => $font[0]],
                [
                    'is_default' => $font[1],
                    'font_family' => $font[2],
                    'font_value' => $font[3],
                ]
            );
        }

        // ======= generalsettings =======
        DB::table('generalsettings')->updateOrInsert(
            ['id' => 1],
            [
                'logo' => 'aa.png',
                'footer_logo' => 'aa.png',
                'favicon' => null,
                'loader' => null,
                'is_loader' => 0,
                'admin_loader' => null,
                'title' => 'NewsPaper',
                'theme_color' => '#ff0000',
                'footer_color' => '#196cad',
                'tawk_to' => '5e37fe76298c395d1ce5e8b1',
                'is_talkto' => 1,
                'disqus' => 'newspaper-7',
                'is_capcha' => 1,
                'is_disqus' => 1,
                'copyright_text' => 'Copyright © 2019. All Rights Reserved By News Paper',
                'copyright_color' => '#000000',
                'footer_text' => '<font size="3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmid tempor incididunt ut labore et dolore magna aliqua.</font>',
                'tags' => 'sports, national, worlds, usa, popular, politics, election, science, bollywood, hollywood, barcalona, justin, brazil, australia, cricket, football, google, facebook, linkedin, nepal',
                'error_photo' => '1579421576banner_error_404.jpg',
                'error_title' => 'fgf',
                'error_text' => 'fgh',
                'driver' => 'smtp',
                'smtp_host' => 'smtp.mailtrap.io',
                'smtp_port' => '587',
                'email_encryption' => 'tls',
                'smtp_user' => 'df3da325f3ec48',
                'smtp_pass' => '8e18def867639a',
                'from_email' => 'geniustest@gmail.com',
                'from_name' => 'GeniusTest',
                'time_zone' => 'Asia/Kathmandu',
                'is_smtp' => 1,
                'is_verification_email' => 1,
                'version' => '2.2',
                'captcha_site_key' => 'fsasdf',
                'captcha_secret_key' => 'fsdgdfgd',
            ]
        );

        // ======= languages =======
        DB::table('languages')->updateOrInsert(
            ['id' => 1],
            [
                'is_default' => 1,
                'language' => 'English',
                'file' => '1716627345FuDfkSeJ.json',
                'name' => '1716627345FuDfkSeJ',
                'rtl' => '0',
                'status' => 0,
            ]
        );

        // ======= roles =======
        $roles = [
            [1, 'admin', '["menu_builder","pages","categories","add_post","add_gallery","posts","schedule_post","drafts","rss_feeds","polls","widgets","create_ads","newsLetter","contact_messages","languages","general_settings","social_settings","seo_tools","emails_settings","role_management","font_option","user_management","cache_management","administration_management"]'],
            [2, 'moderator', '["pages","categories","add_post","add_gallery","posts","schedule_post","drafts","rss_feeds","polls","widgets","create_ads","newsLetter","contact_messages","languages","general_settings","social_settings","seo_tools","emails_settings","font_option","user_management","cache_management"]'],
            [3, 'author', '["add_post","add_gallery","posts","schedule_post","drafts","cache_management"]'],
            [4, 'user', '["add_post","posts","schedule_post","drafts"]'],
            [5, 'HR', '["menu_builder","pages","add_post","posts","drafts","polls","create_ads","contact_messages","general_settings","seo_tools","role_management","user_management","administration_management"]'],
        ];

        foreach ($roles as $r) {
            DB::table('roles')->updateOrInsert(
                ['id' => $r[0]],
                [
                    'name' => $r[1],
                    'section' => $r[2], // Note: column is `section`, not `permissions`
                ]
            );
        }


        // ======= social_links =======
        $socials = [
            [2, 'facebook', 'https://www.facebook.com', 'fab fa-facebook-f'],
            [3, 'twitter', 'https://twitter.com/', 'fab fa-twitter'],
            [4, 'instagram', 'https://www.instagram.com/', 'fab fa-instagram'],
            [5, 'linkedin', 'https://linkedin.com/', 'fab fa-linkedin-in'],
            [6, 'youtube', 'https://www.youtube.com/', 'fab fa-youtube'],
        ];

        foreach ($socials as $s) {
            DB::table('social_links')->updateOrInsert(
                ['id' => $s[0]],
                [
                    'name' => $s[1],
                    'link' => $s[2],
                    'icon' => $s[3],
                ]
            );
        }

        // ======= widget_settings =======
        DB::table('widget_settings')->updateOrInsert(
            ['id' => 1],
            [
                'feature_inhome' => 1,
                'category_inhome' => 1,
                'follow_inhome' => 1,
                'tag_inhome' => 1,
                'poll_inhome' => 1,
                'calendar_inhome' => 1,
                'newsletter_inhome' => 1,
                'category_incategory' => 1,
                'newsletter_incategory' => 1,
                'calendar_incategory' => 1,
                'category_indetails' => 1,
                'newsletter_indetails' => 1,
                'calendar_indetails' => 1,
            ]
        );
    }
}
