use waProj;

CREATE TABLE IF NOT EXISTS `eggs` (
  `id` int(11) NOT NULL,
  `egg_name` varchar(200) NOT NULL,
  `egg_price` int(5) NOT NULL,
  `time_of_grow_up` int(5) NOT NULL DEFAULT '0',
  `value` int(5) NOT NULL,
  `id_tramwaju` int(11) NOT NULL
);
 
use waProj;
ALTER TABLE `eggs` ADD PRIMARY KEY (`id`);
ALTER TABLE `eggs` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
ALTER TABLE `eggs` ADD KEY `id_tramwaju` (`id_tramwaju`);