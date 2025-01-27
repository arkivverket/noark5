
Katalogoppføringer
------------------



Identifikasjon
~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M001**
   * - **Navn**
     - **systemID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Globalt unik identifikasjon av arkivenheten (UID).
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse, dokumentobjekt
   * - **Kilde**
     - Registreres automatisk av systemet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på forskjellig tidspunkt.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M002**
   * - **Navn**
     - **klasseID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Entydig identifikasjon av klassen innenfor klassifikasjonssystemet.
   * - **Arkivenhet**
     - klasse
   * - **Kilde**
     - Alle klasser i et klassifikasjonssystem opprettes vanligvis når et arkivsystem tas i bruk. Men enkelte løsninger kan tillate at det opprettes nye klasser ved behov (mest aktuelt ved objektbasert klassifikasjon).
   * - **Arv**
     - I hierarkiske klassifikasjonssystemer (f.eks. statens arkivnøkkel) skal en underordnet klasse arve og aggregere (slå sammen) identifikasjonen fra alle overordnede klasser, se kommentar nedenfor.
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Ulike klassifikasjonssystemer innenfor samme arkivsystem kan inneholde en eller flere av de samme identifikasjonene. Identifikasjonen kan være rent nummerisk, men kan også være alfanumerisk og ha et logisk meningsinnhold. Merk at *klasseID* er identisk med begrepene ordningsverdi og arkivkode i Noark 4.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M003**
   * - **Navn**
     - **mappeID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Entydig identifikasjon av mappen innenfor det arkivet mappen tilhører.
   * - **Arkivenhet**
     - mappe
   * - **Kilde**
     - Registreres automatisk av systemet etter interne regler
   * - **Arv**
     - Ja, til registrering, og aggregeres i *M004* *registreringsID* i kombinasjon med *M015 journalpostnummer*
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Ulike arkiver innenfor samme arkivsystem, kan inneholde en eller flere av de samme kodene. Koden kan være rent numerisk, men kan også ha en logisk oppbygning.
       
       Er en videreføring av kombinasjonen saksår og sakssekvensnummer (oftest bare kalt «saksnummer») i Noark 4, som fortsatt er obligatorisk identifikasjon på saksmappe. I slike tilfeller skal verdien i mappeID også kopieres til de to metadataelementene *M011 saksaar* og *M012 sakssekvensnummer* i saksmappen.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M004**
   * - **Navn**
     - **registreringsID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Entydig identifikasjon av registreringen innenfor arkivet.
   * - **Arkivenhet**
     - registrering
   * - **Kilde**
     - Registreres automatisk av systemet etter interne regler
   * - **Arv**
     - Kan arve *M003 mappeID* fra mappe og kombinere det med *M015 journalpostnummer*
   * - **Betingelser**
     - Skal normalt ikke kunne endres. Ved flytting til en annen mappe, kan endring av *registreringsID* forekomme.
   * - **Kommentarer**
     - Ulike arkiv innenfor samme system kan inneholde samme identifikasjon. Identifikasjonen kan være rent numerisk, men den kan også ha en logisk oppbygging.
       
       Er en videreføring av saksår og sakssekvensnummer (oftest bare kalt «saksnummer») i kombinasjon med «dokumentnummer» i Noark 4 (f.eks. 2011/3869-8, dvs. dokument nummer 8 i saksnummer 2011/3869), men trenger ikke ha denne formen for andre deler av arkivet.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M005**
   * - **Navn**
     - **versjonsnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Identifikasjon av versjoner innenfor ett og samme dokument.
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk når en ny versjon arkiveres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke endres. Den eldste versjonen skal ha det laveste nummeret. Dersom arkiverte versjoner er slettet (gjelder ikke siste versjon), vil dette skape «huller» i nummerrekkefølgen.
   * - **Kommentarer**
     - Versjonsnummer gjelder bare arkiverte versjoner. Annen versjons­håndtering ligger i komplett Noark, og genererer ikke metadata skal følge med i et arkivuttrekk.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M006**
   * - **Navn**
     - **arkivskaperID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Unik ID for arkivskaperen
   * - **Arkivenhet**
     - arkiv
   * - **Kilde**
     - Registreres manuelt ved opprettelsen av arkivet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Kan være organisasjonsnummer (Brønnøysundregistrene) eller annen identifikasjon avtalt med arkivdepotet

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M007**
   * - **Navn**
     - **dokumentnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Identifikasjon av dokumentene innenfor en registrering
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk av systemet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Dokumentnummeret avgjør i hvilken rekkefølge dokumentene vises i brukergrensesnittet. Normalt skal hoveddokument vises før vedleggene.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M008**
   * - **Navn**
     - **moetenummer**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Identifikasjon av møter som et utvalg har avholdt, viser rekkefølgene på møtene
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - Registreres automatisk av systemet, eventuelt også manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M010**
   * - **Navn**
     - **partID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Unik ID for en part
   * - **Arkivenhet**
     - part
   * - **Kilde**
     - Registreres manuelt når part opprettes
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Kan være fødselsnummer eller annen personidentifikasjon

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M011**
   * - **Navn**
     - **saksaar**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Inngår i *M003 mappeID*. Viser året saksmappen ble opprettet.
   * - **Arkivenhet**
     - saksmappe
   * - **Kilde**
     - Registreres automatisk når saksmappen opprettes
   * - **Arv**
     - Kopieres fra *M003 mappeID*
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Se kommentar under *M012 sakssekvensnummer*

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M012**
   * - **Navn**
     - **sakssekvensnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Inngår i *M003 mappeID*. Viser rekkefølgen når saksmappen ble opprettet innenfor året.
   * - **Arkivenhet**
     - saksmappe
   * - **Kilde**
     - Registreres automatisk når saksmappen opprettes
   * - **Arv**
     - Kopieres fra *M003 mappeID*
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Kombinasjonen saksår og sakssekvensnummer er ikke obligatorisk, men anbefales brukt i sakarkiver.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M013**
   * - **Navn**
     - **journalaar**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Viser året journalposten ble opprettet
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk når journalposten opprettes
   * - **Arv**
     - 
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Kombineres med *M014 journalsekvensnummer*, se kommentar under denne

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M014**
   * - **Navn**
     - **journalsekvensnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Viser rekkefølgen når journalposten ble opprettet under året
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk når journalposten opprettes
   * - **Arv**
     - 
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Kombineres med *M013 journalaar.*
       
       Kombinasjonen journalår og sekvensnummer er ikke obligatorisk, men anbefales brukt i sakarkiver. Noen rapporter er sortert på denne kombinasjonen, f.eks. løpende- og offentlig journal. Dersom journalår og sekvensnummer ikke brukes, må kronologiske utskrifter sorteres etter andre kriterier (f.eks. journalpostens *opprettetDato*). I Noark 4 skulle sekvensnummeret vises før journalåret (f.eks. 25367/2011) for at det ikke skulle blandes sammen med saksnummeret som har året først.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M015**
   * - **Navn**
     - **journalpostnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Viser rekkefølgen på journalpostene innenfor saksmappen,.
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk når journalposten opprettes
   * - **Arv**
     - 
   * - **Betingelser**
     - Skal normalt ikke endres, men ved flytting til en annen saksmappe kan journalposten få et nytt nummer (fordi det inngår i en annen nummerrekkefølge i denne mappen).
   * - **Kommentarer**
     - Er ikke obligatorisk, men anbefales brukt i sakarkiver. Kombineres med *M003 mappeID*, og inngår i *M004 registreringsID*. Dersom journalpostnummer ikke brukes, må andre kriterier kunne identifisere journalpostenes rekkefølge innenfor saksmappen.


Kjernemetadata (jf. Dublin Core)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M020**
   * - **Navn**
     - **tittel**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Tittel eller navn på arkivenheten
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse (ikke dokumentobjekt), forekommer også i presedens
   * - **Kilde**
     - Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.
   * - **Arv**
     - Kan eventuelt arves fra *klasse*, se ovenfor
   * - **Betingelser**
     - Skal normalt ikke kunne endres etter at enheten er lukket, eller dokumentene arkivert
   * - **Kommentarer**
     - For saksmappe og journalpost vil dette tilsvare «Sakstittel» og «Dokumentbeskrivelse». Disse navnene kan beholdes i grensesnittet.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M021**
   * - **Navn**
     - **beskrivelse**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Tekstlig beskrivelse av arkivenheten
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse (ikke dokumentobjekt), forekommer også i arkivskaper og presedens
   * - **Kilde**
     - Registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M022**
   * - **Navn**
     - **noekkelord**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Nøkkeord eller stikkord som beskriver innholdet i enheten
   * - **Arkivenhet**
     - klasse, mappe, registrering
   * - **Kilde**
     - Registreres vanligvis ved oppslag fra liste (f.eks. en tesaurus). Kan også registreres automatisk på grunnlag av dokumentinnhold eller integrering med fagsystem.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Nøkkelord kan brukes for å forbedre mulighetene for søking og gjenfinning. Nøkkelord skal ikke erstatte klassifikasjon.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M023**
   * - **Navn**
     - **arkivskaperNavn**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på organisasjonen som har skapt arkivet
   * - **Arkivenhet**
     - arkiv
   * - **Kilde**
     - Registreres manuelt ved opprettelsen av arkivet.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M024**
   * - **Navn**
     - **forfatter**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person (eller eventuelt organisasjon) som har forfattet eller skapt dokumentet.
   * - **Arkivenhet**
     - registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk av systemet, automatisk fra innholdet i dokumentet eller manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Sakarkiver har tradisjonelt ikke noen forfatter på journalposten, men kan eventuelt ha det på dokumentbeskrivelsen. I en journalpost vil derfor forfatter vanligvis være forstått som *M307 saksbehandler* (utgående og organinterne dokumenter) eller eventuelt *M400 korrespondansepartNavn* (ved inngående dokumenter). Fagsystemer uten korrespondansedokumenter bør normal ha en forfatter. Her kan personnavn eventuelt erstattes med en kilde (f.eks. et system).

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M025**
   * - **Navn**
     - **offentligTittel**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Offentlig tittel på arkivenheten, ord som skal skjermes er fjernet fra innholdet i tittelen (erstattet med ******)
   * - **Arkivenhet**
     - mappe, registrering
   * - **Kilde**
     - 
   * - **Arv**
     - 
   * - **Betingelser**
     - Obligatorisk i arkivuttrekk dersom tittelen inneholder ord som skal skjermes, jf. *M502 skjermingMetadata.*
   * - **Kommentarer**
     - I løpende og offentlig journaler skal også offentligTittel være med dersom ord i tittelfeltet skal skjermes.


