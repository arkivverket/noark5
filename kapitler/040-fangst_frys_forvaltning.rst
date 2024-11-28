Fangst, frys og forvaltning av dokument og metadata 
====================================================

For at registreringer skal fungere som dokumentasjon på saksbehandling og andre oppgaver, må de knyttes til den sammenheng de oppstod og fortsatt skal benyttes i, dvs. deres forretningsmessige kontekst eller sammenheng. Dette stiller strenge krav til løsningens evne til å arkivere alle relevante opplysninger om dokumentasjonens sammenheng.

Løsningen må stille krav til dokumentfangst fra ulike kilder, uavhengig av kommunikasjonsform, og krav til frys av dokument og metadata.

Dokumentfangst
--------------

Elektroniske dokument som skapes eller mottas som ledd i saksbehandlingen, kan ha sin opprinnelse både i interne og eksterne kilder. De elektroniske dokumentene vil ha mange ulike formater, være produsert av forskjellige forfattere og kan enten være enkle filer eller sammensatte dokument.

Noen dokumenter er produsert internt i organisasjonen, som et ledd i saksbehandlingen. Andre er mottatt gjennom ulike kommunikasjonskanaler, som for eksempel e-post, telefaks, brevpost, sms og ekstranett, sosiale medier og selvbetjeningsløsninger på Internett.

En løsning for fleksibel dokumentfangst er nødvendig for å håndtere dette. Og det skal være mulig å fange dokumenter helt uavhengig av dokumentets format. Det vil bl.a. være aktuelt å etablere løsninger for dokumentfangst fra kontorstøtteverktøy (tekstbehandlere, regneark mv.), e-post, video, nettsider, innskannede dokumenter og lydfestinger.

I noen sammenhenger vil det også være aktuelt å fange andre typer dokumenter, så som blogger, komprimerte filer, elektroniske kalendere, data fra geografiske informasjonssystem, multimediedokumenter, dokumenter som inneholder lenker til andre dokumenter, øyeblikkelig meldingstjeneste (instant messaging), tekstmeldinger til mobiltelefon (sms), bilder til mobiltelefon (MMS) og wikis.

.. list-table:: **Overordnete krav til dokumentfangst**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Overordnete krav til dokumentfangst
   - Type
   - Merknad
 * - 3.1.1
   - Det skal finnes funksjonalitet for fangst av elektroniske
     dokumenter uavhengig av filformat, metoder for teknisk koding,
     kilder eller andre tekniske egenskaper.
   - O
   - 
 * - 3.1.2
   - Det skal foreligge funksjonalitet som dokumenterer når en
     registrering er arkivert i eller innenfor Noark-systemet.
   - O
   - 
 * - 3.1.3
   - Dokumentfangsten skal skje på en slik måte at dokumentets
     innholdsintegritet blir opprettholdt. Løsningen må ha
     funksjonalitet som hindrer at noe eller noen kan endre innholdet
     i dokumentet ved fangst. Dette gjelder også metadata.
   - O
   - 
 * - 3.1.4
   - Dokumentfangsten bør skje på en slik måte at dokumentets utseende
     (visuelle integritet) blir opprettholdt.
   - V
   - 
 * - 3.1.5
   - Det bør finnes funksjonalitet for helautomatisk
     dokumentfangst[9]_.
   - V
   - 
 * - 3.1.6
   - Ved helautomatisk dokumentfangst skal det være mulig å knytte
     alle obligatoriske metadata til dokumentet.
   - B
   - Obligatorisk ved helautomatisk dokumentfangst.
 * - 3.1.7
   - Ved helautomatisk dokumentfangst skal det være mulig å knytte
     dokumenter til et klassifikasjonssystem.
   - B
   - Obligatorisk ved helautomatisk dokumentfangst.
 * - 3.1.8
   - Ved helautomatisk dokumentfangst bør det være mulig å knytte
     dokumenter til relevante deler av arkivstrukturen
   - V
   - 
 * - 3.1.9
   - Det skal ikke være begrensninger i antall dokumenter som kan bli
     arkivert i løsningen.
   - O
   - 
 * - 3.1.10
   - Det skal finnes funksjoner for å sikre at alle komponenter i et
     sammensatt dokument fanges.
   - O
   - 
 * - 3.1.11
   - Det skal finnes funksjoner for å sikre at et sammensatt
     elektronisk dokument håndteres som en enhet, hvor relasjonen
     mellom komponentene og dokumentets indre struktur opprettholdes.
   - B
   - Obligatorisk hvis løsningen håndterer sammensatte dokumenter.


