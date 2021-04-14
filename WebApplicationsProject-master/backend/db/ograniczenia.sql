--
-- Ograniczenia dla zrzutów tabel
--
use waProj;
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
