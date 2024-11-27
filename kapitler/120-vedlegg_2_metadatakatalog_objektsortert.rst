Metadata gruppert på objekter
=============================

I denne oversikten blir metadata i Noark 5 gruppert på objekter. Tabellene nedenfor er utgangspunktet for XML-skjemaene som spesifiserer avleveringsformatet. De fleste objektene nedenfor inngår i arkivstrukturen, og skal nøstes inn i én samlet, hierarkisk struktur.

Hver arkivenhet i arkivstrukturen skal ha en *systemID*. Det betyr altså at arkiv, arkivdel, klassifikasjonssystem, klasse, mappe, registrering, dokumentbeskrivelse og dokumentobjekt har en systemID. Andre objekter, som part og korrespondansepart, skal grupperes inn i den arkivenheten de tilhører, og systemID er derfor ikke nødvendig når denne informasjonen avleveres.

Mange av metadataelementene i Noark 5 vil være identiske med attributter i Noark 4. Referanse fra metadataelement til attributt er derfor tatt med i tabellene nedenfor, og kan gi nyttig informasjon om bakoverkompatibilitet. Dersom attributtet angis i parentes, betyr det at det ikke er direkte samsvar mellom metadata og attributt. Attributtene i Noark 4 kan f.eks. være identifikatorer (nøkkelfelter) som brukes for oppslag i hjelpetabeller. I Noark 5 skal ingen slike nøkkelfelter eller kodeverdier avleveres. Alle koder skal være erstattet med mest mulig selvforklarende tekst. Journalposttype (Noark dokumenttype i Noark 4) skal f.eks. avleveres som *«Inngående dokument»* og *«Utgående dokument»*, og ikke med kodene I og U.

Forklaring på metadatatabellen i dette vedlegget:

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 0

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**

**Nr.:**
    Henvisning til det entydige nummeret i metadatakatalogen (eget vedlegg)

**Navn:**
    Navn som skal brukes ved avlevering og ved eventuell annen eksport

**Noark 4:**
    Kortnavnet på attributtet som inneholdt tilsvarende metadataelement i Noark 4

**Forek.:**
    Forekomst, dvs. hvor mange ganger metadataelementet kan gjentas
    innenfor samme objekt. I tabellene nedenfor er det oppgitt
    forekomst ved avlevering. Følgende koder brukes:

    **1** Skal forekomme én gang (obligatorisk)

    **1-M** Skal forekomme én gang, kan forekomme mange ganger (obligatorisk)

    **0-1** Kan forekomme én gang (betinget obligatorisk eller valgfritt)

    **0-M** Kan forekomme mange ganger (betinget obligatorisk eller valgfritt)

**Avl.:**
    Kode **A** angir at metadataelementet skal inngå i en avlevering
    dersom det inneholder en verdi. Blankt felt betyr at det ikke skal
    avleveres, men er likevel med fordi det kan være aktuelt å
    eksportere det i andre sammenhenger

**Datatype:**
    I avleveringsuttrekk skilles det mellom følgende datatyper:

    **Tekststreng**

    **Heltall**

    **Dato**

    **Dato og klokkeslett**

    **Vilkårlig struktur** når det er snakk om virksomhetsspesifikke metadata.

Dersom det dreier seg om en referanse til en ID, vil navnet på denne IDen oppgis i dette feltet.

For hvert objekt er det angitt hvilket overordnet objekt det inngår i (grupperes inn i), med antall forekomster av underordnet og overordnet, som følger:

<antall underordnet> forekomster av <underordnet objekt> grupperes inn i <antall overordnet> forekomster av <overordnet objekt>.

I avleveringsformatet er det ikke nødvendig å skille mellom flere enn datatypene ovenfor. Det stilles heller ikke krav til maksimumslengde i avleveringsformatet. Men ved eksport av data som skal importeres inn i et nytt system – f.eks. ved migrering av data fra en Noark 5-løsning til en annen – vil det være aktuelt å sette krav både til flere datatyper (f.eks. ja/nei og desimaltall) og til maksimumslengde.

Metadata som inngår i arkivstrukturen
-------------------------------------

Metadataene nedenfor skal nøstes inn i hverandre i én samlet, hierarkisk struktur med navn **arkivstruktur.xml** i innleveringspakken. Navnene i kursiv skal brukes som objektnavn, dvs. navn på de overordnede XML-elementene som omslutter objektet. Noen av navnene vil være attributter til XML-elementer.

Metadata for *arkiv*
~~~~~~~~~~~~~~~~~~~~

Øverste nivå i strukturen.

1-M forekomster av *arkiv (underarkiv)* grupperes inn i 0-1 forekomster av *arkiv*.

Merk: En og bare en av objekttypene *arkiv* eller *arkivdel* grupperes inn i *arkiv*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - AR.ARKIV
   - 1
   - A
   - Tekststreng
 * - M020
   - tittel
   - AR.BETEGN
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - (AR.MERKNAD)
   - 0-1
   - A
   - Tekststreng
 * - M050
   - arkivstatus
   - 
   - 0-1
   - A
   - Tekststreng
 * - M300
   - dokumentmedium
   - 
   - 0-1
   - A
   - Tekststreng
 * - M301
   - oppbevaringssted
   - 
   - 0-M
   - 
   - Tekststreng
 * - M600
   - opprettetDato
   - AR.FRADATO
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - AR.TILDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M603
   - avsluttetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *arkivskaper*
~~~~~~~~~~~~~~~~~~~~~~~~~~

1-M forekomster av *arkivskaper* grupperes inn i 1-M forekomster av *arkiv*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M006
   - arkivskaperID
   - (AR.ABASEID)
   - 1
   - A
   - Tekststreng
 * - M023
   - arkivskaperNavn
   - AR.SKAPER
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *arkivdel*
~~~~~~~~~~~~~~~~~~~~~~~

1-M forekomster av *arkivdel* grupperes inn i 1 forekomst av *arkiv*.

