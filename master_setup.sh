#!/bin/bash
mkdir -p master_setup && cd master_setup
cat <<'HTML' > index.html
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Master Setup: Firefox & Cookies</title>
    <style>
        body { font-family: sans-serif; padding: 20px; background: #f0f2f5; text-align: center; }
        .box { background: white; padding: 25px; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        .btn { display: block; width: 100%; padding: 15px; margin: 15px 0; font-size: 16px; border-radius: 10px; text-decoration: none; font-weight: bold; }
        .install { background: #007bff; color: white; }
        .addon { background: #28a745; color: white; }
        .login { background: #dc3545; color: white; }
        .tips-box { margin-top: 20px; padding: 15px; background: #fff3cd; border-left: 5px solid #ffc107; text-align: left; font-size: 14px; }
    </style>
</head>
<body>
    <div class="box">
        <h2>🛠 Master Setup</h2>
        <a href="https://play.google.com/store/apps/details?id=org.mozilla.firefox" class="btn install">1. Instal Firefox</a>
        
        <a href="intent:https://addons.mozilla.org/en-US/android/addon/cookies-txt/#Intent;action=android.intent.action.VIEW;package=org.mozilla.firefox;end" class="btn addon">2. Instal Ekstensi cookies.txt</a>
        
        <a href="intent:https://accounts.google.com/ServiceLogin?service=youtube&continue=https://m.youtube.com#Intent;action=android.intent.action.VIEW;package=org.mozilla.firefox;end" class="btn login">3. Login & Export</a>

        <div class="tips-box">
            <strong>Tips:</strong>
            <ul style="padding-left: 20px;">
                <li>Pilih Cancel Jika Minta Buka App YouTube.</li>
                <li>Setelah Login di Firefox: Klik Titik Tiga.</li>
                <li>Ekstensi: Klik Export cookies.</li>
                <li>Export: Klik Copy di Current Site.</li>
                <li>Setelah Copy, Tempelkan teks tersebut ke textarea input cookies di NCC Clipper Studio.</li>
            </ul>
        </div>
    </div>
</body>
</html>
HTML
python -m http.server 8000