Nasjonale identifikatorer
~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M030**
   * - **Navn**
     - **kommunenummer**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Firesifret kode som entydig identifiserer en kommune
   * - **Arkivenhet**
     - matrikkelnummer, planident
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - De to første sifrene identifiserer fylke og de to siste identifiserer kommunen innefor fylket. Tildeles av SSB.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M031**
   * - **Navn**
     - **gaardsnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Nummerering av gårdsenhet i matrikkelen, nummeret er unikt innenfor kommunen
   * - **Arkivenhet**
     - matrikkelnummer
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - SOSI-format-navn/datatype/lengde: GNR/H/5.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M032**
   * - **Navn**
     - **bruksnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Fortløpende nummerering av bruk under gårdsnummer
   * - **Arkivenhet**
     - matrikkelnummer
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - SOSI-format-navn/datatype/lengde: BNR/H/4

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M033**
   * - **Navn**
     - **festenummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Fortløpende nummerering av fester under gårdsnummer/bruksnummer
   * - **Arkivenhet**
     - matrikkelnummer
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Underoppdeling under bruksnummer, angir enheter som kan omsettes og pantsettes. Del av matrikkelnummeret som identifiserer festegrunn (tomt). Tas i bruk når et bruksnummer skal deles opp i flere grunneiendommer. SOSI-format-navn/datatype/lengde: FNR/H/4.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M034**
   * - **Navn**
     - **seksjonsnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Fortløpende nummerering av seksjoner under gårdsnummer/bruksnummer og eventuelt festenummer
   * - **Arkivenhet**
     - matrikkelnummer
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Underoppdeling under bruksnummer, angir enheter som kan omsettes og selges. Typisk i leilighetesbygg i flere etasjer, forretningsgårder eller en blanding av forretninger og leiligheter. SOSI-format-navn/datatype/lengde: SNR/H/3.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M035**
   * - **Navn**
     - **bygningsnummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Entydig identifikasjon av bygning i matrikkelen
   * - **Arkivenhet**
     - byggident
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Bygningsnumrene er unike på landsbasis, og tildeles automatisk. SOSI-format-navn/datatype/lengde: BYGGNR/H/9

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M036**
   * - **Navn**
     - **endringsloepenummer**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Entydig identifikasjon av endring av bygning i matrikkelen
   * - **Arkivenhet**
     - byggident
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Løpende nummerering av bygningsendringer til en bygning. SOSI-format-navn/datatype/lengde: BYGN_ENDR_LØPENR/H/2 Denne kan utelates når det kun er bygningen som skal identifiseres.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M037**
   * - **Navn**
     - **fylkesnummer**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - To-sifret kode som entydig identifiserer et fylke
   * - **Arkivenhet**
     - planident
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M038**
   * - **Navn**
     - **landkode**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Entydig identifikasjon av et land
   * - **Arkivenhet**
     - part, korrespondansepart, planident
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - To-bokstavs kode i hht. ISO 3166

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M039**
   * - **Navn**
     - **planidentifikasjon**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Entydig identifikasjon for en plan innen en kommune eller et fylke
   * - **Arkivenhet**
     - planident
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Jf. pbl. 1985 § 18, § 19-1 sjette ledd, § 20-1 andre og femte ledd og § 22 og § 28-2/pbl. §§ 6-4, 8-1, 9-1, 11-1 og § 12-1, samt kart- og planforskriften § 9 andre og sjette ledd

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M040**
   * - **Navn**
     - **x**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Østlig koordinat for et geografisk punkt
   * - **Arkivenhet**
     - posisjon
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Østlig UTM-koordinat for et punkt, definisjonen er avhengig av valgt koordinatsystem.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M041**
   * - **Navn**
     - **y**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Nordlig koordinat for et geografisk punkt
   * - **Arkivenhet**
     - posisjon
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Nordlig UTM-koordinat for et punkt, definisjonen er avhengig av valgt koordinatsystem.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M042**
   * - **Navn**
     - **z**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Høyden til et geografisk punkt
   * - **Arkivenhet**
     - posisjon
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Høyde avhenger av koordinatsystemet (f.eks. høyde over havet eller høyde vs. overflaten).

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M043**
   * - **Navn**
     - **koordinatsystem**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Geografiske koordinaters referansesystem
   * - **Arkivenhet**
     - posisjon
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Referansekoordinatsystem for geografiske koordinater, som definert av `EPSG <http://www.epsg.org/>`__.  Formatet på kodeverdiene er «EPSG:{nummer}», der {nummer} er EPSG-koden.  Typisk brukt verdier er «EPSG:32632» (Sør-Norge), «EPSG:32633» (Nord-Norge, Norge generelt) og «EPSG:32635» (Finnmark).  Hvis det ikke eksisterer EPSG-kode for referansekoordinatsystemet som er brukt, så kan en definere egne verdier som ikke starter med «EPSG:».  Slik bruk bør avklares med Arkivverket i forkant.  EPSG-verdier kan blant annet hentes enten fra direkte fra EPSG eller fra katalogen til GeoNorge, tilgjengelig på https://register.geonorge.no/epsg-koder .

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M048**
   * - **Navn**
     - **personID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Entydig identifikasjon av en person
   * - **Arkivenhet**
     - part, korrespondansepart
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - For norske eller utenlandske personer med midlertidig opphold i Norge, fødselsnummer eller d-nummer fra Folkeregisteret. For utenlandske personer, to-bokstavers landkode i hht. ISO 3166 etterfulgt av skråstrek etterfulgt av nasjonal person-identifikator.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M049**
   * - **Navn**
     - **organisasjonsID**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Entydig identifikasjon av en organisasjon
   * - **Arkivenhet**
     - part, korrespondansepart
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - For norske organisasjoner, organisasjonsnummer fra Enhetsregisteret. For utenlandske organisasjoner, firesifret landkode i hht. ISO 6523 etterfulgt av kolon etterfulgt av nasjonal organisasjons-identifikator.


Status
~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M050**
   * - **Navn**
     - **arkivstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til arkivet
   * - **Arkivenhet**
     - arkiv
   * - **Kilde**
     - Registreres manuelt når arkivet opprettes eller ved skifte av status.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Opprettet»
       - «Avsluttet»
       
       Skifte av status kan bare utføres av autoriserte personer.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M051**
   * - **Navn**
     - **arkivdelstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til den arkivperioden som arkivdelen omfatter
   * - **Arkivenhet**
     - arkivdel
   * - **Kilde**
     - Registreres manuelt når arkivdelen opprettes eller ved skifte av status.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Aktiv periode»
       - «Overlappingsperiode»
       - «Avsluttet periode»
       - «Uaktuelle mapper»
       
       Skifte av status kan bare utføres av autoriserte personer.
   * - **Kommentarer**
     - Arkivdeler som avleveres skal ha status «Avsluttet periode»

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M052**
   * - **Navn**
     - **saksstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til saksmappen, dvs. hvor langt saksbehandlingen har kommet.
   * - **Arkivenhet**
     - saksmappe
   * - **Kilde**
     - Registreres automatisk gjennom forskjellig saksbehandlings­funksjonalitet, eller overstyres manuelt.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Under behandling»
       - «Avsluttet»
       - «Utgår»
       
       Skifte av status kan bare utføres av autoriserte personer.
   * - **Kommentarer**
     - Saksmapper som avleveres skal ha status «Avsluttet» eller «Utgår».

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M053**
   * - **Navn**
     - **journalstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til journalposten, dvs. om dokumentet er registrert, under behandling eller endelig arkivert.
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk gjennom forskjellig saksbehandlings­funksjonalitet, eller overstyres manuelt.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Journalført»
       - «Ekspedert»
       - «Arkivert»
       - «Utgår»
       
       Skifte av status kan bare utføres av autoriserte personer.
   * - **Kommentarer**
     - Journalposter som avleveres skal ha status «Arkivert» eller «Utgår».

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M054**
   * - **Navn**
     - **dokumentstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til dokumentet
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Kan endres automatisk ved endring i saksstatus eller journalstatus.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Dokumentet er under redigering»
       - «Dokumentet er ferdigstilt»
   * - **Kommentarer**
     - Dokumentbeskrivelser som avlevers skal ha status «Dokumentet er ferdigstilt».

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M055**
   * - **Navn**
     - **moeteregistreringsstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til møteregistreringen
   * - **Arkivenhet**
     - moeteregistrering
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Valgfrie verdier, eksempler:
       
       - «Ferdig behandlet av utvalget»
       - «Utsatt til nytt møte i samme utvalg»
       - «Sendt tilbake til foregående utvalg»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M056**
   * - **Navn**
     - **presedensstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Informasjon om presedensen er gjeldende eller foreldet
   * - **Arkivenhet**
     - saksmappe eller journalpost
   * - **Kilde**
     - Registreres manuelt ved foreldelse
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Gjeldende»
       - «Foreldet»
   * - **Kommentarer**
     - 


