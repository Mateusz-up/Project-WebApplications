-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Sty 2020, 20:03
-- Wersja serwera: 5.7.28-0ubuntu0.18.04.4
-- Wersja PHP: 7.1.4

--
-- Baza danych: `waProj`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `egg_id` int(11) NOT NULL,
  `data` datetime NOT NULL
) 

--
-- Zrzut danych tabeli `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `egg_id`, `data`) VALUES
(1, 1, 1, '2020-01-13 09:36:29');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `eggs`
--

CREATE TABLE `eggs` (
  `id` int(11) NOT NULL,
  `egg_name` varchar(200) NOT NULL,
  `egg_price` int(5) NOT NULL,
  `time_of_grow_up` int(5) NOT NULL DEFAULT '0',
  `value` int(5) NOT NULL,
  `id_tramwaju` int(11) NOT NULL
)

--
-- Zrzut danych tabeli `eggs`
--

INSERT INTO `eggs` (`id`, `egg_name`, `egg_price`, `time_of_grow_up`, `value`, `id_tramwaju`) VALUES
(1, 'Tanie jajko', 10, 100, 1, 2),
(2, 'Normalne jajko', 100, 500, 20, 3),
(3, 'Lepsze jajko', 300, 1000, 100, 4),
(4, 'Dobre jajko', 800, 5000, 300, 5),
(5, 'Najlepsze jajko', 8000, 20000, 1000, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tramwaje`
--

CREATE TABLE `tramwaje` (
  `id` int(11) NOT NULL,
  `egg_id` int(11) NOT NULL,
  `name` varchar(50)  NOT NULL,
  `lvl` int(11) NOT NULL
) 

--
-- Zrzut danych tabeli `tramwaje`
--

INSERT INTO `tramwaje` (`id`, `egg_id`, `name`, `lvl`) VALUES
(1, 5, 'Tripanos', 100),
(2, 1, 'Bombelek', 1),
(3, 2, 'YoungerMan', 10),
(4, 3, 'Lenivex', 50),
(5, 4, 'MasterOfDragon', 85);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(50)  NOT NULL
)

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `email`) VALUES
(1, 'Test', 'test123', 'tester12345@jajka.pl'),
(2, 'Test', 'test123', 'tester12345@jajka.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `egg_id` int(11) NOT NULL,
  `data` datetime NOT NULL
)

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `user_id`, `egg_id`, `data`) VALUES
(1, 1, 5, '2020-01-03 00:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egg_id` (`egg_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `eggs`
--
ALTER TABLE `eggs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tramwaju` (`id_tramwaju`);

--
-- Indexes for table `tramwaje`
--
ALTER TABLE `tramwaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egg_id` (`egg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egg_id` (`egg_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `eggs`
--
ALTER TABLE `eggs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `tramwaje`
--
ALTER TABLE `tramwaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`egg_id`) REFERENCES `eggs` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `eggs`
--
ALTER TABLE `eggs`
  ADD CONSTRAINT `eggs_ibfk_1` FOREIGN KEY (`id_tramwaju`) REFERENCES `tramwaje` (`id`);

--
-- Ograniczenia dla tabeli `tramwaje`
--
ALTER TABLE `tramwaje`
  ADD CONSTRAINT `tramwaje_ibfk_1` FOREIGN KEY (`egg_id`) REFERENCES `eggs` (`id`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`egg_id`) REFERENCES `eggs` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;


