USE sae401;
SELECT DATE_FORMAT(buyingDate, '%d/%m/%Y') AS buyingDate, code, DATE_FORMAT(usageDate, '%d/%m/%Y') AS usageDate, gCA.price, u.firstName, u.lastName, u.email FROM giftCard INNER JOIN giftCardAmount gCA on giftCard.id_giftCardAmount = gCA.id_giftCardAmount INNER JOIN user u on giftCard.id_user = u.id_user WHERE type = 'money';

SELECT DATE_FORMAT(buyingDate, '%d/%m/%Y') AS buyingDate, code, DATE_FORMAT(usageDate, '%d/%m/%Y') AS usageDate, eG.name, u.firstName, u.lastName, u.email FROM giftCard INNER JOIN user u on giftCard.id_user = u.id_user INNER JOIN escapeGame eG on giftCard.id_escapeGame = eG.id_escapeGame WHERE type = 'escapeGame';

SELECT eG.name, eG.nameFR, DATE_FORMAT(gameDate, '%d/%m/%Y') AS gameDateDisplay, nbPlayers, buyersFirstName, buyersLastName FROM buying INNER JOIN escapeGame eG on buying.id_escapeGame = eG.id_escapeGame WHERE id_user = 1 AND gameDate > CURDATE();

SELECT CURDATE();