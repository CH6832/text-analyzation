xquery version"3.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

declare option exist:serialize "method=html media-type=text/html";

transform:transform(
    doc("/briefe/data/I_1.xml"),
    doc("/briefe/title.xsl"),
    ()
)
