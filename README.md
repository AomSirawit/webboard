# เว็บบอร์ด

โปรเจกต์นี้เป็นเว็บบอร์ดง่ายๆ ที่พัฒนาด้วย Laravel 10 และ Bootstrap 5

## เทคโนโลยี

- Laravel 10
- Bootstrap 5

## ฟังก์ชัน

### ผู้ใช้งานทั่วไป
- สามารถดูหน้าแสดงข้อมูลต่างๆ บนเว็บบอร์ดได้

### สมาชิก
- เข้าสู่ระบบและออกจากระบบ
- เพิ่มข้อความใหม่
- ดูข้อความต่างๆ บนเว็บบอร์ด

## การติดตั้ง

1. ติดตั้ง Node Package Manager (NPM)
2. ติดตั้ง Composer
3. โคลนโปรเจกต์จาก Github
4. ติดตั้ง Composer dependencies: `composer install`
5. ติดตั้ง NPM dependencies: `npm install`
6. ใช้ไฟล์ sql จากโฟล์เดอร์ mysqldb เป็น database
7. สร้างไฟล์ `.env` และตั้งค่า database
8. รัน migrations: `php artisan migrate`
9. รัน seeders (ถ้ามี): `php artisan db:seed`
10. รันเว็บบอร์ด: `php artisan serve`

## หมายเหตุ

เว็บบอร์ดนี้เป็นเพียงตัวอย่างพื้นฐาน สามารถพัฒนาต่อยอดเพิ่มเติมได้ตามต้องการ

## การศึกษาเพิ่มเติม

- Laravel documentation: [https://laravel.com/docs/10.x/readme](https://laravel.com/docs/10.x/readme)
- Bootstrap documentation: [https://getbootstrap.com/docs/4.1/getting-started/introduction/](https://getbootstrap.com/docs/4.1/getting-started/introduction/)