Typer
~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M082**
   * - **Navn**
     - **journalposttype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på type journalpost
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk av systemet eller manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Inngående dokument»
       - «Utgående dokument»
       - «Organinternt dokument for oppfølging»
       - «Organinternt dokument uten oppfølging»
       - «Saksframlegg»
   * - **Kommentarer**
     - Tilsvarer «Noark dokumenttype» i Noark 4

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M083**
   * - **Navn**
     - **dokumenttype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på type dokument
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk av systemet eller manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske typer. Aktuelle verdier kan f.eks. være:
       
       - «Brev»
       - «Rundskriv»
       - «Faktura»
       - «Ordrebekreftelser»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M084**
   * - **Navn**
     - **merknadstype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på type merknad
   * - **Arkivenhet**
     - mappe, registrering og dokumentbeskrivelse
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske typer. Aktuelle verdier kan f.eks. være:
       
       - «Merknad fra saksbehandler»
       - «Merknad fra leder»
       - «Merknad fra arkivansvarlig»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M085**
   * - **Navn**
     - **moeteregistreringstype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på type møteregistrering
   * - **Arkivenhet**
     - moeteregistrering
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske typer. Aktuelle verdier kan f.eks. være:
       
       - «Møteinnkallelse»
       - «Saksliste»
       - «Saksframlegg»
       - «Vedlegg til møtesak»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M086**
   * - **Navn**
     - **klassifikasjonstype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Type klassifikasjonssystem
   * - **Arkivenhet**
     - klassifikasjonssystem
   * - **Kilde**
     - Registreres manuelt ved opprettelse av *klassifikasjonssystem*
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske typer. Aktuelle verdier kan f.eks. være:
       
       - «Funksjonsbasert, hierarkisk»
       - «Emnebasert, hierarkisk arkivnøkkel»
       - «Emnebasert, ett nivå»
       - «K-koder»
       - «Mangefasettert, ikke hierarki»
       - «Objektbasert»
       - «Fødselsnummer»
       - «Gårds- og bruksnummer»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M087**
   * - **Navn**
     - **korrespondanseparttype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Type korrespondansepart
   * - **Arkivenhet**
     - registrering
   * - **Kilde**
     - Registreres automatisk knyttet til funksjonalitet i forbindelse med opprettelse av journalpost, kan også registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Avsender»
       - «Mottaker»
       - «Kopimottaker»
       - «Gruppemottaker»
       - «Intern avsender»
       - «Intern mottaker»
   * - **Kommentarer**
     - Korrespondansetype forekommer én gang innenfor objektet korrespondansepart, men denne kan forekomme flere ganger innenfor en journalpost.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M088**
   * - **Navn**
     - **moetesakstype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på type møtesak
   * - **Arkivenhet**
     - moeteregistrering
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Foreslåtte verdier:
       
       - «Politisk sak»
       - «Delegert møtesak»
       - «Referatsak»
       - «Interpellasjon»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M089**
   * - **Navn**
     - **slettingstype**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på hvilket objekt som er slettet
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Sletting av produksjonsformat»
       - «Sletting av tidligere versjon»
       - «Sletting av variant med sladdet informasjon»
   * - **Kommentarer**
     - Siste versjon av et dokument skal vanligvis ikke kunne slettes. Sletting av innholdet i en arkivdel skal bare kunne utføres av autorisert personale.


Datoer
~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M100**
   * - **Navn**
     - **saksdato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Datoen saken er opprettet
   * - **Arkivenhet**
     - saksmappe
   * - **Kilde**
     - Settes automatisk til samme dato som *M600 opprettetDato*
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal kunne endres manuelt inntil saksmappen avsluttes
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M101**
   * - **Navn**
     - **journaldato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Datoen journalposten er journalført
   * - **Arkivenhet**
     - Journalpost
   * - **Kilde**
     - Settes automatisk når journalstatus settes til journalført.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal kunne endres manuelt inntil arkivering
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M102**
   * - **Navn**
     - **moetedato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Datoen når et utvalgsmøte blir avholdt
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - Registreres manuelt ved opprettelsen av en møtemappe.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal kunne endres manuelt inntil mappen avsluttes.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M103**
   * - **Navn**
     - **dokumentetsDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato som er påført selve dokumentet
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Datoen hentes automatisk fra dokumentet, eller registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal kunne endres manuelt inntil arkivering
   * - **Kommentarer**
     - Kan brukes både for inngående, utgående og organinterne dokumenter

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M104**
   * - **Navn**
     - **mottattDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato et eksternt dokument ble mottatt
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres manuelt eller automatisk av systemet ved elektronisk kommunikasjon
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres ved automatisk registrering, dato for mottak av fysiske dokumenter skal kunne endres inntil arkivering
   * - **Kommentarer**
     - Merk at mottattDato ikke behøver å være identisk med *M600 opprettetDato*

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M105**
   * - **Navn**
     - **sendtDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato et internt produsert dokument ble sendt/ekspedert
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres manuelt eller automatisk av systemet ved elektronisk kommunikasjon
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres ved automatisk registrering, dato for forsendelse av fysiske dokumenter skal kunne endres inntil arkivering
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M106**
   * - **Navn**
     - **utlaantDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato når en fysisk saksmappe eller journalpost ble utlånt
   * - **Arkivenhet**
     - saksmappe, journalpost
   * - **Kilde**
     - Registreres manuelt ved utlån
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Utlån skal også kunne registreres etter at en saksmappe er avsluttet, eller etter at dokumentene i en journalpost ble arkivert.
   * - **Kommentarer**
     - Det er ikke spesifisert noen dato for tilbakelevering. Tilbakelevering kan markeres ved at *M106* *utlaantDato* slettes. Det er ingen krav om obligatorisk logging av utlån av fysiske dokumenter.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M107**
   * - **Navn**
     - **arkivperiodeStartDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato for starten av en arkivperiode
   * - **Arkivenhet**
     - arkivdel
   * - **Kilde**
     - Settes automatisk til samme dato som *M600 opprettetDato*
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal kunne endres manuelt
   * - **Kommentarer**
     - Det kan tenkes tilfeller hvor startdatoen ikke er identisk med datoen arkivdelen ble opprettet

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M108**
   * - **Navn**
     - **arkivperiodeSluttDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato for slutten av en arkivperiode
   * - **Arkivenhet**
     - arkivdel
   * - **Kilde**
     - Settes automatisk til samme dato som *M602 avsluttetDato*
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal kunne endres manuelt.
   * - **Kommentarer**
     - Det kan forekomme tilfeller hvor sluttdatoen ikke er identisk med datoen arkivdelen ble avsluttet.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M109**
   * - **Navn**
     - **forfallsdato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato som angir fristen for når et inngående dokument må være besvart
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Forfallsdato kan være angitt som en betingelse i det inngående dokumentet

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M110**
   * - **Navn**
     - **offentlighetsvurdertDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Datoen da offentlighetsvurdering ble foretatt
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk knyttet til funksjonalitet for skjerming
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Dato for offentlighetsvurdering kan brukes dersom inngående dokumenter automatisk blir midlertidig skjermet ved mottak, og offentlighets­vurderingen skjer på et litt senere tidspunkt.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M111**
   * - **Navn**
     - **presedensDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Datoen på presedensen
   * - **Arkivenhet**
     - saksmappe eller journalpost
   * - **Kilde**
     - Registreres manuelt ved opprettelse av presedens, men bør også kunne hentes automatisk fra *M103 dokumentetsDato* på journalposten presedensen opprettes på.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M112**
   * - **Navn**
     - **journalStartDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Startdato for journalutskriftene som inngår i avleveringspakken.
   * - **Arkivenhet**
     - Egne filer med journalutskrift for løpende og offentlig journal: loependeJournal.xml og offentligJournal.xml.
   * - **Kilde**
     - Registreres når avleveringspakken produseres
   * - **Arv**
     - 
   * - **Betingelser**
     - Startdato skal selekteres på *M101 journaldato*
   * - **Kommentarer**
     - Startdatoen vil vanligvis være identisk med *M107 arkivperiodeStartdato*

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M113**
   * - **Navn**
     - **journalSluttDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Sluttdato for journalutskriftene som inngår i avleveringspakken.
   * - **Arkivenhet**
     - Egne filer med journalutskrift for løpende og offentlig journal: loependeJournal.xml og offentligJournal.xml.
   * - **Kilde**
     - Registreres når avleveringspakken produseres
   * - **Arv**
     - 
   * - **Betingelser**
     - Sluttdato skal selekteres på *M101 journaldato*
   * - **Kommentarer**
     - Sluttdatoen vil vanligvis være identisk med *M108 arkivperiodeSluttdato*

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M114**
   * - **Navn**
     - **avleveringspakkeStartDato**
   * - **Datatype**
     - Dato
   * - **Definisjon**
     - Startdato avleveringspakken.
   * - **Arkivenhet**
     - Overordnet informasjon om innholdet i avleverinspakken.
   * - **Kilde**
     - Registreres når avleveringspakken produseres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Startdatoen kan selekteres på M602 avsluttetDato for mappen. Andre seleksjonskriterier kan være aktuelle.
   * - **Kommentarer**
     - Startdatoen vil være identisk med M107 arkivperiodeStartdato dersom uttrekket bare omfatter en avleveringspakke.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M115**
   * - **Navn**
     - **avleveringspakkeSluttDato**
   * - **Datatype**
     - Dato
   * - **Definisjon**
     - Sluttdato for avleveringspakken.
   * - **Arkivenhet**
     - Overordnet informasjon om innholdet i avleverinspakken.
   * - **Kilde**
     - Registreres når avleveringspakken produseres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Sluttdatoen kan selekteres på M602 avsluttetDato for mappen. Andre seleksjonskriterier kan være aktuelle.
   * - **Kommentarer**
     - Sluttdatoen vil være identisk med M108 arkivperiodeSluttdato dersom uttrekket bare omfatter en avleveringspakke.


