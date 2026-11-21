<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>ALERTE SYSTÈME</title>
    <style>
        body {
            background-color: #050505;
            color: #ff1a1a;
            font-family: 'Courier New', Courier, monospace;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
            overflow: hidden;
        }
        h1 {
            font-size: 3.5rem;
            text-transform: uppercase;
            letter-spacing: 3px;
            text-shadow: 0 0 15px #ff0000;
            animation: clignoter 1s infinite;
            margin-bottom: 10px;
        }
        p {
            font-size: 1.4rem;
            color: #00ff00;
            max-width: 600px;
        }
        .console {
            margin-top: 30px;
            padding: 15px;
            border: 1px solid #ff1a1a;
            background-color: #110000;
            color: #cccccc;
            font-size: 1rem;
            width: 80%;
            max-width: 500px;
            text-align: left;
        }
        @keyframes clignoter {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.2; }
        }
    </style>
</head>
<body>

    <h1>⚠️ VOUS VOUS ÊTES FAIT HACKER ⚠️</h1>
    <p>Accès à distance établi. Transfert des données en cours...</p>

    <div class="console">
        > Connexion au serveur distant : OK<br>
        > Contournement du pare-feu : 100%<br>
        > Extraction de l'historique et des fichiers : <span id="pourcentage">0</span>%
    </div>

    <script>
        let pourcent = 0;
        const texte = document.getElementById('pourcentage');
        setInterval(() => {
            if (pourcent < 99) {
                pourcent++;
                texte.innerText = pourcent;
            }
        }, 300);
    </script>

</body>
</html>