Merk: En og bare en av objekttypene *arkiv* eller *arkivdel* grupperes inn i *arkiv*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - AD.ARKDEL
   - 1
   - A
   - Tekststreng
 * - M020
   - tittel
   - AD.BETEGN
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng
 * - M051
   - arkivdelstatus
   - AD.ASTATUS
   - 1
   - A
   - Tekststreng
 * - M300
   - dokumentmedium
   - AD.PAPIR
   - 0-1
   - A
   - Tekststreng
 * - M301
   - oppbevaringssted
   - AD.LOK
   - 0-M
   - 
   - Tekststreng
 * - M600
   - opprettetDato
   - AD.FRADATO
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - AD.TILDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M603
   - avsluttetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M107
   - arkivperiodeStartDato
   - AP.FRADATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M108
   - arkivperiodeSluttDato
   - AP.TILDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M202
   - referanseForloeper
   - 
   - 0-1
   - A
   - arkivdel.systemID
 * - M203
   - referanseArvtaker
   - AD.FORTS
   - 0-1
   - A
   - arkivdel.systemID
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *klassifikasjonssystem*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *klassifikasjonssystem* grupperes inn i 1-M forekomster av *arkivdel*.

Merk: Bare en av objekttypene *klassifikasjonssystem*, *mappe* eller *registrering* kan grupperes inn i *arkivdel*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - OP.ORDNPRI
   - 1
   - A
   - Tekststreng
 * - M086
   - klassifikasjonstype
   - OP.TYPE
   - 0-1
   - A
   - Tekststreng
 * - M020
   - tittel
   - OP.BETEGN
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng
 * - M600
   - opprettetDato
   - OP.FRADATO
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - OP.TILDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M603
   - avsluttetAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *klasse*
~~~~~~~~~~~~~~~~~~~~~

1-M forekomster av *klasse* grupperes inn i 1 forekomst av *klassifikasjonssystem*.

0-M forekomster av *klasse (underklasse)* grupperes inn i 0-1 forekomster av *klasse*.

Merk: Bare en av objekttypene *klasse*, *mappe* eller *registrering* kan grupperes inn i *klasse*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - 
   - 1
   - A
   - Tekststreng
 * - M002
   - klasseID
   - OV.ORDNVER
   - 1
   - A
   - Tekststreng
 * - M020
   - tittel
   - OV.BESKR
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng
 * - M022
   - noekkelord
   - EA.ORD
   - 0-M
   - A
   - Tekststreng
 * - M600
   - opprettetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M603
   - avsluttetAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *mappe*
~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *mappe* grupperes inn i 0-1 forekomster av *klasse*.

0-M forekomster av *mappe (undermappe)* grupperes inn i 0-1 forekomster av *mappe*.

0-M forekomster av *mappe* grupperes inn i 1 forekomst av *arkivdel*.

Merk: Bare en av objekttypene *klasse*, *mappe* eller *registrering* kan grupperes inn i *klasse*.

Merk: Bare en av objekttypene *mappe* eller *registrering* kan grupperes inn i *mappe*.

Merk: Bare en av objekttypene *klassifikasjonssystem*, *mappe* eller *registrering* kan grupperes inn i *arkivdel*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - SA.ID
   - 1
   - A
   - Tekststreng
 * - M003
   - mappeID
   - (SA.SAAR+SA. SEKNR)
   - 1
   - A
   - Tekststreng
 * - M020
   - tittel
   - SA.TITTEL
   - 1
   - A
   - Tekststreng
 * - M025
   - offentligTittel
   - SA.OFFTITTEL
   - 0-1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng
 * - M022
   - noekkelord
   - 
   - 0-M
   - A
   - Tekststreng
 * - M300
   - dokumentmedium
   - SA.PAPIR
   - 0-1
   - A
   - Tekststreng
 * - M301
   - oppbevaringssted
   - 
   - 0-M
   - 
   - Tekststreng
 * - M600
   - opprettetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M603
   - avsluttetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M208
   - referanseArkivdel
   - SA.ARKDEL
   - 0-M
   - A
   - arkivdel.systemID
 * - M209
   - referanseSekundaerKlassifikasjon
   - (KL.ORDNVER)
   - 0-M
   - A
   - klasse.systemID
 * - M016
   - eksternReferanse
   - AM.REF
   - 0-M
   - Tekststreng
   - Ekstern referanse på innkommende dokumenter.
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *saksmappe*
~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *mappe*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M011
   - saksaar
   - SA.SAAR
   - 1
   - A
   - Heltall
 * - M012
   - sakssekvensnummer
   - SA.SEKNR
   - 1
   - A
   - Heltall
 * - M100
   - saksdato
   - SA.DATO
   - 1
   - A
   - Dato og klokkeslett
 * - M305
   - administrativEnhet
   - (SA.ADMID)
   - 1
   - A
   - Tekststreng
 * - M306
   - saksansvarlig
   - (SA.ANSVID)
   - 1
   - A
   - Tekststreng
 * - M308
   - journalenhet
   - (SA.JENHET)
   - 0-1
   - A
   - Tekststreng
 * - M052
   - saksstatus
   - SA.STATUS
   - 1
   - A
   - Tekststreng
 * - M106
   - utlaantDato
   - SA.UTLDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M309
   - utlaantTil
   - (SA.UTLTIL)
   - 0-1
   - 
   - Tekststreng

Metadata for *moetemappe*
~~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *mappe*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M008
   - moetenummer
   - MO.NR
   - 1
   - A
   - Tekststreng
 * - M370
   - utvalg
   - (MO.UTVID)
   - 1
   - A
   - Tekststreng
 * - M102
   - moetedato
   - MO.DATO
   - 1
   - A
   - Dato og klokkeslett
 * - M371
   - moetested
   - MO.STED
   - 0-1
   - A
   - Tekststreng
 * - M221
   - referanseForrigeMoete
   - MO.FORTS
   - 0-1
   - A
   - mappe.systemID
 * - M222
   - referanseNesteMoete
   - 
   - 0-1
   - A
   - mappe.systemID

Metadata for *moetedeltaker*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *moetedeltaker* grupperes inn i 1-M forekomst av *moetemappe*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M372
   - moetedeltakerNavn
   - (UM.PNID)
   - 1
   - A
   - Tekststreng
 * - M373
   - moetedeltakerFunksjon
   - (UM.FUNK)
   - 0-1
   - A
   - Tekststreng

Metadata for *registrering*
~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *registrering* grupperes inn i 1 forekomst av *mappe*.

