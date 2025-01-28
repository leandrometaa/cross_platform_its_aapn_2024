# countries_and_flags

Siete stati assunti dalla NATIO-SRL, piccola realtà che vuole mantenere un piccolo applicativo in grado di mostrare l'elenco di tutte le nazioni del mondo!

## Le API
Il vostro compito è agganciare le API da questo url:
    https://restcountries.com/v3.1/name/:query?fields=name,flags,cca2

Come potete vedere dall'URL c'è un "path parameter": con questo url cercate `:query` all'interno del database di tutte le nazioni, e in cambio il server vi risponde con tutte le nazioni che corrispondono alla nostra query, **mostrando solo questi campi**:
    - `name`
        => è un oggetto json che contiene tutti i modi in cui è possibile chiamare una nazione
        => a noi interessano *solo* i campi `common` e `official`
    - `flags`
        => è un oggetto json che contiene le immagini della bandiera della nazione
        => a noi interessano *solo* i campi `png` e `alt`
    - `cca2`
        => è uno dei possibili identificativi di una nazione (e.g. `IT` per l'italia)
        => è una semplice stringa di due caratteri

### Nota bene !!
Se `query` è vuota... cosa chiediamo al server? `/null`? Non funzionerebbe...

Questo piccolo difetto del design delle API server va corretto lato client!

Come? Agganciando un'ulteriore API, che chiede TUTTE le nazioni al server:
    https://restcountries.com/v3.1/all?fields=name,flags,cca2

Come vedete il *path* è diverso da sopra (mettiamo direttamente `all`).
Vi conviene scrivere quindi due metodi separati (`fetchAll`, senza parametri, e `searchBy`, che accetta `String query`).

## Il nostro modello: suggerimenti
Suggerimento: il modello può coincidere con il modello delle API.

Suggerimento 2: usate il seguente snippet per accedere "più velocemente" ai campi del modello:
```dart
extension CountryApiModelExt on CountryModel {
  String get id => cca2;  // Utile per leggibilità, null'altro.
  String get shortName => name.common;
  String get longName => name.official;
  String get flagUrl => flags.png;
  String get flagAlt => flags.alt;
}
```

## La home page
La pagina principale mostra una textfield di ricerca. Quando l'utente preme invio, invia la query al server, e noi mostriamo i risultati.

I risultati vengono mostrati con una griglia.

Ogni risultato è un componente che mostra la bandiera del paese, e sotto il suo codice, con il nome comune.

### Suggerimenti

Vi conviene usare `GridView.count` usando `crossAxisCount: 2` (oppure `: 4`). Ottenete un effetto carino.

## I preferiti
Ogni paese è "preferibile". Usate le solite tecniche per aggiungere un paese ai preferiti dalla home page.

Nella home page poi è possibile accedere alla lista di preferiti, i cui risultati vengono mostrati in lista (non occorre far vedere l'immagine).
Anche da qui è possibile rimuovere dai preferiti il paese.

## Dettaglio
Sia dalla home page, sia dalla pagina dei preferiti, toccando il paese è possibile accedere alla pagina di dettaglio di un paese, che:
    - mostra come titolo il "nome completo" del paese
    - mostra la bandiera, grande
    - sotto, di nuovo, codice e nome comune

In questa pagina in alto a destra c'è il pulsante per aggiungere il paese ai preferiti.
