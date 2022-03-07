<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    TEST NFC
                </div>

{{--                <div class="links">--}}
{{--                    <a href="https://laravel.com/docs">Docs</a>--}}
{{--                    <a href="https://laracasts.com">Laracasts</a>--}}
{{--                    <a href="https://laravel-news.com">News</a>--}}
{{--                    <a href="https://blog.laravel.com">Blog</a>--}}
{{--                    <a href="https://nova.laravel.com">Nova</a>--}}
{{--                    <a href="https://forge.laravel.com">Forge</a>--}}
{{--                    <a href="https://vapor.laravel.com">Vapor</a>--}}
{{--                    <a href="https://github.com/laravel/laravel">GitHub</a>--}}
{{--                </div>--}}
                <button id="scanButton" class="d-none" style="display: none">Scan</button>
                <button id="writeButton" class="btn btn-primary">Ghi NFC</button>
            </div>
        </div>
    </body>

    <script>
        if (!("NDEFReader" in window)){
            console.log(
                "Web NFC is not available.\n" +
                'Please make sure the "Experimental Web Platform features" flag is enabled on Android.'
            );
            alert(
                "Web NFC is not available.\n" +
                'Please make sure the "Experimental Web Platform features" flag is enabled on Android.'
            );
        }

    </script>
    <script>
        scanButton = document.querySelector('#scanButton')
        scanButton.addEventListener("click", async () => {
            console.log("User clicked scan button");

            try {
                const ndef = new NDEFReader();
                await ndef.scan();
                console.log("> Scan started");

                ndef.addEventListener("readingerror", () => {
                    console.log("Argh! Cannot read data from the NFC tag. Try another one?");
                });

                ndef.addEventListener("reading", ({ message, serialNumber }) => {
                    console.log(`> Serial Number: ${serialNumber}`);
                    console.log(`> Records: (${message.records.length})`);
                });
            } catch (error) {
                console.log("Argh! " + error);
            }
        });

        writeButton = document.querySelector('#writeButton')
        writeButton.addEventListener("click", async () => {
            alert("User clicked write button");

            try {
                const ndef = new NDEFReader();
                await ndef.write("https://gotap.com.vn/user/kdt");
                alert("> Message written");
            } catch (error) {
                alert("Argh! " + error);
            }
        });
    </script>
</html>