0-M forekomster av *registrering* grupperes inn i 1 forekomst av *klasse*.

0-M forekomster av *registrering* grupperes inn i 1 forekomst av *arkivdel*.

Merk: Bare en av objekttypene *mappe* eller *registrering* kan grupperes inn i *mappe*.

Merk: Bare en av objekttypene *klasse*, *mappe* eller *registrering* kan grupperes inn i *klasse*.

Merk: Bare en av objekttypene *klassifikasjonssystem*, *mappe* eller *registrering* kan grupperes inn i *arkivdel*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - JP.ID
   - 1
   - A
   - Tekststreng
 * - M600
   - opprettetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M604
   - arkivertDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M605
   - arkivertAv
   - 
   - 1
   - A
   - Tekststreng
 * - M208
   - referanseArkivdel
   - JP.ARKDEL
   - 0-M
   - A
   - arkivdel.systemID
 * - M004
   - registreringsID
   - (SA.SAAR+ SA.SEKNR+ JP.POSTNR)
   - 0-1
   - A
   - Tekststreng
 * - M020
   - tittel
   - JP.INNHOLD
   - 1
   - A
   - Tekststreng
 * - M025
   - offentligTittel
   - JP.OFFINNHOLD
   - 0-1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng
 * - M022
   - noekkelord
   - 
   - 0-M
   - A
   - Tekststreng
 * - M024
   - forfatter
   - 
   - 0-M
   - A
   - Tekststreng
 * - M300
   - dokumentmedium
   - JP.PAPIR
   - 0-1
   - A
   - Tekststreng
 * - M301
   - oppbevaringssted
   - 
   - 0-M
   - 
   - Tekststreng
 * - M209
   - referanseSekundaerKlassifikasjon
   - (KL.ORDNVER)
   - 0-M
   - A
   - klasse.systemID
 * - M016
   - eksternReferanse
   - AM.REF
   - 0-M
   - Tekststreng
   - Ekstern referanse på innkommende dokumenter.
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *korrespondansepart*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *korrespondansepart* grupperes inn i 0-M forekomster av *registrering*.

Merk: Kun ett av feltene personID og organisasjonsID kan ha verdi.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   -
   - 1
   - A
   - Tekststreng
 * - M087
   - korrespondanseparttype
   - (AM.IHTYPE, AM.KOPIMOT, AM.GRUPPE MOT)
   - 1
   - A
   - Tekststreng
 * - M400
   - korrespondansepartNavn
   - AM.NAVN
   - 1
   - A
   - Tekststreng
 * - M406
   - postadresse
   - AM.ADRESSE
   - 0-M
   - A
   - Tekststreng
 * - M407
   - postnummer
   - AM.POSTNR
   - 0-1
   - A
   - Tekststreng
 * - M408
   - poststed
   - AM.POSTSTED
   - 0-1
   - A
   - Tekststreng
 * - M409
   - land
   - 
   - 0-1
   - A
   - Tekststreng
 * - M410
   - epostadresse
   - AM.EPOSTADR
   - 0-1
   - A
   - Tekststreng
 * - M411
   - telefonnummer
   - 
   - 0-M
   - A
   - Tekststreng
 * - M412
   - kontaktperson
   - 
   - 0-1
   - A
   - Tekststreng
 * - M305
   - administrativEnhet
   - (AM.ADMID)
   - 0-1
   - A
   - Tekststreng
 * - M307
   - saksbehandler
   - (AM.SBHID)
   - 0-1
   - A
   - Tekststreng
 * - M048
   - personID
   - 
   - 0-M
   - A
   - Tekststreng
 * - M049
   - organisasjonsID
   - 
   - 0-1
   - A
   - Tekststreng
 * - M711
   - virksomhetsspesifikkeMetadata
   -
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *journalpost*
~~~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *registrering*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M013
   - journalaar
   - JP.JAAR
   - 1
   - A
   - Heltall
 * - M014
   - journalsekvensnummer
   - JP.SEKNR
   - 1
   - A
   - Heltall
 * - M015
   - journalpostnummer
   - JP.JPOSTNR
   - 1
   - A
   - Heltall
 * - M082
   - journalposttype
   - JP.NDOKTYPE
   - 1
   - A
   - Tekststreng
 * - M053
   - journalstatus
   - JP.STATUS
   - 1
   - A
   - Tekststreng
 * - M101
   - journaldato
   - JP.JDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M103
   - dokumentetsDato
   - JP.DOKDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M104
   - mottattDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M105
   - sendtDato
   - JP.EKSPDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M109
   - forfallsdato
   - JP.FORFDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M110
   - offentlighetsvurdertDato
   - JP.OVDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M304
   - antallVedlegg
   - JP.ANTVED
   - 0-1
   - A
   - Heltall
 * - M106
   - utlaantDato
   - JP.UTLDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M309
   - utlaantTil
   - (JP.UTLTIL)
   - 0-1
   - 
   - Tekststreng
 * - M308
   - journalenhet
   - (AM.JENHET)
   - 0-1
   - A
   - Tekststreng

Metadata for *avskrivning*
~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *avskrivning* grupperes inn i 1-M forekomster av *journalpost*.

Merk: Grupperes inn i den journalposten som avskrives.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M617
   - avskrivningsdato
   - AM.AVSKDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M618
   - avskrevetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M619
   - avskrivningsmaate
   - AM.AVSKM
   - 1
   - A
   - Tekststreng
 * - M215
   - referanseAvskrivesAvJournalpost
   - AM.AVSKAV
   - 0-1
   - A
   - registrering.systemID
 * - M231
   - referanseAvskrivesAvKorrespondansepart
   -
   - 0-1
   - A
   - korrespondansepart.systemID

Metadata for *arkivnotat*
~~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *registrering*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M103
   - dokumentetsDato
   - JP.DOKDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M104
   - mottattDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M105
   - sendtDato
   - JP.EKSPDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M109
   - forfallsdato
   - JP.FORFDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M110
   - offentlighetsvurdertDato
   - JP.OVDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M304
   - antallVedlegg
   - JP.ANTVED
   - 0-1
   - A
   - Heltall
 * - M106
   - utlaantDato
   - JP.UTLDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M309
   - utlaantTil
   - (JP.UTLTIL)
   - 0-1
   - 
   - Tekststreng