Kryptering og elektronisk signatur
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ved elektronisk kommunikasjon er det nødvendig å kunne angi krav til sikkerhet. Dette innebærer krav til kryptering og elektronisk signatur, samt dokumentasjon av sikkerheten til dokumenter som er sendt eller mottatt i elektronisk form. Man må også kunne angi krav til sikkerhet på forskjellige nivå i arkivstrukturen.

.. list-table:: **Krav til metadata for dokumenter mottatt eller sendt med elektronisk signatur**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til metadata for dokumenter mottatt eller sendt med
     elektronisk signatur
   - Type
   - Merknad
 * - 3.1.12
   - Elektronisk dokument som mottas i kryptert form, skal dekrypteres
     ved mottak. Metadata om sikkerhetsnivå og verifikasjon av
     uavviselighet/ikke-benektbarhet skal lagres med *registrering*
     eller *dokumentbeskrivelse*.
   - B
   - Obligatorisk for arkiver som mottar krypterte dokumenter.
 * - 3.1.13
   - Når et elektronisk dokument sendes ut fra organet i kryptert
     form, skal metadata om sikkerhetsnivå og verifikasjon av
     uavviselighet/ikke-benektbarhet lagres med registreringen.
   - B
   - Obligatorisk for arkiv som sender krypterte dokumenter.
 * - 3.1.14
   - På følgende nivåer i arkivstrukturen bør arkivadministrator kunne
     angi hvilket sikkerhetsnivå som skal kreves, og hvorvidt
     elektronisk signatur skal kreves, for inngående dokumenter:
     
     - Arkiv
     - Arkivdel
     - Klassifikasjonssystem
     - Mappe
   - V
   - 
 * - 3.1.15
   - På følgende nivåer i arkivstrukturen bør arkivadministrator kunne
     angi hvilket sikkerhetsnivå som skal brukes, og om elektronisk
     signatur skal brukes, ved elektronisk utsending av dokumenter:
     
     - Arkiv
     - Arkivdel
     - Klassifikasjonssystem
     - Mappe
   - V
   - 
 * - 3.1.16
   - Noark 5-løsningen skal kunne konfigureres slik at alle dokumenter
     som sendes eller mottas kryptert blir lagret i ikke‑kryptert form
     i arkivet.
   - B
   - Obligatorisk for arkiver som mottar eller sender krypterte
     dokumenter.
 * - 3.1.17
   - Noark 5-løsningen bør kunne konfigureres slik at dokumenter som
     sendes eller mottas kryptert også blir lagret kryptert i arkivet.
   - V
   - 
 * - 3.1.18
   - Dersom løsningen tillater at dokumenter lagres i kryptert form,
     må det lagres tilstrekkelige metadata til at en autorisert bruker
     kan dekryptere dokumentet ved behov.
   - B
   - Obligatorisk for løsninger som tillater lagring av krypterte
     dokumenter.

Tjenestegrensesnitt
~~~~~~~~~~~~~~~~~~~

Kravene i Noark 5 kan realiseres som en kjernemodul, dvs. et minimumssystem som bare tilfredsstiller kjernekravene, og som må integreres med andre system. Det innebærer at det vil skje en utveksling av data mellom et fagsystem og en Noark 5-kjerne, med behov for å spesifisere et standardisert grensesnitt (API). Dette spesifiserer både operasjonene som kan utføres og formatet på dataene som utveksles.

Det er to ulike tjenestegrensesnittstandarder som er tilpasset Noark 5.

GeoIntegrasjonsstandarden legger vekt på integrasjoner med fagsystemer i kommunal sektor, og forvaltes av Kartverket og KS i fellesskap. [10]_ Utgangspunktet er fagsystemer med kartdata og geografisk informasjon, men standarden kan også brukes for andre typer integrasjoner.

Noark 5 tjenestegrensnittet definerer tjenester som omfatter alle arkivenheter og objekter i Noark 5, og kan dermed brukes ved integrering med alle typer fagsystem, inkludert fagsystem som ikke inneholder journalføringspliktige saksdokumenter, og uavhengig av om de brukes i kommunal eller statlig sektor. Noark 5 tjenestegrensesnittet forvaltes av Arkivverket. [11]_

Tjenestegrensesnitt definerer hvilke tjenester Noark 5-systemet kan utføre, og hvordan klientsystemet kan få utført tjenestene. En tjenesteorientert arkitektur er i prinsippet teknologiuavhengig, men det er i dag mest aktuelt å realisere tjenester som *web services*. Tjenestegrensesnittet realiseres ved et REST-grensesnitt (Representational State Transfer), mens GeoIntegrasjonsstandarden er realisert vha. SOAP (Simple Object Access Protocol) og WSDL (Web Services Description Language).

