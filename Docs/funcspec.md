## 4. Igényelt üzleti folyamatok:

Az új rendszerben a felhasználók képesek lesznek keresni a viccek között különböző kategóriákban, hozzáadni saját
vicceiket egy egyszerű felületen keresztül, és törölni azokat, amelyeket már nem szeretnének megosztani.

Regisztráció: Az alkalmazás kezdőképernyőjén jelenjen meg a "Regisztráció" gomb,
amelyre kattintva a felhasználó bejuthat a regisztrációs felületre.
A regisztrációs felületen megkérjük a felhasználót, hogy adja meg e-mail címét és jelszavát,
a jelelszó erősségét támodathatjuk javaslatokkal is amik a jelsző mező allat jelenhetne meg.
Az e-mail cím validáció fontos, hogy ne lehessen ugyanazzal az e-mail címmel többször regisztrálni
ezt a standard ellenőrző li kes megoldással csinálhatjuk.
Ha a regisztráció sikeres, akkor a felhasználó bejelentkezhet.
Használhatjuk mondjuk a Firebase Authentication-t a felhasználók regisztrációjának és bejelentkezésének kezelésére Flutterben.

Profil Szerkesztése: Bejelentkezés után a felhasználók megtehetik a profiljuk testre szabását a navigációs sávon keresztül.
Profilkép hozzáadására vagy megváltoztatására is lehetőséget nyújtunk a kép feltöltését vagy kiválasztását a galériából  egy image picker library-val oldjhatjuk meg.
Bemutatkozás mezője, valamint egyéb személyes információk szerkesztése is elérhető. Itt is használhatunk Firebaset.

Kedvencek Gyűjteménye: A felhasználók kedvencek közé tehetik a legkedveltebb vicceket, amelyeket
később könnyen megtekinthetnek, ehez használhatunk egy adatbázist amiben valhol csináluk egy
kedvencekhez tartozó részt .

Viccek Hozzáadása: A regisztrált felhasználók új vicceket is hozzáadhatnak az alkalmazáshoz.
A viccek hozzáadása során meg kell adni a kategóriát és a vicc szövegét egy menüben.
Ezt esetleg egy ürlapos megoldással lehetne megcsinálni modnjuk ennek az ürlapnak a tartalmát
mentjük egy adatbázisba.