Referanser
~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M202**
   * - **Navn**
     - **referanseForloeper**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til den arkivdelen som er forløper for denne arkivdelen, dvs. inneholder forrige arkivperiode.
   * - **Arkivenhet**
     - arkivdel
   * - **Kilde**
     - Registreres automatisk når arkivdelen som er arvtaker opprettes
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for arkivdel
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M203**
   * - **Navn**
     - **referanseArvtaker**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til den arkivdelen som er arvtaker for denne arkivdelen, dvs. inneholder neste arkivperiode.
   * - **Arkivenhet**
     - arkivdel
   * - **Kilde**
     - Registreres automatisk når det opprettes en arkivdel som defineres som arvtaker til en eksisterende arkivdel
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for arkivdel
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M208**
   * - **Navn**
     - **referanseArkivdel**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til arkivdelen som denne arkivenheten er tilknyttet
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk, kan overstyres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for arkivdel
   * - **Kommentarer**
     - Alle mapper skal ha referanse til arkivdel (selv om tilhørigheten til arkivdel også kan finnes via klasse og klassifikasjonssystem). En mappe, registrering eller en dokumentbeskrivelse som har en annen skjerming, kassasjonsbestemmelse eller dokumentmedium (fysisk/elektronisk) enn resten av dokumentene som tilhører arkivdelen, kan ha referanse til en annen arkivdel som inneholder informasjon om disse «unntakene». Slike arkivdeler vil ikke ha egne barn (dvs. underordnede arkivenheter). Merk at selv om disse arkivenhetene har referanse til en «tom» arkivdel, tilhører de indirekte også den arkivdelen som er utgangspunktet for den hierarkiske arkivstrukturen. Opplysninger om skjerming, kassasjonsbestemmelse og dokumentmedium skal arves fra arkivenheten det refereres til. Slik arv skal da overstyre arven gjennom selve arkivstrukturen. Et eksempel: Alle saksmapper som tilhører en bestemt klasse skal kasseres etter 10 år, unntatt de organinterne dokumentene som skal bevares. Disse dokumentene kan da automatisk tilordnes en annen arkivdel når journalposter med organinterne dokumenter opprettes.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M209**
   * - **Navn**
     - **referanseSekundaerKlassifikasjon**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til sekundærklassifikasjon. Kan også referere til flere enn én sekundær klassifikasjon (tertiærklassifikasjon osv.)
   * - **Arkivenhet**
     - mappe, registrering
   * - **Kilde**
     - Registreres automatisk ved klassifikasjon
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for klasse
   * - **Kommentarer**
     - Kan også brukes for å bygge opp mangefasettert klassifikasjon og kommunenes klassifikasjonssystem «K-kodene».

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M210**
   * - **Navn**
     - **referanseTilMappe**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Kryssreferanse til en *mappe* fra en annen *mappe* eller *registrering*
   * - **Arkivenhet**
     - mappe, registrering
   * - **Kilde**
     - Registreres automatisk når kryssreferanse opprettes
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for mappe
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M212**
   * - **Navn**
     - **referanseTilRegistrering**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Kryssreferanse til en *registrering* fra en annen *registrering* eller *mappe*
   * - **Arkivenhet**
     - mappe, registrering
   * - **Kilde**
     - Registreres automatisk når en kryssreferanse opprettes
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for registrering
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M215**
   * - **Navn**
     - **referanseAvskrivesAvJournalpost**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til en journalpost som avskriver denne journalposten
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres manuelt eller automatisk ved avskrivning
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for registrering
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M217**
   * - **Navn**
     - **tilknyttetRegistreringSom**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av hvilken «rolle» dokumentet har i forhold til registreringen
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk eller manuelt når et dokument blir tilknyttet en registrering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Hoveddokument»
       - «Vedlegg»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M218**
   * - **Navn**
     - **referanseDokumentfil**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Referanse til filen som inneholder det elektroniske dokumentet som dokumentobjektet beskriver
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk når et dokument tilknyttes en registrering, når det arkiveres flere versjoner av et dokument, når det lages en egen variant av dokumentet og når dokumentet konverteres til nye formater
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Referansen skal være en «sti» (dvs. også inneholde katalogstrukturen) til filnavnet som gjør det mulig å identifisere riktig fil i et arkivuttrekk. Stien skal angis relativt i forhold til filen *arkivstruktur.xml*.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M219**
   * - **Navn**
     - **referanseTilKlasse**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til en annen klasse
   * - **Arkivenhet**
     - klasse
   * - **Kilde**
     - Registreres vanligvis manuelt når klassifikasjonssystemet opprettes
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for klasse
   * - **Kommentarer**
     - Kryssreferansen kan gå til en eller flere klasser innenfor samme klassifikasjonssystem, og til en eller flere klasser i andre klassifika­sjonssystem. Kan brukes for å knytte sammen beslektede klasser som ikke kan utledes fra det hierarkiske klassifikasjonssystemet.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M221**
   * - **Navn**
     - **referanseForrigeMoete**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til forrige utvalgsmøte
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - Registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for mappe
   * - **Kommentarer**
     - Kan brukes dersom et møte går over flere dager

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M222**
   * - **Navn**
     - **referanseNesteMoete**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til neste utvalgsmøte
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - Registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for mappe
   * - **Kommentarer**
     - Kan brukes dersom et møte går over flere dager

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M223**
   * - **Navn**
     - **referanseTilMoeteregistrering**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til en annen møteregistrering
   * - **Arkivenhet**
     - moeteregistrering
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for registrering
   * - **Kommentarer**
     - Kan brukes for å knytte sammen dokumenter som tilhører samme «møtesak» (Møtemappen har ikke noe eget nivå for møtesaker.)

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M224**
   * - **Navn**
     - **referanseFraMoeteregistrering**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse fra en annen møteregistrering
   * - **Arkivenhet**
     - moeteregistrering
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for registrering
   * - **Kommentarer**
     - Kan brukes for å knytte sammen dokumenter som tilhører samme «møtesak»

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M225**
   * - **Navn**
     - **referanseOpprettetAv**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til bruker som opprettet/registrerte arkivenheten
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse, dokumentobjekt
   * - **Kilde**
     - Registreres automatisk av systemet ved opprettelse av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatorisk ved bruk av Noark 5 tjenestegrensesnitt
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M226**
   * - **Navn**
     - **referanseOppdatertAv**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til bruker som oppdaterte arkivenheten
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk av systemet ved opprettelse av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M227**
   * - **Navn**
     - **referanseAvsluttetAv**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til bruker som avsluttet/lukket arkivenheten
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse og mappe
   * - **Kilde**
     - Registreres automatisk av systemet ved opprettelse av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres. Obligatorisk dersom arkivenheten er avsluttet. Obligatorisk ved bruk av Noark 5 tjenestegrensesnitt.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M228**
   * - **Navn**
     - **referanseArkivertAv**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til bruker som arkiverte arkivenheten
   * - **Arkivenhet**
     - registrering
   * - **Kilde**
     - Registreres automatisk av systemet ved arkivering av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M229**
   * - **Navn**
     - **referanseForelderMappe**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til overordnet mappe
   * - **Arkivenhet**
     - mappe
   * - **Kilde**
     - Registreres automatisk av systemet ved arkivering av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M230**
   * - **Navn**
     - **referanseEndretAv**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til bruker som oppdaterte arkivenheten eller endret metadata
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse samt filen endringslogg.xml
   * - **Kilde**
     - Registreres automatisk ved oppdatering av en arkivenhet eller endring av metadata
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Erstatter M226 referanseOppdatertAv

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M231**
   * - **Navn**
     - **referanseAvskrivesAvKorrespondansepart**
   * - **Datatype**
     - systemID
   * - **Definisjon**
     - Referanse til korrespondansepart i journalpost som avskriver denne journalposten.
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres manuelt eller automatisk ved avskrivning
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 