Tjenestegrensesnittstandardene spesifiserer tjenester som dekker krav og metadataelementer som er definert i Noark-standarden. Mange spesialiserte system har funksjoner og informasjonselementer som ikke er definert i Noark, men som allikevel er underlagt krav til eller behov for at informasjonen tas vare på i tilknytning til dokumentasjonen i Noark-kjernen. Fagspesifikk informasjon i slike spesialiserte løsninger kan være strukturert eller ustrukturert innhold eller strukturerte metadata som kan knyttes til objekt i datamodellen. Ved utvikling av integrasjonsløsninger er det derfor viktig at man kartlegger hva som dekkes av standarden og hva som ikke dekkes, og at man tar stiling til hvordan informasjonselementene fra fagsystemene skal tas vare på i tilknytning til arkivstrukturen. Metadata som ikke er definert i Noark, men kan knyttes til objekter i arkivstrukturen kan overføres som virksomhetsspesifikke metadata, jf. kapittel 6.4.8.

.. list-table:: **Krav til tjenestegrensesnitt**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til tjenestegrensesnitt
   - Type
   - Merknad
 * - 3.1.19
   - For løsninger hvor Noark-kjernen skal integreres med fagsystem
     med forenklet sakarkiv funksjonalitet, kan man velge
     GeoIntegrasjonsstandarden som tjenestegrensesnitt.
   - V
   - 
 * - 3.1.20
   - For løsninger hvor Noark-kjernen skal ha en fullstendig
     integrasjon med fagsystemet bør Noark 5 tjenestegrensenitt
     brukes.
   - V
   - 

Masseimport
~~~~~~~~~~~

Saksbehandling, dokumenthåndtering og dokumentutveksling gjør bruk av stadig nye kanaler. Arkivsystemene bør ikke være et hinder for effektivisering på disse områdene, samtidig som det er særdeles viktig at dokumenters autentisitet og integritet sikres. *Masseimport* skal gjøre det mulig å importere flere dokumenter inn til Noark 5-løsningen i én og samme sekvens.

Dokumenter kan komme i bolker til kjernen på mange måter, eksempelvis:

-  en masseimport fra et dokumentlager.

-  en masseimport fra for eksempel et skanningssystem.

-  en masseimport fra mappene til et operativsystem.

-  en masseimport fra et nettsted

Noark 5 må ha mulighet til å akseptere disse, og må inkludere løsninger for å håndtere fangst og vedlikehold av innhold og struktur til de importerte dokumentene.

I en masseimport må kjernen fange samme informasjon som i en vanlig import, nemlig dokumentet og dets metadata.

Masseimport må håndtere unntak og feil. Dette kan være aktuelt f. eks. ved elektroniske høringer via web-tjener på Internett, dokumentproduksjon i samhandlingsrom, «saksbehandling» med e-postsystemet som utvekslingskanal eller i andre tilfeller hvor en relativt omfattende dokumentbehandling har foregått uten at det har skjedd en arkivdanning samtidig. Eksempelvis kan Noark 5-løsningen tilby funksjonalitet hvor brukeren kan velge/markere filer som er lokalisert på en eller flere filservere, ftp-server eller lignende, for å importere dem. Brukeren skal enkelt kunne knytte filene til en mappe eller en registrering i en bestemt mappe. Alternativt kan masseimport håndteres ved f. eks. en søkemotor, hvor dokumentene fanges, tilknyttes metadata og importeres til en definert arkivenhet i en automatisert prosess.

Kravene til masseimport nedenfor er generelle, og de er uavhengige av verktøy og teknologi.

