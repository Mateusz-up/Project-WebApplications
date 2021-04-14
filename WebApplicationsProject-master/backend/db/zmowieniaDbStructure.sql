use waProj;
CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `egg_id` int(11) NOT NULL,
  `data` datetime NOT NULL
)

use waProj;
ALTER TABLE `zamowienia`  ADD PRIMARY KEY (`id`);
ALTER TABLE `zamowienia`  ADD KEY `egg_id` (`egg_id`);
ALTER TABLE `zamowienia`  ADD KEY `user_id` (`user_id`);
ALTER TABLE `zamowienia`  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;