Metadata for *dokumentflyt*
~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *dokumentflyt* grupperes inn i 1 forekomst av *journalpost*.

0-M forekomster av *dokumentflyt* grupperes inn i 1 forekomst av *arkivnotat*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M660
   - flytTil
   - 
   - 1
   - A
   - Tekststreng
 * - M665
   - flytFra
   - 
   - 1
   - A
   - Tekststreng
 * - M661
   - flytMottattDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M662
   - flytSendtDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M663
   - flytStatus
   - 
   - 1
   - A
   - Tekststreng
 * - M664
   - flytMerknad
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *moeteregistrering*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *registrering*

.. list-table::
   :widths: 2 11 5 2 1 8
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M085
   - moeteregistreringstype
   - MD.DOKTYPE
   - 1
   - A
   - Tekststreng
 * - M088
   - moetesakstype
   - 
   - 0-1
   - A
   - Tekststreng
 * - M055
   - moeteregistreringsstatus
   - MD.STATUS
   - 0-1
   - A
   - Tekststreng
 * - M305
   - administrativEnhet
   - (MD.ADMID)
   - 1
   - A
   - Tekststreng
 * - M307
   - saksbehandler
   - (MD.SBHID)
   - 1
   - A
   - Tekststreng
 * - M223
   - referanseTilMoeteregistrering
   - 
   - 0-M
   - A
   - registrering.systemID
 * - M224
   - referanseFraMoeteregistrering
   - 
   - 0-M
   - A
   - registrering.systemID

Metadata for *dokumentbeskrivelse*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *dokumentbeskrivelse* grupperes inn i 1-M forekomster av *registrering*.

Merk: En *dokumentbeskrivelse* kan være knyttet til mer enn én enkelt *registrering*. Det kan blant annet bety at et dokument er hoveddokument i en journalpost og vedlegg i en annen.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - DB.DOKID
   - 1
   - A
   - Tekststreng
 * - M083
   - dokumenttype
   - DB.KATEGORI
   - 1
   - A
   - Tekststreng
 * - M054
   - dokumentstatus
   - DB.STATUS
   - 1
   - A
   - Tekststreng
 * - M020
   - tittel
   - DB.TITTEL
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng
 * - M024
   - forfatter
   - (DB.UTARBAV)
   - 0-M
   - A
   - Tekststreng
 * - M600
   - opprettetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M300
   - dokumentmedium
   - DB.PAPIR
   - 0-1
   - A
   - Tekststreng
 * - M301
   - oppbevaringssted
   - DB.LOKPAPIR
   - 0-1
   - 
   - Tekststreng
 * - M016
   - eksternReferanse
   - AM.REF
   - 0-M
   - Tekststreng
   - Ekstern referanse på innkommende dokumenter.
 * - M208
   - referanseArkivdel
   - JP.ARKDEL
   - 0-M
   - A
   - arkivdel.systemID
 * - M217
   - tilknyttetRegistreringSom
   - DL.TYPE
   - 1
   - A
   - Tekststreng
 * - M007
   - dokumentnummer
   - DL.RNR
   - 1
   - A
   - Heltall
 * - M620
   - tilknyttetDato
   - DL.TKDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M621
   - tilknyttetAv
   - (DL.TKAV)
   - 1
   - A
   - Tekststreng
 * - M711
   - virksomhetsspesifikkeMetadata
   -
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *sletting*
~~~~~~~~~~~~~~~~~~~~~~~

0-1 forekomster av *sletting* grupperes inn i 0-M forekomster av *dokumentbeskrivelse*.

Merk: Angir at dokumentobjektet som refererer til en eldre versjon av et opprinnelig arkivert dokument, eller en arkivert variant av dokumentet, er blitt slettet. Sletting av produksjonsformater skal ikke tas med i en avlevering.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M089
   - slettingstype
   - 
   - 1
   - A
   - Tekststreng
 * - M613
   - slettetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M614
   - slettetAv
   - 
   - 1
   - A
   - Tekststreng

Metadata for *dokumentobjekt*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *dokumentobjekt* grupperes inn i 1 forekomst av *dokumentbeskrivelse*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - 
   - 1
   - A
   - Tekststreng
 * - M005
   - versjonsnummer
   - VE.VERSJON
   - 1
   - A
   - Heltall
 * - M700
   - variantformat
   - (VE.VARIANT)
   - 1
   - A
   - Tekststreng
 * - M701
   - format
   - (VE.DOK FORMAT)
   - 1
   - A
   - Tekststreng
 * - M702
   - formatDetaljer
   - LF.BESKRIV
   - 0-1
   - A
   - Tekststreng
 * - M600
   - opprettetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M218
   - referanseDokumentfil
   - VE.FILREF
   - 1
   - A
   - Tekststreng (filkatalogstruktur + filnavn)
 * - M705
   - sjekksum
   - 
   - 1
   - A
   - Tekststreng
 * - M706
   - sjekksumAlgoritme
   - 
   - 1
   - A
   - Tekststreng
 * - M707
   - filstoerrelse
   - 
   - 1
   - A
   - Heltall
 * - M716
   - mimeType
   -
   - 0-1
   - A
   - Tekststreng
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *konvertering*
~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *konvertering* grupperes inn i 1 forekomst av *dokumentobjekt*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M615
   - konvertertDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M616
   - konvertertAv
   - 
   - 1
   - A
   - Tekststreng
 * - M712
   - konvertertFraFormat
   - 
   - 1
   - A
   - Tekststreng
 * - M713
   - konvertertTilFormat
   - 
   - 1
   - A
   - Tekststreng
 * - M717
   - konvertertFraSjekksum
   -
   - 0-1
   - A
   - Tekststreng
 * - M718
   - konvertertFraSjekksumAlgoritme
   -
   - 0-1
   - A
   - Tekststreng
 * - M719
   - konvertertTilSjekksum
   -
   - 0-1
   - A
   - Tekststreng
 * - M720
   - konvertertTilSjekksumAlgoritme
   -
   - 0-1
   - A
   - Tekststreng
 * - M714
   - konverteringsverktoey
   - 
   - 0-1
   - A
   - Tekststreng
 * - M715
   - konverteringskommentar
   - 
   - 0-1
   - A
   - Tekststreng

