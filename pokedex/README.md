# pokedex
Vi chiedo di implementare un nostro pokedex a funzionalità limitate.
Per farvi un'idea, vi lascio il wireframe qui:
    https://excalidraw.com/#json=961HRMmnW8dgoCCDKll3t,DcU0d7NCIMuV2mtB-9RGzQ

## home
L'utente vedrà apparire, in home, il più classico elenco di pokemon (numero e nome).
Vi ricordo che ogni pokemon ha un suo numero (o "id") e un nome
    e.g. 1 --> Bulbasaur.
Sempre in home page c'è un pulsante che ci permette di visualizzare i nostri pokemon "salvati".

## dettaglio
Invece, cliccando su un pokemon, ne vediamo i dettagli in una pagina ad hoc:
    - id
    - nome
    - un'immagine di base
    - altezza
    - peso

## salvati
Sia nell'elenco, sia nel dettaglio, c'è un pulsante che permette all'utente di "salvare ed annotare" un pokemon in una sezione ad-hoc.
Abbiamo infatti una lista di pokemon salvati a disposizione dalla home.
Un pokemon salvato è composto da id, titolo e una nota messa dall'utente.

Per "salvare ed annotare" un pokemon, dobbiamo pushare una nuova pagina.
In questa, troviamo una form con una sola text field, con due requisiti:
    1. Non può essere vuota
    2. Deve avere almeno 20 caratteri
Al salvataggio, lo aggiungiamo agli altri.

## refresh
Dev'essere possibile effettuare uno swipe-to-refresh sia in home sia nel dettaglio, in modo da prendere nuovi dati dal server.

## form
In quest'app c'è solo un form: quello che vi serve per salvarvi i pokemon.
Vi consiglio comunque di usare reactive forms, anche se c'è un solo campo, come suggerito più volte in classe, in modo da evitare API di basso livello (`TextEditingController`).

## i dati
Prendiamo i dati da queste API:
    https://pokeapi.co/

Il primo endpoint ci dà un elenco (paginato) di elementi.
Per evitare la complessità della paginazione, fate una request con un limite molto alto, così abbiamo TUTTI i pokemon con una chiamata, e.g.:
    https://pokeapi.co/api/v2/pokemon?limit=10000

Per visualizzare il dettaglio di un pokemon, dovete usare il suo `id`, o il suo nome.
Infatti, le seguenti due request:
    https://pokeapi.co/api/v2/pokemon/1
    https://pokeapi.co/api/v2/pokemon/bulbasaur
Restituiscono lo stesso risultato.

## due request separate?!
Sì, esatto. La vostra classe API dovrà esporre due metodi diversi. Uno ti dà la lista di pokemon. L'altro, prendendo come input un id, il dettaglio di quel pokemon.

## suggerimenti
0. Per quanto riguarda le API vi consiglio di mappare / modellare solo i parametri che vi interessano davvero, in modo da estrarre quanto davvero ci serve
1. Consiglio di definire un modello distinto, interno, e.g. `PokemonSnippet`, per la lista di pokemon, utilizzando freezed
2. Consiglio di definire `PokemonDetails`, per la pagina di dettaglio di un pokemon, senza passare da freezed, cioè con typedef.
3. Ad un certo punto vi scontrerete con un bel problema (nell'adapter, ovvero, nel trasformare il modello esterno al nostro snippet interno). In particolare, vi lascio qui la soluzione - che vi permette di estrarre un `id` interno dall'url di dettaglio di un pokemon
```dart
  final urlDiEsempio = "https://pokeapi.co/api/v2/pokemon/123/";
  final split = urlDiEsempio.split('/');
  final [..., id, _] = split;
  print(id);  // "1", stringa
  final integer = int.parse(id);
  print(integer);  // 1, intero
```
4. Noterete che la seconda request è parametrizzata, ovvero ci serve un `id` per poter fare la request, e quindi anche il nostro provider deve esserlo. Vi ricordo che in riverpod i parametri possono essere semplicemente essere "passati" nella loro definizione:
```dart
@riverpod
int funzioneParametrizzata(Ref ref, int i) {
  return 0 + i;
}
```
E per poter leggere questo provider, faremo:
```dart
// param ci viene passato dalla route / pagina
final result = ref.watch(funzioneParametrizzataProvider(param));
```
Il parametro `param` arriva dalla nostra pagina:
```dart
class Pagina extends ConsumerWidget {
    const Pagina(this.param);
    final int param;
    // ...
}
```
Infine, il router prenderà questo parametro dallo stato:
```dart
GoRoute(
    // ...
    builder: (context, state) {
        final param = state.pathParameters['id'];
        return Pagina(param);
    }
)
```