.. list-table:: **Krav til masseimport utløst fra Noark 5-kjerne**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til masseimport utløst fra Noark 5-kjerne
   - Type
   - Merknad
 * - 3.1.21
   - Noark 5-løsningen bør inneholde masseimportfunksjonalitet som
     henter dokumenter fra en angitt plassering og knytte disse til
     klasser, mapper, registreringer eller dokumentbeskrivelser.
   - V
   - 
 * - 3.1.22
   - Ved masseimport bør det være mulig å velge om alle importerte
     dokumenter skal knyttes til én og samme arkivenhet på samme nivå
     i arkivstrukturen eller om hvert enkelt dokument skal knyttes til
     forskjellige arkivenheter i arkivstrukturen.
   - V
   - 
 * - 3.1.23
   - Ved masseimport bør det være mulig å knytte importerte dokumenter
     til en allerede eksisterende klasse, mappe, registrering eller
     dokumentbeskrivelse.
   - V
   - 
 * - 3.1.24
   - Ved masseimport bør det være mulig å definere og utfylle
     metadatasettet for dokumentene som skal importeres, kun én gang.
   - V
   - 
 * - 3.1.25
   - Noark 5-kjernen bør ha automatikk for å fange dokumenter som er
     generert og overført fra andre system.
   - V
   - 
 * - 3.1.26
   - Noark 5-kjernen bør ha mulighet til å håndtere input kø ved
     masseimport.
   - V
   - For håndtering av input køen kan det for eksempel være
     ønskelig å se køene, pause en eller flere køer, starte en eller
     alle køene på nytt, slette en kø.
 * - 3.1.27
   - Noark 5-kjernen bør kunne fange metadata knyttet til alle
     dokumentene som overføres, automatisk. Det bør være mulig å
     overstyre dette ved manglede eller feil metadata.
   - V
   - 
 * - 3.1.28
   - Ved automatisert masseimport, skal det være funksjonalitet for å
     validere metadata med tilhørende dokumenter automatisk, for å
     sikre opprettholdt dataintegritet.
   - B
   - Obligatorisk for funksjon for automatisert masseimport.
 * - 3.1.29
   - Ved masseimport skal det være mulig å importere logginformasjon
     om de importerte dokumentene, og logginformasjonen skal inngå i
     importen som eget (egne) dokument.
   - B
   - Obligatorisk for funksjon for automatisert masseimport.

Krav til frysing av metadata og dokument
----------------------------------------

Arkivdokumenter skal bevares med ivaretatt autentisitet, pålitelighet, integritet og anvendelighet. Metadata som gir informasjon om hvert arkivdokument, som knytter det til handlingen som skapte det er grunnleggende for å sikre dette. I tillegg må metadata og dokument beskyttes mot endringer, der dette er nødvendig.

Kravene i dette kapittelet fastsetter minimumskravene til hvilke metadata som må fryses ved hvilke statuser på *mappe*, *registrering* og *dokumentbeskrivelse*, samt forutsetninger for at brukerne skal få lov til å avslutte disse. Frysing av selve dokumentet er en viktig del av dette. Fokus i kapittelet er altså på hva som må fryses når.

Disse kravene alene kan allikevel ikke være styrende for hva alle brukere skal ha tillatelse til å gjøre i en Noark-løsning. De må ses i sammenheng med kravene til autorisasjoner og oppbygging av roller og rolleprofiler.

.. list-table:: **Krav til frysing av metadata for mappe**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til frysing av metadata for *mappe*
   - Type
   - Merknad
 * - 3.2.1
   - Det skal finnes en tjeneste/funksjon for å avslutte en *mappe*
     (dvs. at *avsluttetDato* settes).
   - O
   - 
 * - 3.2.2
   - For en *mappe* som er avsluttet skal det ikke være mulig å endre
     følgende metadata:
     
     - tittel
     - dokumentmedium
   - O
   - 
 * - 3.2.3
   - Det skal ikke være mulig å slette en *mappe* som er avsluttet.
   - O
   - 
 * - 3.2.4
   - Det skal ikke være mulig å legge til flere *registreringer* i en
     *mappe* som er avsluttet.
   - O
   - 

.. list-table:: **Krav til frysing av metadata for saksmappe**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til frysing av metadata for *saksmappe*
   - Type
   - Merknad
 * - 3.2.5
   - En *Saksmappe* avsluttes ved at saksstatus settes til
     «avsluttet».
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.6
   - Det skal ikke være mulig å avslutte en *saksmappe* uten at det er
     angitt en primær klassifikasjon (*klasse*).
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.7
   - Det skal ikke være mulig å avslutte en *saksmappe* som inneholder
     *Journalposter* som ikke er arkivert (dvs. som har status
     «Arkivert»).
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.8
   - Det skal ikke være mulig å avslutte en *saksmappe* uten at alle
     dokumenter på registreringene i mappen er lagret i godkjent
     arkivformat.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.9
   - Det skal ikke være mulig å avslutte en *saksmappe* uten at alle
     restanser på *journalposter* i mappen er avskrevet
     (ferdigbehandlet).
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.10
   - Når statusen til en *saksmappe* settes til avsluttet, skal det på
     mappenivå ikke være mulig å endre metadataene:
     
     - saksdato
     - administrativEnhet
     - saksansvarlig
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.11
   - En avsluttet *saksmappe* bør kunne åpnes igjen av autoriserte
     brukere. Åpning av mappe skal logges.
   - V
   - 
 * - 3.2.12
   - Det skal ikke være mulig å slette en *saksmappe* som inneholder
     *journalposter* med status som er ferdigstilt (dvs. Ekspedert,
     Journalført eller Arkivert).
   - B
   - Obligatorisk for sakarkiv.