Arkiv- og saksbehandlingsfunksjonalitet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M300**
   * - **Navn**
     - **dokumentmedium**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av om arkivenheten inneholder fysiske dokumenter, elektroniske dokumenter eller en blanding av fysiske og elektroniske dokumenter
   * - **Arkivenhet**
     - arkiv, arkivdel, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Arves fra overordnet nivå, kan overstyres manuelt
   * - **Arv**
     - Ja
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Fysisk arkiv»
       - «Elektronisk arkiv»
       - «Blandet fysisk og elektronisk arkiv»
   * - **Kommentarer**
     - Obligatorisk ved blanding av fysisk og elektronisk arkiv. Er hele arkivet enten fysisk eller elektronisk, er det tilstrekkelig med verdi på arkivnivå. Er en hel arkivdel enten fysisk eller elektronisk, er det tilstrekkelig å angi det på arkivdelnivå. Dersom underordnede arkivdeler inneholder både fysiske og elektroniske dokumenter, må informasjon om dette arves nedover i hierarkiet. Se også kommentar til *M208 referanseArkivdel.*

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M301**
   * - **Navn**
     - **oppbevaringssted**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Stedet hvor de fysiske dokumentene oppbevares. Kan være angivelse av rom, hylle, skap osv. Overordnede arkivdeler (f.eks. en arkivdel) kan oppbevares på flere steder.
   * - **Arkivenhet**
     - arkiv, arkivdel, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Arves fra overordnet nivå, kan overstyres manuelt
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Fysiske dokumenters plassering skal ellers gå fram av arkivstrukturen. Fysiske dokumenter i et sakarkiv skal i utgangspunktet være ordnet i overordnede omslag (f.eks. hengemapper) etter stigende klasseID. Innenfor hver av disse skal omslagene skal dokumentene ligge i fysiske saksmapper som er ordnet etter stigende mappeID. Innenfor saksmappene skal dokumentene være ordnet etter stigende journalpostnummer (»dokumentnummer»). Vedlegg skal legges sammen med tilhørende hoveddokument.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M302**
   * - **Navn**
     - **partNavn**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på virksomhet eller person som er part
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt eller automatisk fra fagsystem
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M303**
   * - **Navn**
     - **partRolle**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av rollen til parten
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt eller automatisk fra fagsystem
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Her er det mange tenkelige roller, f.eks.
       
       - Klient
       - Pårørende
       - Formynder
       - Advokat
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M304**
   * - **Navn**
     - **antallVedlegg**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Antall fysiske vedlegg til et fysisk hoveddokument
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M305**
   * - **Navn**
     - **administrativEnhet**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på avdeling, kontor eller annen administrativ enhet som har ansvaret for saksbehandlingen.
   * - **Arkivenhet**
     - saksmappe, journalpost, moeteregistrering
   * - **Kilde**
     - Registreres automatisk f.eks. på grunnlag av innlogget bruker, kan overstyres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Merk at på journalpostnivå grupperes *administrativEnhet* sammen med *M307 saksbehandler* inn i korrespondansepart. Dette muliggjør individuell behandling når det er flere mottakere, noe som er særlig aktuelt ved organinterne dokumenter som skal følges opp.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M306**
   * - **Navn**
     - **saksansvarlig**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som er saksansvarlig
   * - **Arkivenhet**
     - saksmappe
   * - **Kilde**
     - Registreres automatisk på grunnlag av innlogget bruker eller annen saksbehandlingsfunksjonalitet (f.eks. saksfordeling), kan overstyres manuelt
   * - **Arv**
     - Ja til journalpost, jf. *M307 saksbehandler*
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M307**
   * - **Navn**
     - **saksbehandler**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som er saksbehandler
   * - **Arkivenhet**
     - journalpost, moeteregistrering
   * - **Kilde**
     - Registreres automatisk på grunnlag av innlogget bruker eller annen saksbehandlingsfunksjonalitet (f.eks. saksfordeling), kan overstyres manuelt.
   * - **Arv**
     - Ja fra saksmappe til journalpost, jf. *M306* *saksansvarlig.* Saksansvarlig og saksbehandler vil i mange tilfeller være samme person.
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Merk at *saksbehandler* grupperes inn i korrespondansepart på journalpostnivå. Se kommentar til *M305 administrativEnhet*.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M308**
   * - **Navn**
     - **journalenhet**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på enhet som har det arkivmessige ansvaret for kvalitetssikring av arkivdanningen, og eventuelt registrering (journalføring) og arkivering av fysiske dokumenter
   * - **Arkivenhet**
     - saksmappe, journalpost
   * - **Kilde**
     - Registreres automatisk på grunnlag av innlogget bruker, kan overstyres manuelt
   * - **Arv**
     - Ja fra saksmappe til journalpost
   * - **Betingelser**
     - Er ikke lenger obligatorisk i Noark 5. Journalenhet er helt uavhengig av administrativ enhet. Kan f.eks. brukes som seleksjonskriterium ved produksjon av rapporter. Det anbefales ikke å knytte tilgangsrettigheter til journalenhet.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M309**
   * - **Navn**
     - **utlaantTil**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navnet på person som har lånt en fysisk saksmappe
   * - **Arkivenhet**
     - saksmappe, journalpost
   * - **Kilde**
     - Registreres manuelt ved utlån
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Utlån skal også kunne registreres etter at en saksmappe er avsluttet, eller at dokumentene i en journalpost ble arkivert
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M310**
   * - **Navn**
     - **merknadstekst**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Merknad fra saksbehandler, leder eller arkivpersonale.
   * - **Arkivenhet**
     - mappe, registrering og dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Merknaden bør gjelde selve saksbehandlingen eller forhold rundt arkiveringen av dokumentene som tilhører arkivenheten.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M311**
   * - **Navn**
     - **presedensHjemmel**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Lovparagrafen som saken eller journalposten danner presedens for
   * - **Arkivenhet**
     - saksmappe eller journalpost
   * - **Kilde**
     - Registreres manuelt ved opprettelse av presedens
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M312**
   * - **Navn**
     - **rettskildefaktor**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - En argumentkilde som brukes til å løse rettslige problemer. En retts­anvender som skal ta stilling til et juridisk spørsmål, vil ta utgangspunkt i en rettskildefaktor.
   * - **Arkivenhet**
     - saksmappe eller journalpost
   * - **Kilde**
     - Registreres manuelt ved opprettelse av presedens
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - En rettskildefaktor kan være en lov- eller forskriftstekst, lovforarbeider, domstolspraksis, andre myndigheters praksis, privates praksis (kontraktspraksis), rettsoppfatninger, reelle hensyn, folkerett, EU-/ EØS-rett mv.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M313**
   * - **Navn**
     - **seleksjon**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Beskrivelse av kriteriene som er brukt ved seleksjon av journalrapportenes innhold.
   * - **Arkivenhet**
     - Egne filer med journalutskrift for løpende og offentlig journal: loependeJournal.xml og offentligJournal.xml
   * - **Kilde**
     - 
   * - **Arv**
     - 
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Både løpende og offentlig journal er i utgangspunktet selektert etter journaldato. Andre kriterier kan eventuelt brukes i tillegg.


Møtebehandling
~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M370**
   * - **Navn**
     - **utvalg**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på utvalget som avholdt møte
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - Registreres manuelt ved opprettelsen av møtemappen
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M371**
   * - **Navn**
     - **moetested**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Sted hvor møtet ble avholdt
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - Registreres manuelt ved opprettelsen av møtemappen
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M372**
   * - **Navn**
     - **moetedeltakerNavn**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som var til stedet på møtet
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - Registreres manuelt ved opprettelsen av møtemappen, kan eventuelt også hentes automatisk fra f.eks. møteinnkalling
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M373**
   * - **Navn**
     - **moetedeltakerFunksjon**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Funksjon eller rolle til personen som deltok på møtet
   * - **Arkivenhet**
     - moetemappe
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske typer. Aktuelle verdier kan f.eks. være:
       
       - «Møteleder»
       - «Referent»
   * - **Kommentarer**
     - 