Metadata som kan grupperes inn i flere arkivenheter
---------------------------------------------------

Metadata for *kryssreferanse*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *kryssreferanse* grupperes inn i 0-1 forekomster av *klasse*.

0-M forekomster av *kryssreferanse* grupperes inn i 0-1 forekomster av *mappe*.

0-M forekomster av *kryssreferanse* grupperes inn i 0-1 forekomster av *registrering*.

Merk: En forekomst av *kryssreferanse* grupperes inn i en og bare en forekomst av *klasse*, *mappe* eller *registrering*.

Merk: Referansen kan gå fra en *klasse* til en annen *klasse*, fra en *mappe* til en annen *mappe*, fra en *registrering* til en annen *registrering*, fra en *mappe* til en *registrering* og fra en *registrering* til en *mappe*. Kryssreferansen vil også omfatte spesialiseringer av mapper. En kryssreferanse kan derfor gå fra en *moetemappe* til en *saksmappe*. Kryssreferanser grupperes inn i de arkivenhetene det refereres **fra**.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M219
   - referanseTilKlasse
   - JO.ORDNPRI2
   - 0-1
   - A
   - klasse.systemID
 * - M210
   - referanseTilMappe
   - JF.TSAID
   - 0-1
   - A
   - mappe.systemID
 * - M212
   - referanseTilRegistrering
   - JF.TJPID
   - 0-1
   - A
   - registrering.systemID

Metadata for *merknad*
~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *merknad* grupperes inn i 0-M forekomst av *mappe*.

0-M forekomster av *merknad* grupperes inn i 0-M forekomst av *registrering*.

0-M forekomster av *merknad* grupperes inn i 0-M forekomst av *dokumentbeskrivelse*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M310
   - merknadstekst
   - ME.TEKST
   - 1
   - A
   - Tekststreng
 * - M084
   - merknadstype
   - ME.ITYPE
   - 0-1
   - A
   - Tekststreng
 * - M611
   - merknadsdato
   - ME.REGDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M612
   - merknadRegistrertAv
   - PN.NAVN
   - 1
   - A
   - Tekststreng

Metadata for *part*
~~~~~~~~~~~~~~~~~~~

0-M forekomster av *part* grupperes inn i 0-M forekomster av *mappe*.

0-M forekomster av *part* grupperes inn i 0-M forekomster av *registrering*.

0-M forekomster av *part* grupperes inn i 0-M forekomster av *dokumentbeskrivelse*.

Merk: Kun ett av feltene personID og organisasjonsID kan ha verdi.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   -
   - 1
   - A
   - Tekststreng
 * - M010
   - partID
   - 
   - 0-1
   - A
   - Tekststreng
 * - M302
   - partNavn
   - SP.NAVN
   - 1
   - A
   - Tekststreng
 * - M303
   - partRolle
   - SP.ROLLE
   - 1
   - A
   - Tekststreng
 * - M406
   - postadresse
   - SP.ADRESSE
   - 0-M
   - A
   - Tekststreng
 * - M407
   - postnummer
   - SP.POSTNR
   - 0-1
   - A
   - Tekststreng
 * - M408
   - poststed
   - SP.POSTSTED
   - 0-1
   - A
   - Tekststreng
 * - M409
   - land
   - 
   - 0-1
   - A
   - Tekststreng
 * - M410
   - epostadresse
   - SP.EPOSTADR
   - 0-1
   - A
   - Tekststreng
 * - M411
   - telefonnummer
   - SP.TLF
   - 0-M
   - A
   - Tekststreng
 * - M412
   - kontaktperson
   - SP.KONTAKT
   - 0-1
   - A
   - Tekststreng
 * - M048
   - personID
   - 
   - 0-M
   - A
   - Tekststreng
 * - M049
   - organisasjonsID
   - 
   - 0-1
   - A
   - Tekststreng
 * - M711
   - virksomhetsspesifikkeMetadata
   - 
   - 0-1
   - A
   - Vilkårlig struktur

Metadata for *kassasjon*
~~~~~~~~~~~~~~~~~~~~~~~~
 
0-1 forekomster av *kassasjon* grupperes inn i 0-M forekomster av *arkivdel*.

0-1 forekomster av *kassasjon* grupperes inn i 0-M forekomster av *klasse*.

0-1 forekomster av *kassasjon* grupperes inn i 0-M forekomster av *mappe*.

0-1 forekomster av *kassasjon* grupperes inn i 0-M forekomster av *registrering*.

0-1 forekomster av *kassasjon* grupperes inn i 0-M forekomster av *dokumentbeskrivelse*.

Merk: I Noark 4 har disse attributtene forskjellig navn avhengig av hvilket nivå i arkivstrukturen de er tilknyttet. Nedenfor er tatt med referanse til attributter på saksnivået. Når kassasjonen er utført, skal metadata for utfoertKassasjon registreres, se nedenfor.

Metadata om kassasjon skal bare følge med i de arkivenhetene som har et kassasjonsvedtak knyttet til seg.

Ved avlevering skal metadata om kassasjon arves til (kopieres inn i) alle underliggende nivåer i arkivstrukturen. Dersom en underliggende arkivenhet skal bevares, skal den ikke ha metadata om kassasjon, og ikke heller de underliggende arkivenhetene.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M450
   - kassasjonsvedtak
   - SA.KASSKODE
   - 1
   - A
   - Tekststreng
 * - M453
   - kassasjonshjemmel
   - 
   - 0-1
   - A
   - Tekststreng
 * - M451
   - bevaringstid
   - SA.BEVTID
   - 1
   - A
   - Heltall
 * - M452
   - kassasjonsdato
   - SA.KASSDATO
   - 1
   - A
   - Dato og klokkeslett

Metadata for *utfoertKassasjon*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-1 forekomster av *utfoertKassasjon* grupperes inn i 0-M forekomster av *arkivdel*.

0-1 forekomster av *utfoertKassasjon* grupperes inn i 0-M forekomster av *dokumentbeskrivelse*.

Merk: Ved kassasjon av dokumenter blir dokumentobjektet slettet. Sletting som ikke er et resultat av kassasjon, skal registreres som *sletting* over.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M630
   - kassertDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M631
   - kassertAv
   - 
   - 1
   - A
   - Tekststreng

