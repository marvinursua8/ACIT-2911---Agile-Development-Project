-- admin
INSERT INTO
    "public"."admin" ("id", "username", "password_hash")
VALUES
    (
        1,
        'my_admin_name',
        'scrypt:32768:8:1$gztNDoAxh1aDRAnk$72803675334ccfca19fb3360184e5106780a16c09d2c2815d40b0ff8b7f2c4017cff4b86c8caa5b2b28d53481bd3af3e8322f656d3ccf7c2f343dd9b2760b543'
    );

-- animals
INSERT INTO
    "public"."animals" (
        "id",
        "name",
        "species",
        "breed",
        "gender",
        "age",
        "size",
        "color",
        "house_trained",
        "description",
        "adopted"
    )
VALUES
    (
        1,
        'Robin',
        'Dog',
        'Dachshund',
        'Male',
        9,
        'medium',
        'brown',
        'House trained',
        'Marvin''s dog yaaaaaaaaaaay',
        false
    ),
    (
        2,
        'Rocco',
        'Dog',
        'German Shepard',
        'Male',
        7,
        'large',
        'light brown',
        'House trained',
        'Will protecc',
        false
    ),
    (
        3,
        'Fifi',
        'Dog',
        'Pomeranian',
        'Female',
        5,
        'small',
        'white',
        'House trained',
        'awwwwww',
        false
    ),
    (
        55,
        'Roxy',
        'Goby',
        'Unknown',
        'female',
        2,
        'small',
        'Brown',
        'Not house trained',
        'Glop glop',
        true
    ),
    (
        56,
        'Sunny',
        'Sun bear',
        'Unknown',
        'male',
        5,
        'large',
        'Black',
        'Not house trained',
        'Crazy long tongue',
        false
    ),
    (
        61,
        'Sunbringer',
        'Cat',
        'Khao Manee',
        'female',
        8,
        'small',
        'White',
        'House trained',
        'First-generation Void Hunter',
        false
    ),
    (
        108,
        'Dylan',
        'Human',
        'yes',
        'male',
        18,
        'large',
        'yeah',
        'Not house trained',
        'a loveable guy',
        false
    ),
    (
        125,
        'Neo',
        'Cat',
        'Cat',
        'male',
        7,
        'small',
        'White and gray',
        'House trained',
        'Neo is a sweet, quiet, and independent boy, except when he wants the occasional pet or when he''s hungry! He is very laid-back and appreciates his space. He would do well in a quiet home preferably as the only pet in the home.',
        false
    ),
    (
        127,
        'Aqua',
        'Cat',
        'Tabby',
        'female',
        3,
        'small',
        'Light Brown',
        'House trained',
        'Very warm and soft when cuddling',
        false
    ),
    (
        128,
        'Felix',
        'Cat',
        '???',
        'male',
        5,
        'small',
        'White',
        'House trained',
        'Likes to sneak around',
        false
    ),
    (
        130,
        'Joe',
        'Dog',
        'Unknown',
        'Male',
        4,
        'large',
        'brown',
        'House trained',
        'Woof',
        false
    );

-- users
INSERT INTO
    "public"."users" (
        "id",
        "first_name",
        "last_name",
        "email",
        "phone_number"
    )
VALUES
    (
        1,
        'Marvin',
        'Ursua',
        'marvinlu19@gmail.com',
        '6043415550'
    ),
    (
        2,
        'Carlos',
        'Waung',
        'carlos.waung@gmail.com',
        '6043415550'
    );

-- contacts
INSERT INTO
    "public"."contacts" (
        "id",
        "name",
        "email",
        "phone",
        "animal",
        "message",
        "approved"
    )
VALUES
    (
        25,
        'Dylan',
        '67@gmail.com',
        '(604)676-6007',
        '2',
        'I love 67',
        false
    ),
    (
        27,
        'marco',
        'marco@gmail.com',
        '676767676767',
        '108',
        'IM going to adopt dylan',
        false
    ),
    (
        28,
        'MARVIN LOIS MILLIGAN URSUA',
        'MARVINLU19@GMAIL.COM',
        '6043415550',
        '108',
        'yeeeee',
        false
    );

-- images
INSERT INTO
    "public"."images" ("id", "url", "animal_id", "is_primary")
VALUES
    (
        1,
        'https://xrygojfhrciovwsakyxk.supabase.co/storage/v1/object/public/images/IMG_2709.jpg',
        1,
        true
    ),
    (
        2,
        'https://xrygojfhrciovwsakyxk.supabase.co/storage/v1/object/public/images/IMG_2647.jpg',
        1,
        false
    ),
    (
        3,
        'https://xrygojfhrciovwsakyxk.supabase.co/storage/v1/object/public/images/best-guard-dogs-1650302456.avif',
        2,
        true
    ),
    (
        4,
        'https://xrygojfhrciovwsakyxk.supabase.co/storage/v1/object/public/images/cute-puppy-pomeranian-mixed-breed-pekingese-dog-run-on-the-grass-with-happiness-photo.jpg',
        3,
        true
    ),
    (
        45,
        'https://images.squarespace-cdn.com/content/v1/5fe4bcefd0fd9113745e2f8a/d5e606aa-da14-4a69-af7d-c50b9a9d14bb/PXL_20230509_132656083.jpg',
        55,
        true
    ),
    (
        46,
        'https://static.toiimg.com/thumb/113629455/113629455.jpg?height=746&width=420&resizemode=76&imgsize=38580',
        56,
        true
    ),
    (
        104,
        'https://upload.wikimedia.org/wikipedia/commons/2/2d/Cane_corso_g%C5%82owa_profil_493o.jpg?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=original',
        130,
        true
    ),
    (
        154,
        'https://images.pexels.com/photos/9144981/pexels-photo-9144981.jpeg',
        130,
        false
    ),
    (
        155,
        'https://upload.wikimedia.org/wikipedia/commons/6/66/Mastiff_-_English_Mastiff.jpg',
        130,
        false
    ),
    (156, 'https://shorturl.at/ORkbJ', 61, true),
    (
        226,
        'https://cdn.discordapp.com/attachments/1487145865419165716/1504592464789508227/IMG_0340.jpg?ex=6a078c6d&is=6a063aed&hm=c7bbc7b546327bbe6fc2c519b534670b478e748a8e85308532ff5aac6bca9a53&',
        108,
        true
    ),
    (
        255,
        'https://cdn.discordapp.com/attachments/1468078954438201437/1503491155420250263/image0.jpg?ex=6a077f40&is=6a062dc0&hm=6b088d3162774992a59c9f1ee3d7b08353a30f578138f48983ad3e55546f3dd7&',
        125,
        true
    ),
    (
        257,
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Tabby_cat_with_blue_eyes-3336579.jpg/960px-Tabby_cat_with_blue_eyes-3336579.jpg?utm_source=commons.wikimedia.org&utm_campaign=imageinfo&utm_content=thumbnail',
        127,
        true
    ),
    (
        258,
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Blue-eyed_domestic_cat_%28Felis_silvestris_catus%29.jpg/960px-Blue-eyed_domestic_cat_%28Felis_silvestris_catus%29.jpg?utm_source=commons.wikimedia.org&utm_campaign=imageinfo&utm_content=thumbnail',
        128,
        true
    );