.. list-table:: **Krav til frysing av metadata for registrering**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til frysing av metadata for *registrering*
   - Type
   - Merknad
 * - 3.2.13
   - Det skal finnes en tjeneste/funksjon for å arkivere en
     *registrering* (dvs. at *arkivertDato* settes).
   - O
   - 
 * - 3.2.14
   - For en *registrering* som er arkivert skal det ikke være mulig å
     endre følgende metadata:
     
     - tittel
     - dokumentmedium
     - referanseArkivdel
   - O
   - 
 * - 3.2.15
   - Når en *registrering* er arkivert bør det for autoriserte brukere
     fortsatt være mulig å endre de øvrige metadataene på
     *registrering*. Endringer skal logges.
   - V
   - 
 * - 3.2.16
   - Det skal ikke være mulig å slette en *registrering* som er
     arkivert.
   - O
   - 
 * - 3.2.17
   - Dersom en *registrering* er arkivert, skal det ikke være mulig å
     legge til flere *dokumentbeskrivelser*.
   - O
   - 

.. list-table:: **Krav til frysing av metadata for journalpost**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til frysing av metadata for *journalpost*
   - Type
   - Merknad
 * - 3.2.18
   - Når status på *journalpost* settes til «Arkivert», skal
     arkivertDato settes automatisk.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.19
   - Det skal ikke være mulig å slette en *journalpost* som har eller
     har hatt status «Ekspedert», «Journalført», «Arkivert» eller
     «Utgår».
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.20
   - Det bør ikke være mulig å slette en *journalpost* med status
     «Ferdigstilt fra saksbehandler» eller «Godkjent av leder».
   - V
   - 
 * - 3.2.21
   - Det bør være mulig å slette en *journalpost* med status
     «Reservert dokument».
   - V
   - 
 * - 3.2.22
   - For *journalpost* av typen «inngående dokument» med status
     «journalført» skal det ikke tillates å endre følgende metadata:
     
     - løpenummer
     - mottattdato
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.23
   - For *journalpost* av typen «inngående dokument» med status
     «arkivert» skal det på *journalpost* ikke være mulig å endre
     følgende metadata:
     
     - journalposttype
     - journaldato
     - dokumentetsDato
     - korrespondansepart
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.24
   - For *journalpost* av typer egenproduserte dokumenter («utgående
     dokument», «organinternt dokument for oppfølging», «organinternt
     dokument uten oppfølging») med status «Ekspedert», «Journalført»
     eller «Arkivert», skal det på *Journalpost* ikke være mulig å
     endre følgende metadata:
     
     - løpenummer
     - journalposttype
     - dokumentetsDato
     - sendtDato
     - saksbehandler
     - administrativEnhet
     - tittel
     - korrespondansepart
   - B
   - Obligatorisk for sakarkiv
 * - 3.2.25
   - For *journalpost* av typen «inngående dokument» med status
     «midlertidig registrert» eller «registrert av saksbehandler» bør
     alle metadata kunne endres.
   - V
   - 
 * - 3.2.26
   - For *journalpost* av typer egenproduserte dokumenter («utgående
     dokument», «Organinternt dokument for oppfølging», «Organinternt
     dokument uten oppfølging») med status «Registrert av
     saksbehandler» og «Ferdigstilt fra saksbehandler» bør det for
     autorisert personale være mulig å endre alle metadata.
   - V
   - 
 * - 3.2.27
   - Det bør være mulig å arkivere en ny variant av et dokument på en
     *journalpost* med status «Ekspedert», «Journalført» eller
     «Arkivert», uten å måtte reversere statusen. Denne varianten må
     ikke kunne forveksles med den ferdigstilte varianten som ble
     ekspedert.
   - V
   - 

.. list-table:: **Krav til frysing av dokument og metadata for dokumentbeskrivelse**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til frysing av dokument og metadata for
     *dokumentbeskrivelse*
   - Type
   - Merknad
 * - 3.2.28
   - Metadata for *dokumentbeskrivelse* for hoveddokument bør kunne
     fylles ut automatisk på basis av metadata fra *registrering* ved
     oppretting.
   - V
   - 
 * - 3.2.29
   - Det skal være mulig å registrere at et dokument er i papirform og
     hvor det er lokalisert
   - O
   - 
 * - 3.2.30
   - Det skal ikke være mulig å sette *journalstatus* «Ekspedert»,
     «Journalført» eller «Arkivert» dersom ikke dokumentstatus er satt
     til «Dokumentet er ferdigstilt».
   - B
   - Obligatorisk for sakarkiv
 * - 3.2.31
   - Det skal ikke være mulig å endre innholdet i et dokument når
     status på *dokumentbeskrivelse* er satt til «Dokumentet er
     ferdigstilt».
   - O
   - 
 * - 3.2.32
   - Det bør ikke være mulig å endre (reversere) status «Dokumentet er
     ferdigstilt».
   - V
   - 
 * - 3.2.33
   - For *dokumentbeskrivelse* med status «Dokumentet er ferdigstilt»
     skal det være tillatt å endre tittelen på hoveddokument og
     vedlegg.
   - O
   - 

