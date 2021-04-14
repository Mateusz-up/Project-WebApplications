use waProj;
-- DROP TABLE `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `egg_id` int(11) NOT NULL,
  `data` datetime NOT NULL
) 


use waProj;
ALTER TABLE `cart` ADD PRIMARY KEY (`id`);
ALTER TABLE `cart` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;ALTER TABLE `cart`  ADD KEY `egg_id` (`egg_id`);
ALTER TABLE `cart` ADD KEY `id_user` (`id_user`);

use waProj;
desc `cart`;