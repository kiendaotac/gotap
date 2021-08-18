<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="Kiên Đạo Tặc" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" />

    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700|Roboto:300,400,500,700|IBM+Plex+Serif:300,400,500,600&display=swap" rel="stylesheet" type="text/css" />


    {!! Theme::header() !!}

    <style>
        .font-secondary {
            font-family: 'IBM Plex Serif', serif !important;
        }

        .bgchanger {
            background-color: #EEE;
        }

        #oc-watch .owl-item,
        #oc-watch .owl-item img {
            width: auto;
            height: auto;
            margin: 0 auto;
        }

        #oc-watch.owl-carousel .owl-stage {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #oc-watch .owl-dots {
            bottom: 20px;
        }

        #oc-watch .owl-dots {
            counter-reset: dots;
        }

        #oc-watch.owl-carousel .owl-dots .owl-dot {
            margin: 0 4px;
            width: auto;
            height: auto;
            opacity: .3 !important;
            border: none;
            background-color: transparent !important;
            font-family: 'IBM Plex Serif', serif;
        }

        #oc-watch .owl-dot:after {
            content: "";
            position: absolute;
            background: #111;
            height: 2px;
            width: 0;
            top: 50%;
            margin: -1px 4px 0;
            transition: all .3s ease;
        }

        #oc-watch.owl-carousel .owl-dots .owl-dot.active {
            margin-right: 34px;
            opacity: 1 !important;
        }

        #oc-watch .owl-dot.active:after {
            width: 26px;
        }

        #oc-watch .owl-dot:before {
            counter-increment: dots;
            content: counter(dots, decimal-leading-zero);
        }

        #slider {
            -webkit-transition: background-color .4s ease;
            -o-transition: background-color .4s ease;
            transition: background-color .4s ease;
        }

        @-webkit-keyframes mouse-scroll {
            0% {
                top: 10%;
                opacity: 1;
            }

            100% {
                top: 30%;
                opacity: 0;
            }
        }

        @keyframes mouse-scroll {
            0% {
                top: 10%;
                opacity: 1;
            }

            100% {
                top: 30%;
                opacity: 0;
            }
        }

        @-webkit-keyframes scroll-mouse {
            from {
                transform: translateY(-7px);
            }

            to {
                transform: translateY(0);
            }
        }

        @keyframes scroll-mouse {
            from {
                transform: translateY(-7px);
            }

            to {
                transform: translateY(0);
            }
        }

        .scroll-inner {
            position: relative;
            width: 26px;
            height: 40px;
            border-radius: 18px;
            border: 2px solid #555;
            -webkit-animation: scroll-mouse 1s infinite;
            animation: scroll-mouse 1s infinite;
        }

        .scroll-wheel {
            position: absolute;
            top: 10%;
            left: 50%;
            width: 6px;
            height: 6px;
            border-radius: 50%;
            transform: translateX(-50%);
            background-color: #555;
            -webkit-animation: mouse-scroll 1s infinite;
            -moz-animation: mouse-scroll 1s infinite;
            -o-animation: mouse-scroll 1s infinite;
            animation: mouse-scroll 1s infinite;
        }

        .one-page-arrow {
            bottom: 40px;
            right: 40px;
            left: auto;
        }
    </style>

</head>