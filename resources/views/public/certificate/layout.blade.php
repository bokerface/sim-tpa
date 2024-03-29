<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    {{-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> --}}
    <title>Document</title>

    <style type='text/css'>
        body,
        html {
            margin: 0;
            padding: 0;
        }

        body {
            color: black;
            /* display: table; */
            font-family: Georgia, serif;
            font-size: 24px;
            text-align: center;
        }

        .container {
            border: 20px solid tan;
            width: 750px;
            height: 563px;
            /* display: table-cell; */
            vertical-align: middle;
        }

        .logo {
            color: tan;
        }

        .marquee {
            color: tan;
            font-size: 48px;
            margin: 20px;
        }

        .assignment {
            margin: 20px;
        }

        .person {
            border-bottom: 2px solid black;
            font-size: 32px;
            font-style: italic;
            margin: 20px auto;
            width: 400px;
        }

        .reason {
            margin: 20px;
        }

    </style>
</head>

<body>
    <div class="container">
        <div class="logo">
            Badko Kasihan
        </div>

        <div class="marquee">
            Sertifikat
        </div>

        <div class="assignment">
            Diberikan Kepada :
        </div>

        <div class="person">
            {{ $certificate->order->training->participant_type == 'santri' ? $certificate->student->name : $certificate->staff->name }}
        </div>

        <div class="reason">
            Sebagai peserta dalam
            <br>
            <br>
            {{ $certificate->order->training->name }}
        </div>

        <div>
            <img src="{{ route('training.image').'?q='.$certificate->order->training->background_certificate }}"
                alt="">
        </div>
    </div>
</body>

</html>