Korrespondanse
~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M400**
   * - **Navn**
     - **korrespondansepartNavn**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person eller organisasjon som er avsender eller mottaker av dokumentet
   * - **Arkivenhet**
     - korrespondansepart
   * - **Kilde**
     - Registreres manuelt eller automatisk fra dokumentet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Navn på korrespondansepart forekommer én gang innenfor objektet korrespondansepart, men denne kan forekomme flere ganger innenfor en journalpost. De samme gjelder alle elementene nedenfor.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M406**
   * - **Navn**
     - **postadresse**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Postadressen til en avsender /mottaker eller part
   * - **Arkivenhet**
     - korrespondansepart, part
   * - **Kilde**
     - Registreres manuelt eller automatisk fra dokumentet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - En postadresse kan angis som flere elementer (»adresselinjer»), noe som kan være aktuelt ved bestemte utenlandske adresser

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M407**
   * - **Navn**
     - **postnummer**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Postnummeret til en avsender /mottaker eller part
   * - **Arkivenhet**
     - korrespondansepart, part
   * - **Kilde**
     - Registreres manuelt eller automatisk fra dokumentet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M408**
   * - **Navn**
     - **poststed**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Poststedet til en avsender/mottaker eller part
   * - **Arkivenhet**
     - korrespondansepart, part
   * - **Kilde**
     - Registreres manuelt eller automatisk fra dokumentet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M409**
   * - **Navn**
     - **land**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Land dersom adressen er i utlandet
   * - **Arkivenhet**
     - korrespondansepart, part
   * - **Kilde**
     - Registreres manuelt eller automatisk fra dokumentet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M410**
   * - **Navn**
     - **epostadresse**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - E-postadressen til en avsender/mottaker eller part
   * - **Arkivenhet**
     - korrespondansepart, part
   * - **Kilde**
     - Registreres manuelt eller automatisk fra dokumentet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M411**
   * - **Navn**
     - **telefonnummer**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Telefonnummeret til en avsender/mottaker eller part
   * - **Arkivenhet**
     - korrespondansepart, part
   * - **Kilde**
     - Registreres manuelt eller automatisk
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M412**
   * - **Navn**
     - **kontaktperson**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Kontaktperson hos en organisasjon som er avsender eller mottaker, eller part
   * - **Arkivenhet**
     - korrespondansepart, part
   * - **Kilde**
     - Registreres manuelt eller automatisk
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M413**
   * - **Navn**
     - **eksternReferanse**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - «Vår referanse» på inngående journalposter og «Deres referanse» på utgående journalposter
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres manuelt eller automatisk
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 


Bevaring og kassasjon
~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M450**
   * - **Navn**
     - **kassasjonsvedtak**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Handling som skal utføres ved bevaringstidens slutt.
   * - **Arkivenhet**
     - arkivdel, klasse, mappe, registrering, dokument­beskrivelse
   * - **Kilde**
     - Registreres manuelt ved opprettelse av *arkivdel* eller *klasse*. Arves til underliggende enheter, men kan endres manuelt.
   * - **Arv**
     - Ja
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Bevares»
       - «Kasseres» ,
       - «Vurderes senere»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M451**
   * - **Navn**
     - **bevaringstid**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Antall år dokumentene som tilhører denne arkivdelen skal bevares.
   * - **Arkivenhet**
     - arkivdel, klasse, mappe, registrering, dokument­beskrivelse
   * - **Kilde**
     - Registreres manuelt ved opprettelse av *arkivdel* eller *klasse*. Arves til underliggende enheter, men kan endres manuelt.
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Tidspunktet for når bevaringstiden starter å løpe, vil vanligvis være når en mappe avsluttes. Men andre regler kan være aktuelle.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M452**
   * - **Navn**
     - **kassasjonsdato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato for når dokumentene som tilhører denne arkivenheten skal kunne kasseres, eller vurderes for bevaring og kassasjon på ny
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Datoen beregnes automatisk på grunnlag av *M451 Bevaringstid*, eller registreres manuelt
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M453**
   * - **Navn**
     - **kassasjonshjemmel**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av hjemmel for kassasjon
   * - **Arkivenhet**
     - arkivdel, klasse, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt ved opprettelse av *arkivdel* eller *klasse*. Arves til underliggende enheter, men kan endres manuelt
   * - **Arv**
     - 
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Hjemmel kan f.eks. være Riksarkivarens bevarings- og kassasjons­vedtak.


Skjerming og gradering
~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M500**
   * - **Navn**
     - **tilgangsrestriksjon**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av at dokumentene som tilhører arkivenheten ikke er offentlig tilgjengelig i henhold til offentlighetsloven eller av en annen grunn
   * - **Arkivenhet**
     - arkivdel, klasse, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt ved valg fra liste, kan også registres automatisk
   * - **Arv**
     - Ja
   * - **Betingelser**
     - Obligatorisk verdi:
       
       - «Unntatt offentlighet»
       
       Valgfrie verdier:
       
       - «Personalsaker»
       - «Klientsaker»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M501**
   * - **Navn**
     - **skjermingshjemmel**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Henvisning til hjemmel (paragraf) i offentlighetsloven, sikkerhetsloven eller beskyttelsesinstruksen
   * - **Arkivenhet**
     - arkivdel, klasse, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk på grunnlag av valgt tilgangskode, kan overstyres manuelt
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M502**
   * - **Navn**
     - **skjermingMetadata**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av hvilke metadataelementer som skal skjermes.
   * - **Arkivenhet**
     - arkivdel, klasse, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt ved valg fra liste eller annen funksjonalitet, kan også registreres automatisk
   * - **Arv**
     - Ja
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Skjerming klasseID»
       - «Skjerming tittel klasse»
       - «Skjerming tittel mappe - unntatt første linje»
       - «Skjerming tittel mappe - utvalgte ord»
       - «Skjerming navn part i sak»
       - «Skjerming tittel registrering - unntatt første linje»
       - «Skjerming tittel registrering - utvalgte ord»
       - «Skjerming navn avsender»
       - «Skjerming navn mottaker»
       - «Skjerming tittel dokumentbeskrivelse»
       - «Skjerming merknadstekst»
       - «Midlertidig skjerming»
   * - **Kommentarer**
     - Skjerming av klasseID (arkivnøkkel, arkivkode) er f.eks. aktuelt når identifikasjonen er et fødselsnummer. Dersom utvalgte ord fra tittel skjermes, er metadataelementet *M025 offentligTittel* obligatorisk. Skjerming av navn på part i sak angis for *saksmappe*, skjerming av navn på avsender og mottaker angis for *journalpost*, skjerming av merknader angis for *saksmappe* og *journalpost*. Ved midlertidig skjerming skal alle metadata ovenfor skjermes, må bare brukes inntil skjermingsbehovet er vurdert.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M503**
   * - **Navn**
     - **skjermingDokument**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av at hele dokumentet eller deler av det må skjermes.
   * - **Arkivenhet**
     - arkivdel, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt ved valg fra liste eller annen funksjonalitet, kan også registreres automatisk
   * - **Arv**
     - Ja
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Skjerming av hele dokumentet»
       - «Skjerming av deler av dokumentet»
   * - **Kommentarer**
     - Dersom deler av dokumentet skal skjermes, må dokumentet også finnes i en variant. Her må all informasjon som skal skjermes, være «sladdet».

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M504**
   * - **Navn**
     - **skjermingsvarighet**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Antall år skjermingen skal opprettholdes.
   * - **Arkivenhet**
     - arkivdel, klasse, mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk knyttet til valg av tilgangskode, kan registreres manuelt.
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Tidspunktet for når skjermingsvarigheten starter å løpe, vil vanligvis være når journalposten ble registrert, men det skal være mulig med andre regler.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M505**
   * - **Navn**
     - **skjermingOpphoererDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Datoen skjermingen skal oppheves.
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Datoen beregnes automatisk på grunnlag av *M504 skjermingsvarighet*
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M506**
   * - **Navn**
     - **graderingskode**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av at dokumentene er gradert i henhold til sikkerhetsloven eller beskyttelsesinstruksen.
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres manuelt ved valg fra liste, kan også registres automatisk
   * - **Arv**
     - Ja
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Strengt hemmelig (sikkerhetsgrad)»
       - «Hemmelig (sikkerhetsgrad)»
       - «Konfidensielt (sikkerhetsgrad)»
       - «Begrenset (sikkerhetsgrad)»
       - «Fortrolig (beskyttelsesgrad)»
       - «Strengt fortrolig (beskyttelsesgrad)»
       
       Disse verdiene har et hierarkisk forhold seg i mellom
   * - **Kommentarer**
     - Dokumenter gradert «Strengt hemmelig», «Hemmelig», «Konfidensielt» og «Strengt fortrolig» skal føres i en egen journal som i sin helhet er unntatt fra innsyn.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M507**
   * - **Navn**
     - **elektroniskSignaturSikkerhetsnivaa**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av hvilket sikkerhetsnivå som ble brukt ved forsendelse og mottak av elektroniske dokumenter
   * - **Arkivenhet**
     - journalpost, dokumentbeskrivelse, dokumentobjekt
   * - **Kilde**
     - Registreres automatisk knyttet til funksjonalitet for elektronisk signatur
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Aktuelle verdier:
       
       - «Symmetrisk kryptert»
       - «Sendt med PKI/virksomhetssertifikat»
       - «Sendt med PKI/» person standard»-sertifikat»
       - «Sendt med PKI/» person høy»-sertifikat»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M508**
   * - **Navn**
     - **elektroniskSignaturVerifisert**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av om et dokument er mottatt med elektronisk signatur, og om signaturen er verifisert.
   * - **Arkivenhet**
     - journalpost, dokumentbeskrivelse, dokumentobjekt
   * - **Kilde**
     - Registreres automatisk knyttet til funksjonalitet for elektronisk signatur
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Signatur påført, ikke verifisert»
       - «Signatur påført og verifisert»
   * - **Kommentarer**
     - Dersom signaturen er verifisert, skal det logges hvem som verifiserte den og når det skjedde