Oppsplitting og sammenslåing av mapper, flytting av registreringer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Noark 5 legger opp til at det skal være mulig å splitte opp eller slå sammen mapper. I praksis vil dette innebære å flytte én eller flere registreringer i en mappe til en annen. Behovet kan oppstå som følge av feilregistreringer, et saksforløp som utvikler seg i flere retninger, eller ved at man etter en tid får et annet bilde av saksforløpet enn det som opprinnelig ble lagt til grunn. Dette er funksjonalitet som krever ressurser, nøyaktighet og kontroll. Det stilles derfor strenge krav til hvem som skal ha tillatelse til å utføre disse handlingene.

.. list-table:: **Krav til oppsplitting og sammenslåing av mapper, flytting av registreringer**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til oppsplitting og sammenslåing av mapper, flytting av
     registreringer
   - Type
   - Merknad
 * - 3.2.35
   - Det skal finnes en tjeneste/funksjon for å flytte en
     *registrering* fra en *mappe* til en annen *mappe*.
   - O
   - 
 * - 3.2.36
   - Hvis *registreringsID* på *registrering* i et sakarkiv benytter
     det anbefalte formatet åå/nnnnnn-nnnn (dvs. kombinasjonen av
     saksnummer (*mappeID*) og dokumentnummer i saken), bør
     *registreringsID* endres automatisk. *Registreringen* bør
     automatisk tildeles første ledige dokumentnummer i *mappen* den
     flyttes til.
   - V
   - 
 * - 3.2.37
   - *Registreringer* som ikke flyttes i *mappe* det flyttes
     *registreringer* fra, bør ikke få endret *registreringsID*.
   - V
   - 
 * - 3.2.38
   - Det bør være mulig å flytte flere *registreringer* som er
     tilknyttet samme *mappe* i en samlet operasjon.
   - V
   - 
 * - 3.2.39
   - Det skal ikke være mulig å flytte en *registrering* hvis denne
     avskriver eller avskrives av andre *registreringer* som ikke
     flyttes. Hvis dette forsøkes skal brukeren få melding om hvilke
     koblinger som sperrer mot flytting
   - B
   - Obligatorisk for sakarkiv.
 * - 3.2.40
   - Flytting av arkivert *registrering* skal være rollestyrt.
   - O
   - 
 * - 3.2.41
   - Det bør være mulig å parameterstyre at alle brukere kan flytte
     *registreringer* de selv er saksbehandler for, hvis status er
     «midlertidig registrert» eller «registrert av saksbehandler».
   - V
   - 
 * - 3.2.42
   - Ved flytting og renummerering skal bruker få påminnelser om å
     endre nødvendige referanser på fysiske dokumenter i arkivet.
   - B
   - Obligatorisk for fysiske arkiv.

Dokumentflyt
------------

Et dokument som er under produksjon bør kunne gjennomgå ulike interne prosesstrinn i linjen, som blir dokumentert i arkivkjernen. Det vanligste er at dokumenter sendes på godkjenning i linjen, eller at de sendes på høring til kolleger. Under produksjon kan en slik dokumentflyt si noe om hvor i saksbehandlingsprosessen dokumentet befinner seg, mens det ved ferdigstillelse kan fungere som en slags elektronisk signatur. Metadata knyttet til dokumentflyt er loggemetadata, og skal ikke kunne endres. Funksjonalitet som automatisk fryser et dokument som er godkjent (dvs. setter status på *dokumentbeskrivelse* til «Dokumentet er ferdigstilt»), eller som automatisk oppretter ny versjon ved hvert prosesstrinn i en slik flyt, vil kunne styrke troverdigheten til dokumentet. Ved å følge kravene vil man kunne få en forpliktende «signatur» i alle ledd, som også vil ha en ikkebenektingsfunksjon.

Kravene er valgfrie, siden det ikke er Riksarkivarens oppgave å gi pålegg om ansvar, fullmakter og saksbehandlingsrutiner i offentlige virksomheter. Funksjonaliteten kan også variere fra løsning til løsning, alt etter hvilke behov virksomheten har. Det vesentlige i standarden er at flyten dokumenteres med standardiserte metadata, og at disse metadata blir avlevert som en del av arkivuttrekket. Det betyr at dersom man har funksjonaliteten, i tråd med kravene eller noe tilsvarende, vil metadata om dokumentflyt være obligatoriske i arkivuttrekket.

