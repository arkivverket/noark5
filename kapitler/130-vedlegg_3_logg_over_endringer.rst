Oversikt over metadata hvor det skal logges at det gjøres endringer i innholdet
===============================================================================

Når verdiene for noen sentrale metadataelementer blir endret, skal dette logges. Nedenfor følger en oversikt over hvilke metadata det som minimum skal avleveres logg over endringer for.

.. list-table::
   :widths: 3 1 5 3
   :header-rows: 1

 * - **Arkivenhet**
   - **Nr.**
   - **Navn**
   - **Loggingstidspunkt**
 * - arkiv
   - M020
   - tittel
   - Ved endring
 * - arkiv
   - M050
   - arkivstatus
   - Ved endring
 * - arkiv/arkivskaper
   - M023
   - arkivskaperNavn
   - Ved endring
 * - arkivdel
   - M020
   - tittel
   - Ved endring
 * - arkivdel
   - M051
   - arkivdelstatus
   - Ved endring
 * - arkivdel
   - M204
   - referanseKlassifikasjonssystem
   - Ved endring
 * - klassifikasjonssystem
   - M086
   - klassifikasjonstype
   - Ved endring
 * - klassifikasjonssystem
   - M020
   - tittel
   - Ved endring
 * - klasse
   - M020
   - tittel
   - Ved endring
 * - mappe
   - M020
   - tittel
   - Ved endring etter arkivstatus «Avsluttet», arkivdelstatus «Avsluttet periode» eller saksstatus «Avsluttet» for undertype saksmappe.
 * - mappe
   - M208
   - referanseArkivdel
   - Ved endring
 * - saksmappe
   - M100
   - saksdato
   - Ved endring
 * - saksmappe
   - M305
   - administrativEnhet
   - Ved endring
 * - saksmappe
   - M306
   - saksansvarlig
   - Ved endring
 * - saksmappe
   - M308
   - journalenhet
   - Ved endring
 * - saksmappe
   - M052
   - saksstatus
   - Ved endring
 * - part
   - M302
   - partNavn
   - Ved endring
 * - møtemappe
   - M008
   - møtenummer
   - Ved endring
 * - møtemappe
   - M370
   - utvalg
   - Ved endring
 * - møtemappe
   - M102
   - møtedato
   - Ved endring
 * - møtemappe
   - M371
   - møtested
   - Ved endring
 * - møtedeltaker
   - M372
   - møtedeltakerNavn
   - Ved endring
 * - registrering
   - M208
   - referanseArkivdel
   - Ved endring
 * - registrering
   - M020
   - tittel
   - Ved endring etter arkivstatus/saksstatus «Avsluttet», arkivdelstatus «Avsluttet periode», journalstatus «Ekspedert»/«Journalført»/«Arkivert» for undertype journalpost eller moeteregistreringsstatus «Ferdig behandlet av utvalget» for undertype møteregistrering.
 * - registrering
   - M024
   - forfatter
   - Ved endring
 * - journalpost
   - M053
   - journalstatus
   - Ved endring etter journalstatus «Ekspedert»/«Journalført»/«Arkivert», arkivstatus/saksstatus «Avsluttet» eller arkivdelstatus «Avsluttet periode».
 * - journalpost
   - M101
   - journaldato
   - Ved endring
 * - journalpost
   - M103
   - dokumentetsDato
   - Ved endring etter journalstatus «Ekspedert»/«Journalført»/«Arkivert», arkivstatus/saksstatus «Avsluttet» eller arkivdelstatus «Avsluttet periode».
 * - journalpost
   - M104
   - mottattDato
   - Ved mottak
 * - journalpost
   - M105
   - sendtDato
   - Ved forsendelse
 * - journalpost
   - M110
   - offentlighetsvurdertDato
   - Ved off.vurdering
 * - korespondansepart
   - M400
   - korrespondansepartNavn
   - Ved endring
 * - saksansvar
   - M305
   - administrativEnhet
   - Ved endring
 * - saksansvar
   - M307
   - saksbehandler
   - Ved endring
 * - saksansvar
   - M308
   - journalenhet
   - Ved endring
 * - avskrivning
   - M215
   - referanseAvskrivesAvJournalpost
   - Ved endring
 * - møteregistrering
   - M055
   - møteregistreringsstatus
   - Ved endring
 * - møteregistrering
   - M307
   - Saksbehandler
   - Ved endring
 * - dokumentbeskrivelse
   - M054
   - dokumentstatus
   - Ved endring
 * - dokumentbeskrivelse
   - M020
   - tittel
   - Ved endring etter journalstatus «Ekspedert»/«Journalført»/«Arkivert», arkivstatus/saksstatus «Avsluttet» eller arkivdelstatus «Avsluttet periode».
 * - kassasjon
   - M453
   - kassasjonshjemmel
   - Ved endring
 * - kassasjon
   - M451
   - bevaringstid
   - Ved endring
 * - kassasjon
   - M452
   - kassasjonsdato
   - Ved endring
 * - skjerming
   - M501
   - skjermingshjemmel
   - Ved endring
 * - skjerming
   - M502
   - skjermingMetadata
   - Ved endring
 * - skjerming
   - M503
   - skjermingDokument
   - Ved endring
 * - skjerming
   - M504
   - skjermingsvarighet
   - Ved endring
 * - skjerming
   - M505
   - skjermingOpphørerDato
   - Ved endring
 * - presedens
   - M020
   - tittel
   - Ved endring