Brukeradministrasjon og administrasjonsstruktur
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M580**
   * - **Navn**
     - **brukerNavn**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på bruker av en Noark 5-løsning
   * - **Arkivenhet**
     - Brukeradministrasjon inngår ikke i arkivstrukturen
   * - **Kilde**
     - Registreres manuelt av administrator
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Navn på bruker vil registreres mange steder i arkivstrukturen, f.eks. som saksansvarlig eller saksbehandler, og ved forskjellige typer logging.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M581**
   * - **Navn**
     - **brukerRolle**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Rollen til en bruker av en Noark 5-løsning.
   * - **Arkivenhet**
     - Brukeradministrasjon inngår ikke i arkivstrukturen
   * - **Kilde**
     - Registreres manuelt av administrator
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske verdier. Aktuelle verdier kan være:
       
       - «Arkivansvarlig»
       - «Arkivpersonale»
       - «Leder»
       - «Saksbehandler»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M582**
   * - **Navn**
     - **brukerstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til en bruker av en Noark 5-løsning.
   * - **Arkivenhet**
     - Brukeradministrasjon inngår ikke i arkivstrukturen
   * - **Kilde**
     - Registreres manuelt av administrator
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske verdier. Aktuelle verdier kan være:
       
       - «Ansatt»
       - «Sluttet»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M583**
   * - **Navn**
     - **administrativEnhetNavn**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på administrativ enhet
   * - **Arkivenhet**
     - Administrasjonsstrukturen inngår ikke i arkivstrukturen
   * - **Kilde**
     - Registreres manuelt av administrator
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - Navn på administrativ enhet vil registreres flere steder i arkivstrukturen, f.eks. sammen med saksansvarlig eller saksbehandler på saksmappe eller journalpost.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M584**
   * - **Navn**
     - **administrativEnhetsstatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Status til den administrative enheten
   * - **Arkivenhet**
     - Administrasjonsstrukturen inngår ikke i arkivstrukturen
   * - **Kilde**
     - Registreres manuelt av administrator
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Ingen obligatoriske verdier. Aktuelle verdier kan være:
       
       - «Aktiv enhet»
       - «Passiv enhet»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M585**
   * - **Navn**
     - **referanseOverordnetEnhet**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Referanse til enhet som er direkte overordnet denne enheten
   * - **Arkivenhet**
     - Administrasjonsstrukturen inngår ikke i arkivstrukturen
   * - **Kilde**
     - Registreres manuelt av administrator
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 


Logging av hendelser
~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M600**
   * - **Navn**
     - **opprettetDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når arkivenheten ble opprettet/registrert
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse, dokumentobjekt, også presedens
   * - **Kilde**
     - Registreres automatisk av systemet ved opprettelse av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M601**
   * - **Navn**
     - **opprettetAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som opprettet/registrerte arkivenheten
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse, dokumentobjekt
   * - **Kilde**
     - Registreres automatisk av systemet ved opprettelse av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M602**
   * - **Navn**
     - **avsluttetDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når arkivenheten ble avsluttet/lukket
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse og mappe
   * - **Kilde**
     - Registreres automatisk av systemet når enheten avsluttes
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres. Obligatorisk dersom arkivdelen er avsluttet.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M603**
   * - **Navn**
     - **avsluttetAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som avsluttet/lukket arkivenheten
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse og mappe
   * - **Kilde**
     - Registreres automatisk av systemet ved opprettelse av enheten
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres. Obligatorisk dersom arkivenheten er avsluttet.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M604**
   * - **Navn**
     - **arkivertDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når alle dokumentene som er tilknyttet registreringen ble arkivert
   * - **Arkivenhet**
     - registrering
   * - **Kilde**
     - Registreres automatisk ved utførelse av en funksjon som markerer at dokumentene er arkivert. For journalposter kan dette knyttes til endring av journalstatus.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - Arkivering innebærer at dokumentene blir «frosset», dvs. sperret for all videre redigering/endring

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M605**
   * - **Navn**
     - **arkivertAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som arkiverte dokumentet og frøs det for all videre redigering
   * - **Arkivenhet**
     - registrering
   * - **Kilde**
     - Registreres automatisk ved utførelse av en funksjon som markerer at dokumentene er arkivert. For journalposter kan dette knyttes til endring av journalstatus.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M609**
   * - **Navn**
     - **antallJournalposter**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Antall journalposter i rapporten
   * - **Arkivenhet**
     - Egne filer med journalutskrift for løpende og offentlig journal: loependeJournal.xml og offentligJournal.xml.
   * - **Kilde**
     - Registreres automatisk ved produksjon av avleveringsuttrekk
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M611**
   * - **Navn**
     - **merknadsdato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når merknaden ble registrert
   * - **Arkivenhet**
     - mappe, registrering og dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk av systemet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M612**
   * - **Navn**
     - **merknadRegistrertAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som har registrert merknaden
   * - **Arkivenhet**
     - mappe, registrering og dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk av systemet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M613**
   * - **Navn**
     - **slettetDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når et dokument ble slettet
   * - **Arkivenhet**
     - arkivdel, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk når en tidligere versjon eller en variant av et dokument slettes.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - Informasjon om sletting av dokumenter i produksjonsformat skal ikke avleveres. Sletting må ikke blandes sammen med kassasjon.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M614**
   * - **Navn**
     - **slettetAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som har utført en kontrollert kassasjon av dokumenter, eller sletting av versjoner, formater og varianter.
   * - **Arkivenhet**
     - arkivdel, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk når et dokument blir slettet
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - Sletting må ikke blandes sammen med kassasjon.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M615**
   * - **Navn**
     - **konvertertDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett for når et dokument ble konvertert fra et format til et annet
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk ved konvertering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M616**
   * - **Navn**
     - **konvertertAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Person eller system som har foretatt konverteringen
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk ved konvertering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M617**
   * - **Navn**
     - **avskrivningsdato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato et dokument ble avskrevet
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk nå avskrivning foretas
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M618**
   * - **Navn**
     - **avskrevetAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som har foretatt avskrivning
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk når avskrivning foretas
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M619**
   * - **Navn**
     - **avskrivningsmaate**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Måten en journalpost har blitt avskrevet på
   * - **Arkivenhet**
     - journalpost
   * - **Kilde**
     - Registreres automatisk når konvertering utføres.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Besvart med brev»
       - «Besvart med e-post»
       - «Besvart på telefon»
       - «Tatt til etterretning»
       - «Tatt til orientering»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M620**
   * - **Navn**
     - **tilknyttetDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Datoen et dokument ble knyttet til en registrering
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk nå tilknytning foretas
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M621**
   * - **Navn**
     - **tilknyttetAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som knyttet et dokument til en registrering
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk når tilknytning foretas
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M622**
   * - **Navn**
     - **verifisertDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato en elektronisk signatur ble verifisert
   * - **Arkivenhet**
     - journalpost, dokumentbeskrivelse, dokumentobjekt
   * - **Kilde**
     - Registreres automatisk når verifisering utføres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M623**
   * - **Navn**
     - **verifisertAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som har verifisert en elektronisk signatur
   * - **Arkivenhet**
     - journalpost, dokumentbeskrivelse, dokumentobjekt
   * - **Kilde**
     - Registreres automatisk når verifisering utføres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M624**
   * - **Navn**
     - **graderingsdato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når et dokument ble gradert
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk ved gradering
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M625**
   * - **Navn**
     - **gradertAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som foretok graderingen
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk ved gradering
   * - **Arv**
     - Ja
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M626**
   * - **Navn**
     - **nedgraderingsdato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når et dokument ble nedgradert
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk ved nedgradering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M627**
   * - **Navn**
     - **nedgradertAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som foretok nedgraderingen
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk ved nedgradering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M628**
   * - **Navn**
     - **presedensGodkjentDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett for når presedensen er godkjent
   * - **Arkivenhet**
     - saksmappe eller journalpost
   * - **Kilde**
     - Registreres automatisk dersom det finnes funksjonalitet for å godkjenne presedenser
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M629**
   * - **Navn**
     - **presedensGodkjentAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som har godkjent presedensen
   * - **Arkivenhet**
     - saksmappe eller journalpost
   * - **Kilde**
     - Registreres automatisk dersom det finnes funksjonalitet for å godkjenne presedenser
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M630**
   * - **Navn**
     - **kassertDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når kassasjonen ble utført
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk når kassasjon utføres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M631**
   * - **Navn**
     - **kassertAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som har utført kassasjonen
   * - **Arkivenhet**
     - dokumentbeskrivelse
   * - **Kilde**
     - Registreres automatisk når kassasjon utføres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - 