.. list-table:: **Krav til dokumentflyt**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til *dokumentflyt*
   - Type
   - Merknad
 * - 3.3.1
   - Et dokument som er under produksjon, bør kunne sendes fram og
     tilbake i linjen det nødvendige antall ganger.
   - V
   - 
 * - 3.3.2
   - Autoriserte roller og personer bør kunne se hvor dokumentet
     befinner seg til enhver tid.
   - V
   - 
 * - 3.3.3
   - Dokumentet bør bli sperret for endringer når det (videre)sendes,
     ev. det opprettes en ny versjon ved hver (videre)forsendelse.
   - V
   - 
 * - 3.3.4
   - Det bør være mulig å registrere merknader til dokumentflyten.
   - V
   - 
 * - 3.3.5
   - Mottaker av et dokument på flyt, bør bli varslet om at han/hun
     har mottatt et dokument.
   - V
   - 
 * - 3.3.6
   - Det bør være mulig å gi en forpliktende «signatur» i alle ledd.
   - V
   - 
 * - 3.3.7
   - Det bør være mulig å sende et dokument som er under produksjon,
     til trinnvis godkjenning (sekvensielt)
   - V
   - 
 * - 3.3.8
   - Det bør være mulig å sende et dokument som er under produksjon,
     til høring til flere samtidig (parallelt)
   - V
   - 
 * - 3.3.9
   - For dokument som er under produksjon, og som sendes på
     sekvensiell eller parallell dokumentflyt, bør det kunne
     parameterstyres om det automatisk skal opprettes nye versjoner
     for alle mottakere i flyten.
   - V
   - 
 * - 3.3.10
   - Det bør kunne parameterstyres om versjonering skal forekomme bare
     for enkelte roller, enheter, grupper eller personer. Dette skal
     kunne gjøres fast eller på ad-hoc-basis.
   - V
   - 

Avskrivning og saksoppfølging 
------------------------------

En Journalpost av typen «inngående dokument» eller «organinternt dokument for oppfølging» står i restanse inntil de er markert som ferdigbehandlet, eller avskrives. Dette kapitlet angir krav til avskrivning. Det følger av arkivforskriften § 10 at avskrivningsmåte skal fremgå av journalen.

.. list-table:: **Krav til avskrivning**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til *avskrivning*
   - Type
   - Merknad
 * - 3.4.1
   - Det skal finnes funksjoner for å få informasjon om restanser.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.2
   - Det skal finnes en tjeneste/funksjon for å avskrive en
     registrering (Journalpost).
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.3
   - Det skal være mulig å avskrive en inngående journalpost med èn
     eller flere utgående journalposter.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.4
   - Det skal være mulig å la en utgående journalpost avskrive flere
     inngående journalposter.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.5
   - Når statusen til en mappe settes til avsluttet, skal alle
     uavskrevne Journalposter av typen «inngående dokument» eller
     «organinternt dokument for oppfølging» som er knyttet til mappen,
     avskrives med sak avsluttet
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.6
   - Det skal finnes funksjonalitet for at avskriving av organinterne
     dokument som skal følges opp, skal kunne utføres for hver enkelt
     mottaker for seg. Dette innebærer at et mottatt, organinternt
     dokument kan være avskrevet for noen mottakere, men ikke for
     andre.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.7
   - Dersom et innkommet dokument avskrives av et utgående dokument,
     skal det være referanse mellom de to dokumentene.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.8
   - Dersom et notat avskrives av et annet notat, skal det være
     referanse mellom de to notatene.
   - B
   - Obligatorisk for sakarkiv.
 * - 3.4.9
   - Avskrivning bør ikke registreres på kopimottakere.
   - V
   - 

Restanseliste og forfallsliste [12]_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Målet med restansekontrollen er å sikre at alle mottatte henvendelser til organet blir besvart innen rimelig tid. Dette er hjemlet i forvaltningsloven § 11 a (dvs. bestemmelsen om saksbehandlingstid og foreløpig svar). Restanselisten gir også en oversikt over arbeidsbelastningen i organet.

Restanselisten er ment å gi en leder informasjon om hvordan restansesituasjonen er i vedkommendes enhet og hvilke saksmapper det er knyttet restanser til. For en saksansvarlig kan restanselisten brukes som en påminnelse om at det finnes uavsluttede saker som vedkommende er ansvarlig for. Saksbehandler får tilsvarende en påminnelse om dokumenter vedkommende fortsatt har til behandling.

