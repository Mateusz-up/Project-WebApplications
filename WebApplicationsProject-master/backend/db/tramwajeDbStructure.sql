use waProj;

CREATE TABLE `tramwaje` (
  `id` int(11) NOT NULL,
  `egg_id` int(11) NOT NULL,
  `name` varchar(50)  NOT NULL,
  `lvl` int(11) NOT NULL
) 

use waProj;

ALTER TABLE `tramwaje`  ADD PRIMARY KEY (`id`);
ALTER TABLE `tramwaje`  ADD KEY `egg_id` (`egg_id`);
ALTER TABLE `tramwaje`  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;