Metadata for *skjerming*
~~~~~~~~~~~~~~~~~~~~~~~~

0-1 forekomster av *skjerming* grupperes inn i 0-M forekomster av *arkivdel*.

0-1 forekomster av *skjerming* grupperes inn i 0-M forekomster av *klasse*.

0-1 forekomster av *skjerming* grupperes inn i 0-M forekomster av *mappe*.

0-1 forekomster av *skjerming* grupperes inn i 0-M forekomster av *registrering*.

0-1 forekomster av *skjerming* grupperes inn i 0-M forekomster av *dokumentbeskrivelse*.

I Noark 4 har disse attributtene forskjellig navn avhengig av hvilket nivå i arkivstrukturen de er tilknyttet. Nedenfor er tatt med referanse til attributter på journalpostnivået.

Metadata om skjerming skal bare følge med i de arkivenhetene som inneholder informasjon som skal skjermes.

Ved avlevering skal metadata om skjerming være gruppert inn i alle nivåer i arkivstrukturen hvor informasjonen skal være skjermet.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M500
   - tilgangsrestriksjon
   - JP.TGKODE
   - 1
   - A
   - Tekststreng
 * - M501
   - skjermingshjemmel
   - JP.UOFF
   - 1
   - A
   - Tekststreng
 * - M502
   - skjermingMetadata
   - 
   - 1-M
   - A
   - Tekststreng
 * - M503
   - skjermingDokument
   - 
   - 0-1
   - A
   - Tekststreng
 * - M504
   - skjermingsvarighet
   - 
   - 0-1
   - A
   - Heltall
 * - M505
   - skjermingOpphoererDato
   - JP.AGDATO
   - 0-1
   - A
   - Dato og klokkeslett

Metadata for *gradering*
~~~~~~~~~~~~~~~~~~~~~~~~

0-1 forekomster av *gradering* grupperes inn i 0-M forekomster av *arkivdel*.

0-1 forekomster av *gradering* grupperes inn i 0-M forekomster av *klasse*.

0-1 forekomster av *gradering* grupperes inn i 0-M forekomster av *mappe*.

0-1 forekomster av *gradering* grupperes inn i 0-M forekomster av *registrering*.

0-1 forekomster av *gradering* grupperes inn i 0-M forekomster av *dokumentbeskrivelse*.

Ved avlevering skal metadata om gradering være gruppert inn i alle nivåer i arkivstrukturen hvor informasjonen er gradert.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M506
   - graderingskode
   - 
   - 1
   - A
   - Tekststreng
 * - M624
   - graderingsdato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M625
   - gradertAv
   - 
   - 1
   - A
   - Tekststreng
 * - M626
   - nedgraderingsdato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M627
   - nedgradertAv
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *presedens*
~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *presedens* grupperes inn i 0-M forekomster av *saksmappe*.

0-M forekomster av *presedens* grupperes inn i 0-M forekomster av *journalpost*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M111
   - presedensDato
   - PS.DATO
   - 1
   - A
   - Dato og klokkeslett
 * - M600
   - opprettetDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 1
   - A
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M020
   - tittel
   - PS.TITTEL
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng
 * - M311
   - presedensHjemmel
   - PS.HJEMMEL
   - 0-1
   - A
   - Tekststreng
 * - M312
   - rettskildefaktor
   - 
   - 1
   - A
   - Tekststreng
 * - M628
   - presedensGodkjentDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M629
   - presedensGodkjentAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M603
   - avsluttetAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M056
   - presedensstatus
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *elektroniskSignatur*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-1 forekomster av *elektroniskSignatur* grupperes inn i 1 forekomst av *journalpost*.

0-1 forekomster av *elektroniskSignatur* grupperes inn i 1 forekomst av *dokumentbeskrivelse*.

0-1 forekomster av *elektroniskSignatur* grupperes inn i 1 forekomst av *dokumentobjekt*.

Merk: Elektronisk signatur knyttes til dokumentobjektet i tillegg til dokumentbeskrivelsen i de tilfeller der det er nødvendig i presisere hvilken av dokumentfilene som er signert. Elektronisk signatur knyttes til journalpost hvis en samlet forsendelse er påført en signatur.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M507
   - elektroniskSignaturSikkerhetsnivaa
   - 
   - 1
   - A
   - Tekststreng
 * - M508
   - elektroniskSignaturVerifisert
   - 
   - 1
   - A
   - Tekststreng
 * - M622
   - verifisertDato
   - DI.SIGVER DATO
   - 1
   - A
   - Dato og klokkeslett
 * - M623
   - verifisertAv
   - DI.SIGVERAV
   - 1
   - A
   - Tekststreng

Metadata for *nasjonalIdentifikator*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

0-M forekomster av *nasjonalIdentifikator* grupperes inn i 0-M forekomster av *mappe*.

0-M forekomster av *nasjonalIdentifikator* grupperes inn i 0-M forekomster av *registrering*.


Metadata for *matrikkelnummer*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *nasjonalIdentifikator*

Hvis kommune ikke er angitt, anses matrikkelnummeret å angi en eiendom i gjeldende kommune.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M030
   - kommunenummer
   - 
   - 0-1
   - A
   - Tekststreng
 * - M031
   - gaardsnummer
   - 
   - 1
   - A
   - Heltall
 * - M032
   - bruksnummer
   - 
   - 1
   - A
   - Heltall
 * - M033
   - festenummer
   - 
   - 0-1
   - A
   - Heltall
 * - M034
   - seksjonsnummer
   - 
   - 0-1
   - A
   - Heltall

Metadata for *byggident*
~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *nasjonalIdentifikator*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M035
   - bygningsnummer
   - 
   - 1
   - A
   - Heltall
 * - M036
   - endringsloepenummer
   - 
   - 0-1
   - A
   - Heltall

Metadata for *planident*
~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *nasjonalIdentifikator*

