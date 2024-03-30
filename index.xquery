xquery version "3.0";

declare default element namespace "http://www.tei-c.org/ns/1.0";

declare option exist:serialize "method=html media-type=text/html";

let $werke :=
<texts>
    {
        for $resource in collection("/briefe/data")
        return
    <text name="{ replace(base-uri($resource), '.+/(.+)$', '$1') }">
            { $resource//title[@n = 'digital'] }
    </text>
    }
</texts>
return
<html>
<head><title>Titel</title>

     <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/starter-template.css" rel="stylesheet" />

</head>
<body>

    <!-- Bootstrap Navigation -->
         <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
    aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="listing.xquery">Textsammlung</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="analyze-all.xquery">Analyse</a>
          </li>
        </ul>
      </div>
    </nav>


    <!-- MS: <main> und <div> aus bootstrap-template -->
    <main role="main" class="container">

      <div class="starter-template" style="text-align: left;">

    <h1>Projektbeschreibung</h1>
    <br/>
   <h4>Quelle</h4>
   <p>Quelle der Text sind folgende Repositorien: <a href="https://www.jeanpaul-edition.de/start.html">Jean Paul –
    Sämtliche Briefe digital</a></p>
   <p>Die Jean Paul Edition der Berlin-Brandenburgischen Akademie der Wissenschaften erarbeitete von 1992 bis 2016
    sämtliche Briefe an den Dichter als IV. Abteilung        der Historisch-kritischen Ausgabe. Es folgte von 2016 bis
    2018 die digitale Edition der Briefe Jean Pauls auf der Grundlage von Eduard Berends III. Abteilung          der
    Historisch-kritischen Ausgabe. Derzeit werden die Briefe aus dem Umfeld Jean Pauls erarbeitet. <a
    href="https://www.jeanpaul-edition.de/ueberblick.html">Zitat aus "Ein Editionsunternehmen und seine
    Geschichte"</a></p>
   <p>Daneben war die Jean Paul Edition der Berlin-Brandenburgischen Akademie der Wissenschaften beteiligt am Abschluss
    der Inventarisierung des Nachlasses von Jean        Paul in der Staatbibliothek zu Berlin – Preußischer Kulturbesitz
    und verantwortete mit dieser zusammen die große Ausstellung zum Jean Paul Jahr 2013 in der              Stiftung
    „Brandenburger Tor“ in der Berlin. Sie veranstaltet überdies Lesungen und Vorträge. <a
    href="https://www.jeanpaul-edition.de/ueberblick.html">Zitat aus "Ein Editionsunternehmen und seine
    Geschichte"</a></p>
    <br/>

    <h4>Beschreibung der Funktionalitäten</h4>
   <h5>Textsammlung</h5>
  <p>Wenn man in in der Navigationsleiste auf "Textsammlung" klickt wird eine eine Liste aller zehn Briefe angezeigt.
    Jeder einzelne Brief kann angeklickt werden. Es wird der Titel der digitalen Edition des Briefes, die Quelle des
    Briefes selbst und der gesamte Text ausgegeben.
    </p>
    <br/>
    <h5>Analyse</h5>
     <p>Im Bereich der Analyse gibt es Analyseergebnisse zu entdecken, welche über den gesmaten Korpus der Texte
    durchgeführt wurde
         <ul>
             <li>Zählen aller unterschiedlichen Layoutanweisungen in den Texten</li>
             <li>Suche nach dem Textstring "Vergnügen" in den Texten</li>
             <li>Auswertung von Tokens, Types und Absätzen</li>
         </ul>
     </p>
    </div>
    </main>

</body>
</html>