Logging av arbeidsflyt og saksfordeling
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M660**
   * - **Navn**
     - **flytTil**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Person som har mottatt for godkjennelse et dokument som har vært sendt på flyt
   * - **Arkivenhet**
     - journalpost, arkivnotat
   * - **Kilde**
     - Registreres automatisk av funksjonalitet knyttet til arbeidsflyt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M661**
   * - **Navn**
     - **flytMottattDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett et dokument på flyt ble mottatt
   * - **Arkivenhet**
     - journalpost, arkivnotat
   * - **Kilde**
     - Registreres automatisk av funksjonalitet knyttet til arbeidsflyt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne endres.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M662**
   * - **Navn**
     - **flytSendtDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett et dokument på flyt ble sendt videre
   * - **Arkivenhet**
     - journalpost, arkivnotat
   * - **Kilde**
     - Registreres automatisk av funksjonalitet knyttet til arbeidsflyt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne endres.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M663**
   * - **Navn**
     - **flytStatus**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Godkjennelse/ikke godkjennelse av dokumentet som er sendt på flyt
   * - **Arkivenhet**
     - journalpost, arkivnotat
   * - **Kilde**
     - Registreres automatisk av funksjonalitet knyttet til arbeidsflyt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Anbefalte verdier:
       
       - «Godkjent»
       - «Ikke godkjent»
       - «Sendt tilbake til saksbehandler med kommentarer»
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M664**
   * - **Navn**
     - **flytMerknad**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Merknad eller kommentar til et dokument som er sendt på flyt
   * - **Arkivenhet**
     - journalpost, arkivnotat
   * - **Kilde**
     - Registreres manuelt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M665**
   * - **Navn**
     - **flytFra**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Person som har sendt et dokument på flyt
   * - **Arkivenhet**
     - journalpost, arkivnotat
   * - **Kilde**
     - Registreres automatisk av funksjonalitet knyttet til arbeidsflyt
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne endres.
   * - **Kommentarer**
     - 


Logging av endringer
~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M680**
   * - **Navn**
     - **referanseArkivenhet**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Referanse til arkivenheten (systemID) som inneholder metadata­elementet som ble endret
   * - **Arkivenhet**
     - Filen endringslogg.xml
   * - **Kilde**
     - Registreres automatisk ved endring av metadata
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Må inneholde gyldig systemID for aktuell arkivenhet
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M681**
   * - **Navn**
     - **referanseMetadata**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navnet på metadataelementet som ble endret
   * - **Arkivenhet**
     - Filen endringslogg.xml
   * - **Kilde**
     - Registreres automatisk ved endring av metadata
   * - **Arv**
     - 
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M682**
   * - **Navn**
     - **endretDato**
   * - **Datatype**
     - Dato og klokkeslett
   * - **Definisjon**
     - Dato og klokkeslett når arkivenheten ble oppdatert eller et metadataelement sist ble endret
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse samt filen endringslogg.xml
   * - **Kilde**
     - Registreres automatisk ved oppdatering av en arkivenhet eller endring av metadata
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Erstatter M632 oppdatertDato

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M683**
   * - **Navn**
     - **endretAv**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på person som oppdaterte en arkivenhet eller endret metadata
   * - **Arkivenhet**
     - arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse samt filen endringslogg.xml
   * - **Kilde**
     - Registreres automatisk ved oppdatering av en arkivenhet eller endring av metadata
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Skal ikke kunne endres
   * - **Kommentarer**
     - Erstatter M633 oppdatertAv

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M684**
   * - **Navn**
     - **tidligereVerdi**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Innholdet i metadataelementet før det ble endret
   * - **Arkivenhet**
     - Filen endringslogg.xml
   * - **Kilde**
     - Registreres automatisk ved endring av metadata
   * - **Arv**
     - 
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M685**
   * - **Navn**
     - **nyVerdi**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Det nye innholdet i metadataelementet
   * - **Arkivenhet**
     - Filen endringslogg.xml
   * - **Kilde**
     - Registreres automatisk ved endring av metadata
   * - **Arv**
     - 
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 


Tekniske metadata
~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M700**
   * - **Navn**
     - **variantformat**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Angivelse av hvilken variant et dokument forekommer i
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk når dokumentet arkiveres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Obligatoriske verdier:
       
       - «Produksjonsformat»
       - «Arkivformat»
       - «Dokument hvor deler av innholdet er skjermet»
       
       Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M701**
   * - **Navn**
     - **format**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Dokumentets format
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk når dokumentet arkiveres
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - Verdier hentes fra PRONOM og Arkivverket, nærmere beskrevet i del 2.7, Dokumentbeskrivelse og dokumentobjekt.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M702**
   * - **Navn**
     - **formatDetaljer**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Nærmere spesifikasjon av dokuments format, f.eks. informasjon om komprimering
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M705**
   * - **Navn**
     - **sjekksum**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - En verdi som beregnes ut fra innholdet i dokumentet, og som dermed gir integritetssikring til dokumentets innhold
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Påføres automatisk ved mottak eller i forbindelse med eksport for avlevering.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres. Sjekksummen skal være heksadesimal uten noen formatteringstegn.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M706**
   * - **Navn**
     - **sjekksumAlgoritme**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Algoritmen som er brukt for å beregne sjekksummen
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk mottak eller i forbindelse med eksport for avlevering.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres. Algoritmen som skal brukes inntil videre er SHA256.
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M707**
   * - **Navn**
     - **filstoerrelse**
   * - **Datatype**
     - Heltall
   * - **Definisjon**
     - Størrelsen på fila i antall bytes.
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk i forbindelse med eksport for avlevering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M711**
   * - **Navn**
     - **virksomhetsspesifikkeMetadata**
   * - **Datatype**
     - Vilkårlig struktur
   * - **Definisjon**
     - Et overordnet metadataelement som kan inneholde egendefinerte metadata. Disse metadataene må da være spesifisert i et eller flere XML-skjema.
   * - **Arkivenhet**
     - mappe, registrering, dokumentbeskrivelse, part
   * - **Kilde**
     - 
   * - **Arv**
     - 
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M712**
   * - **Navn**
     - **konvertertFraFormat**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Formatet dokumentet hadde før det ble konvertert
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk ved konvertering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - Dette vil vanligvis være produksjonsformatet, men kan også være et annet arkivformat. Bruker samme verdier som M701 format.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M713**
   * - **Navn**
     - **konvertertTilFormat**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Formatet dokumentet fikk etter konvertering
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk ved konvertering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - Bruker samme verdier som M701 format.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M714**
   * - **Navn**
     - **konverteringsverktoey**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Navn på det IT-verktøyet som ble brukt til å foreta konverteringen
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M715**
   * - **Navn**
     - **konverteringskommentar**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Kommentarer til konverteringen
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - 
   * - **Arv**
     - Nei
   * - **Betingelser**
     - 
   * - **Kommentarer**
     - 

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M716**
   * - **Navn**
     - **mimeType**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Dokumentets MIME-type
   * - **Arkivenhet**
     - dokumentobjekt
   * - **Kilde**
     - Registreres automatisk når et dokument overføres til arkivet eller settes av arkivklient.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres
   * - **Kommentarer**
     - MIME-type for bruk når fil overføres via for eksempel HTTP og SMTP.  MIME-typer er definert i IETF RFC 2046 og en katalog over offisielle verdier vedlikeholdes av Internet Assigned Numbers Authority (IANA).  Merk at en PRONOM-kode kan ha flere kjente MIME-typer og en MIME-type kan være koblet til flere PRONOM-koder.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M717**
   * - **Navn**
     - **konvertertFraSjekksum**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - En verdi som beregnes ut fra innholdet i dokumentet, og som dermed gir integritetssikring til dokumentets innhold
   * - **Arkivenhet**
     - konvertering
   * - **Kilde**
     - Påføres automatisk ved konvertering.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres. Sjekksummen skal være heksadesimal uten noen formatteringstegn.
   * - **Kommentarer**
     - Bruker samme verdier som M705 sjekksum.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M718**
   * - **Navn**
     - **konvertertFraSjekksumAlgoritme**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Algoritmen som er brukt for å beregne konvertertFraSjekksum
   * - **Arkivenhet**
     - konvertering
   * - **Kilde**
     - Registreres automatisk i forbindelse ved konvertering
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres.  Kopi av algoritmen til dokumentobjekt for kildefil ved konvertering.
   * - **Kommentarer**
     - Bruker samme verdier som M706 sjekksumAlgoritme.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M719**
   * - **Navn**
     - **konvertertTilSjekksum**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - En verdi som beregnes ut fra innholdet i dokumentet, og som dermed gir integritetssikring til dokumentets innhold
   * - **Arkivenhet**
     - konvertering
   * - **Kilde**
     - Påføres automatisk ved konvertering.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres. Sjekksummen skal være heksadesimal uten noen formatteringstegn.
   * - **Kommentarer**
     - Bruker samme verdier som M705 sjekksum.

.. list-table::
   :widths: 2 6
   :header-rows: 0

   * - **Nr**
     - **M720**
   * - **Navn**
     - **konvertertFraSjekksumAlgoritme**
   * - **Datatype**
     - Tekststreng
   * - **Definisjon**
     - Algoritmen som er brukt for å beregne konvertertTilSjekksum
   * - **Arkivenhet**
     - konvertering
   * - **Kilde**
     - Registreres automatisk i forbindelse med konvertering.
   * - **Arv**
     - Nei
   * - **Betingelser**
     - Kan ikke endres.  Kopi av algoritmen til dokumentobjekt for målfil ved konvertering.
   * - **Kommentarer**
     - Bruker samme verdier som M706 sjekksumAlgoritme.