Merk: Kun ett av feltene landkode, fylkesnummer, kommunenummer kan ha verdi (samlebetegnelse administrativEnhet i SOSI). Hvis ingen av disse er angitt anses planidenten å angi en plan i gjeldende kommune.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M038
   - landkode
   - 
   - 0-1
   - A
   - Tekststreng
 * - M037
   - fylkesnummer
   - 
   - 0-1
   - A
   - Tekststreng
 * - M030
   - kommunenummer
   - 
   - 0-1
   - A
   - Tekststreng
 * - M039
   - planidentifikasjon
   - 
   - 1
   - A
   - Tekststreng

Metadata for *posisjon*
~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *nasjonalIdentifikator*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M043
   - koordinatsystem
   - 
   - 1
   - A
   - Tekststreng
 * - M040
   - x
   - 
   - 1
   - A
   - Tekststreng
 * - M041
   - y
   - 
   - 1
   - A
   - Tekststreng
 * - M042
   - z
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *personidentifikator*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *nasjonalIdentifikator*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M048
   - personID
   -
   - 1
   - A
   - Tekststreng

Metadata for *enhetsidentifikator*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Spesialisering av: *nasjonalIdentifikator*

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M049
   - organisasjonsID
   -
   - 1
   - A
   - Tekststreng

Metadata som avleveres som egne filer
-------------------------------------

Metadata for endringslogg
~~~~~~~~~~~~~~~~~~~~~~~~~

Avleveres som en egen fil kalt **endringslogg.xml**.

Øverste nivå i strukturen.

Metadata for *endring*
**********************

1-M forekomster av *endring* grupperes inn i 1 forekomst av *endringslogg*.

Nærmere spesifikasjon av hvilke endringer som skal logges, følger som et eget vedlegg.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M680
   - referanseArkivenhet
   - 
   - 1
   - A
   - Tekststreng (arkivenhetens systemID)
 * - M681
   - referanseMetadata
   - 
   - 1
   - A
   - Tekststreng (metadata-elementets navn)
 * - M682
   - endretDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 1
   - A
   - Tekststreng
 * - M684
   - tidligereVerdi
   - 
   - 1
   - A
   - Tekststreng
 * - M685
   - nyVerdi
   - 
   - 1
   - A
   - Tekststreng

Metadata for loependeJournal
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Avleveres som en egen fil kalt **loependeJournal.xml**.

Øverste nivå i strukturen.

Metadata for *journalhode*
**************************

1 forekomst av *journalhode* grupperes inn i 1 forekomst av *loependeJournal*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M112
   - journalStartDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M113
   - journalSluttDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M313
   - seleksjon
   - 
   - 0-1
   - A
   - Tekststreng
 * - M609
   - antallJournalposter
   - 
   - 1
   - A
   - Heltall

Metadata for *arkivskaper*
**************************

1-M forekomster av *arkivskaper* grupperes inn i 1 forekomster av *journalhode*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M006
   - arkivskaperID
   - (AR.ABASEID)
   - 1
   - A
   - Tekststreng
 * - M023
   - arkivskaperNavn
   - AR.SKAPER
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *journalregistrering*
**********************************

1-M forekomster av *journalregistrering* grupperes inn i 1 forekomst av *loependeJournal*.

Metadata for *klasse*
*********************

0-1 forekomster av *klasse* grupperes inn i 1 forekomst av *journalregistrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M002
   - klasseID
   - OV.ORDNVER
   - 1
   - A
   - Tekststreng
 * - M020
   - tittel
   - OV.BESKR
   - 1
   - A
   - Tekststreng
 * - M502
   - skjermingMetadata
   - 
   - 0-M
   - A
   - Tekststreng

Metadata for *saksmappe*
************************

1 forekomst av *saksmappe* grupperes inn i 1 forekomst av *journalregistrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M011
   - saksaar
   - SA.AAR
   - 1
   - A
   - Heltall
 * - M012
   - sakssekvensnummer
   - SA.SEKNR.
   - 1
   - A
   - Heltall
 * - M020
   - tittel
   - SA.TITTEL
   - 1
   - A
   - Tekststreng
 * - M025
   - offentligTittel
   - SA.OFFTITTEL
   - 0-1
   - A
   - Tekststreng
 * - M502
   - skjermingMetadata
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *journalpost*
**************************

1 forekomst av *journalpost* grupperes inn i 1 forekomst av *journalregistrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - 
   - 1
   - A
   - Tekststreng
 * - M013
   - journalaar
   - JP.JAAR
   - 1
   - A
   - Heltall
 * - M014
   - journalsekvensnummer
   - JP.SEKNR
   - 1
   - A
   - Heltall
 * - M015
   - journalpostnummer
   - JP.SEKNR
   - 1
   - A
   - Heltall
 * - M020
   - tittel
   - JP.INNHOLD
   - 1
   - A
   - Tekststreng
 * - M025
   - offentligTittel
   - JP.OFFINNHOLD
   - 0-1
   - A
   - Tekststreng
 * - M502
   - skjermingMetadata
   - 
   - 0-1
   - A
   - Tekststreng
 * - M101
   - journaldato
   - JP.JDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M103
   - dokumentetsDato
   - JP.DOKDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M617
   - avskrivningsdato
   - AM.AVSKDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M619
   - avskrivningsmaate
   - AM.AVSKM
   - 0-1
   - A
   - Tekststreng
 * - M215
   - referanseAvskrivesAvJournalpost
   - AM.AVSAV
   - 0-1
   - A
   - registrering.systemID
 * - M500
   - tilgangsrestriksjon
   - JP.TGKODE
   - 0-1
   - A
   - Tekststreng
 * - M506
   - graderingskode
   - 
   - 0-1
   - A
   - Tekststreng
 * - M501
   - skjermingshjemmel
   - JP.UOFF
   - 0-1
   - A
   - Tekststreng

Metadata for *korrespondansepart*
*********************************

1-M forekomster av *korrespondansepart* grupperes inn i 1 forekomst av *registrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M087
   - korrespondanseparttype
   - (AM.IHTYPE, AM.KOPIMOT, AM.GRUPPEMOT)
   - 1
   - A
   - Tekststreng
 * - M400
   - korrespondansepartNavn
   - AM.NAVN
   - 1
   - A
   - Tekststreng
 * - M502
   - skjermingMetadata
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for offentligJournal
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Avleveres som en egen fil kalt **offentligJournal.xml**.

Øverste nivå i strukturen.