.. list-table:: **Krav til rapporten Restanseliste**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til rapporten *Restanseliste*
   - Type
   - Merknad
 * - 3.4.10
   - *Selektering:*
     
     Rapporten bør kunne selekteres på følgende metadataelementer
     
     - *journaldato* fra *Journalpost* (intervall bør kunne angis) og
     - journalpost*type* fra *Journalpost*
     - *journalenhet*
     - *administrativEnhet* (Her bør det kunne angis om underliggende
       enheter skal inkluderes).
     - *avskrivingsmåte* (Her bør det kunne velges mellom *uavskrevne
       dokumenter*, *avskrevne dokumenter* og *foreløpig avskrevne dokumenter*).
     - *kopimottaker*. Det bør kunne angis om kopimottakere skal
       inkluderes eller ikke.
   - V
   - 
 * - 3.4.11
   - *Rapportens innhold:*
     
     Følgende metadataelementer bør være med i rapporten, så fremt de
     finnes i løsningen:
     
     **Saksmappeinformasjon**
     
     Fra *Saksmappe:*
     
     *mappeID*
     
     *tittel*
     
     *administrativEnhet*
     
     *saksansvarlig*
     
     *journalenhet*
     
     Fra *klasse*
     
     *klasseID* og *tittel*
     
     **Journalpostinformasjon**
     
     Fra *Journalpost*:
     
     *registreringsID*
     
     *journaldato*
     
     *dokumentetsDato* (tekst «Udatert» hvis dato mangler)
     
     *tittel*
     
     *forfallsdato*
     
     *korrespondanseparttype*
     
     *korrespondansepartNavn*
     
     *administrativEnhet*
     
     *Saksbehandler*
   - V
   - 

Hensikten med rapporten *Forfallsliste* er å kunne vise dokumenter med en frist for saksbehandlingen, for å kunne varsle saksbehandler. Hvis arkivet har ansvaret for forfallskontrollen, skal arkivtjenesten varsle saksbehandler om forfallsdatoen. Alternativt kan saksbehandler med registreringstilgang selv registrere og følge opp forfallsdatoer på sine dokumenter.

.. list-table:: **Krav til rapporten Forfallsliste**
   :widths: 1 8 1 4
   :header-rows: 1

 * - Krav nr.
   - Krav til rapporten *Forfallsliste*
   - Type
   - Merknad
 * - 3.4.14
   - *Selektering:*
     
     Rapporten skal kunne selekteres på følgende metadataelementer
     
     - *journaldato* fra *Journalpost* (intervall skal kunne angis) og
     - *journalposttype* fra Journalpost
     - *journalenhet*
     - *administrativEnhet* (Her skal det kunne angis om underliggende
       enheter skal inkluderes).
     - *kopimottaker:* Det skal kunne angis om kopimottakere skal
       inkluderes eller ikke.
     - *forfallsdato* i *Journalpost* (intervall skal kunne angis),
   - V
   - 
 * - 3.4.15
   - *Rapportens innhold:*
     
     Rapporten skal inneholde følgende opplysninger, så fremt de finnes i løsningen:
     
     **Saksmappeinformasjon**
     
     Fra *Saksmappe:*
     
     *mappeID*
     
     *tittel*
     
     *administrativEnhet*
     
     *saksansvarlig*
     
     *journalenhet*
     
     Fra *klasse*
     
     *klasseID og tittel*
     
     **Journalpostinformasjon**
     
     Fra *Journalpost*:
     
     *registreringsID*
     
     *journaldato*
     
     *dokumentetsDato* (tekst «Udatert» hvis dato mangler)
     
     *tittel*
     
     *forfallsdato*
     
     *korrespondanseparttype*
     
     *korrespondansepartNavn*
     
     *administrativEnhet*
     
     *saksbehandler*
   - V
   - 

.. [9]
   Helautomatisk dokumentfangst innebærer at fangsten skjer uten at den
   personlige brukeren foretar seg noe for å få det til å skje, utløst
   av forhåndsdefinerte kriterier som at spesielle trinn i en
   forretningsprosess utføres, ved at informasjonsinnholdet gjenkjennes,
   eller lignende.

.. [10]
   https://geointegrasjon.no/

.. [11]
   https://www.arkivverket.no/forvaltning-og-utvikling/noark-standarden/noark-5/tjenestegrensesnitt-noark5

.. [12]
   Siden bestemmelsen om oppfølging av forfall og restansekontroll er
   tatt ut av den nye arkivforskriften som ble gjort gjeldende fra
   01.01.18 er disse rapportene gjort valgfrie i denne versjonen av
   Noark 5.