Metadata for *journalhode*
**************************

1 forekomst av *journalhode* grupperes inn i 1 forekomst av *offentligJournal*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M112
   - journalStartDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M113
   - journalSluttDato
   - 
   - 1
   - A
   - Dato og klokkeslett
 * - M313
   - seleksjon
   - 
   - 0-1
   - A
   - Tekststreng
 * - M609
   - antallJournalposter
   - 
   - 1
   - A
   - Heltall

Metadata for *arkivskaper*
**************************

1-M forekomster av *arkivskaper* grupperes inn i 1 forekomster av *journalhode*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M006
   - arkivskaperID
   - (AR.ABASEID)
   - 1
   - A
   - Tekststreng
 * - M023
   - arkivskaperNavn
   - AR.SKAPER
   - 1
   - A
   - Tekststreng
 * - M021
   - beskrivelse
   - 
   - 0-1
   - A
   - Tekststreng

Metadata for *journalregistrering*
**********************************

1-M forekomster av *journalregistrering* grupperes inn i 1 forekomst av *offentligJournal*.

Metadata for *klasse*
*********************

0-1 forekomster av *klasse* grupperes inn i 1 forekomst av *journalregistrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M002
   - klasseID
   - OV.ORDNVER
   - 1
   - A
   - Tekststreng
 * - M020
   - tittel
   - OV.BESKR
   - 1
   - A
   - Tekststreng

Metadata for *saksmappe*
************************

1 forekomst av *saksmappe* grupperes inn i 1 forekomst av *journalregistrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M011
   - saksaar
   - SA.AAR
   - 1
   - A
   - Heltall
 * - M012
   - sakssekvensnummer
   - SA.SEKNR.
   - 1
   - A
   - Heltall
 * - M025
   - offentligTittel
   - SA.OFFTITTEL
   - 0-1
   - A
   - Tekststreng

Metadata for *journalpost*
**************************

1 forekomst av *journalpost* grupperes inn i 1 forekomst av *journalregistrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M001
   - systemID
   - 
   - 1
   - A
   - Tekststreng
 * - M013
   - journalaar
   - JP.JAAR
   - 1
   - A
   - Heltall
 * - M014
   - journalsekvensnummer
   - JP.SEKNR
   - 1
   - A
   - Heltall
 * - M015
   - journalpostnummer
   - JP.SEKNR
   - 1
   - A
   - Heltall
 * - M025
   - offentligTittel
   - JP.OFFINNHOLD
   - 0-1
   - A
   - Tekststreng
 * - M502
   - skjermingMetadata
   - 
   - 0-1
   - A
   - Tekststreng
 * - M101
   - journaldato
   - JP.JDATO
   - 1
   - A
   - Dato og klokkeslett
 * - M103
   - dokumentetsDato
   - JP.DOKDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M617
   - avskrivningsdato
   - AM.AVSKDATO
   - 0-1
   - A
   - Dato og klokkeslett
 * - M619
   - avskrivningsmaate
   - AM.AVSKM
   - 0-1
   - A
   - Tekststreng
 * - M215
   - referanseAvskrivesAvJournalpost
   - AM.AVSAV
   - 0-1
   - A
   - registrering.systemID
 * - M500
   - tilgangsrestriksjon
   - JP.TGKODE
   - 0-1
   - A
   - Tekststreng
 * - M506
   - graderingskode
   - 
   - 0-1
   - A
   - Tekststreng
 * - M501
   - skjermingshjemmel
   - JP.UOFF
   - 0-1
   - A
   - Tekststreng

Metadata for *korrespondansepart*
*********************************

1-M forekomster av *korrespondansepart* grupperes inn i 1 forekomst av *registrering*.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M087
   - korrespondanseparttype
   - (AM.IHTYPE, AM.KOPIMOT, AM.GRUPPEMOT)
   - 1
   - A
   - Tekststreng
 * - M400
   - korrespondansepartNavn
   - AM.NAVN
   - 1
   - A
   - Tekststreng

Metadata som ikke inngår i arkivstrukturen
------------------------------------------

Disse metadataene inngår ikke i arkivstrukturen, og skal ikke avleveres. Metadataene er tatt med fordi det kan være aktuelt å migrere disse mellom forskjellige systemer eller tjenester, og de kan derfor inngå i forskjellige tjenestegrensesnitt mot Noark 5 kjerne (f.eks. fremtidige Noark 5 webservices).

Metadata for *brukeradministrasjon*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M580
   - brukerNavn
   - PN.NAVN
   - 1
   - 
   - Tekststreng
 * - M581
   - brukerRolle
   - RO.NAVN
   - 1
   - 
   - Tekststreng
 * - M600
   - opprettetDato
   - PE.FRADATO
   - 1
   - 
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 0-1
   - 
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - PE.TILDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M582
   - brukerstatus
   - 
   - 0-1
   - 
   - Tekststreng

Metadata for *administrativEnhet*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Metadata for administrasjonsstruktur skal ikke avleveres, men skal kunne migreres mellom systemer. Slik migrering kan omfatte flere metadata enn det som er listet opp her.

.. list-table::
   :widths: 2 11 6 2 1 7
   :header-rows: 1

 * - **Nr.**
   - **Navn**
   - **Noark 4**
   - **Forek.**
   - **Avl.**
   - **Datatype**
 * - M583
   - administrativEnhetNavn
   - AI.ADMBET
   - 1
   - 
   - Tekststreng
 * - M600
   - opprettetDato
   - AI.FRADATO
   - 1
   - 
   - Dato og klokkeslett
 * - M601
   - opprettetAv
   - 
   - 0-1
   - 
   - Tekststreng
 * - M682
   - endretDato
   - 
   - 0-1
   - A
   - Dato og klokkeslett
 * - M683
   - endretAv
   - 
   - 0-1
   - A
   - Tekststreng
 * - M602
   - avsluttetDato
   - AI.TILDATO
   - 0-1
   - 
   - Dato og klokkeslett
 * - M584
   - administrativEnhetsstatus
   - 
   - 0-1
   - 
   - Tekststreng
 * - M585
   - referanseOverordnetEnhet
   - (AI.IDFAR)
   - 0-1
   - 
   - Tekststreng (administrativEnhetNavn)
