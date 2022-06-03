-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 03 2022 г., 17:53
-- Версия сервера: 5.7.23-log
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mediatsia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accordion`
--

CREATE TABLE `accordion` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accordion`
--

INSERT INTO `accordion` (`id`, `title`) VALUES
(1, 'Часто  задаваемые вопросы');

-- --------------------------------------------------------

--
-- Структура таблицы `accordion_items`
--

CREATE TABLE `accordion_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `accordion_id` int(11) DEFAULT NULL,
  `accordion_order` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accordion_items`
--

INSERT INTO `accordion_items` (`id`, `title`, `description`, `accordion_id`, `accordion_order`) VALUES
(1, 'Что такое медиация и зачем заключать медиативное соглашение?', '<p><span data-metadata=\"&lt;!--(figmeta)eyJmaWxlS2V5Ijoic3BkTnRaR3hOWEhnQ2F1bFBWeVNhTCIsInBhc3RlSUQiOjM1NjY1NzY0MSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--&gt;\"></span><span data-buffer=\"&lt;!--(figma)ZmlnLWtpd2kPAAAAGy8AAO18eZgjS3FnZknqY3pm3n0/7vueN+/mLpVKrZqWVDVVJfXM8zNCLVV3i1FLQqXumX7GGDDGGD/u01wGFnMbnjG2sRcwtrGNMcYYY4wxxhhjr5f1sizr9bLe8xeRWYd65vnb/cPft99+M983nZGRWZGRkRGRkZFV+qRsRHHc3YrC/UkkxCUnXKfZCULTDwX+Nd2K3bFqZnPVDlCVrcD2c3WDe9vNCuBC4Kw2zTqgYhCertsASgx0AptoLXBfptwJ1hyv49t116QnF5tu6FRPd4Ka26pXOi1v1Tcr9PySBjsVt0n15aTu21XfDmpAHQosu2l3gPZqnZMt2z8N5Eoe6dtenZCHK061ivKIVXfsZtgp+xjdMgPi7ah5bhBjOqcAC+oszV4PYgHKt81Kx20yCcGVdd8JiRvZHPcjb7sbR+hmoSm0aTbo1HDbDMr1wag/GG35u0Pq03Sbd9m+iwbhVridKCi534hGGyhRca1WA/wBlJbZbJsBIGPVd1segELVNxvUr1h23bptNjuuZ/tm6LhNIEtt2wpdH9ACyRnlYt1hskt2ve54AYHLPjphAXmFDvn2aqtu+h3PrZ9eZSIrGKpZsSsQXNbvcGifIpaOBHXHIsTR4HSj7NJqX+I0MViTsZcGoWOtkaguC2qmZ3fWnbDW0c9ebrnNJmgyg1dYpFnlumutoXblulNZZS25CrQaNNOrG3bFMQFcU3NWa3X8p+ZrAxBQk71Ogx0I26+bNOj162ZQczohRkbthmC7O4nWB7PtMDo3U2I+HJxsmb6NVpFJRGKghstKbIS+w3OGFqJaSKsVd50GLV5IOCXP9M16HeoMjWt0fM3rwjy6blcJu2g3VzsVMzTLJg++RHUobosqy1SpOkz1EMNuvWKTvFbKw2jUb0BfIDvPDIJOWAMvq2QDsFK/wZYnK6a/ZhOjRqNVDx2l+QVSAqxxueVTU9Fy625aK7Fo+ZmFAFrMEKsNnqi4WBbUl9QjSXU5E/mhwK2GHaaB2krN9CtpjS3O9m2lG0fsU1a9FWDFUDla4/leEphhK1XfS3kUAJfVWw2n6QZOSENc7nUHI71+i4Fbd2ihBGRacWAnGI1YBUamKCpZHrAbgITCWpGeA1dIceikl73oNEyeWQm2e8IBsODswCcGve4wUkKHU/Pt0GJ5Vx2ansRC8SChWrCCvbkZ9TSjRQe67sOlmdAcNIqK73pZVVZdWB4WsFmBEbSIL6NsWmvzqAIprsUOZsGFWjnKv4qWB6NHKevuOgNgIVQ8BFCEescyPXIbxawGTfItdkolIlqJeuNpdzYYj/BM4nowMpYV4gQsMV1nzc6UzGju7mxE09ZoMIvxjG/SNITnnLLrAQAJjuB0SS6GNR7Fs2lu0bCYwAtqZ3ZlwyRPa2AMLdJCYJk8gWIVFCsd9URJV7j3QjCbjs9E5nCwNcIDKTEB/+PwdiHdVqhBQ3W2uhMoWTI/TIVXW6ZOwDB9311nFaJJFFTVPtly6vDmsF4gi1pNyC7rWoKJV0hRC3kntZi5oc5NqC/l6sdRX87Vb0b9UK5+C+orufqtqB/O1W9D/Yjl+FZ+9KNqtifGA5JMA9uTD6wo222bZiCTiRvl8XgYdUfuJEoWv9hqKuODGPEY+VTAMmiVQ99k2DjFNsm6yMKvjaeDe8ajWXeIx7VXy60t9JSlYJxoYTeoOsxh9nQ7ms4GMCvCuR6aco+W3TB0G4CMxng3jqzdaTyeQj4Vu2rCnaFBWL4bwIocH7C0T9tkVlA91AxEJTyUZ2IqcG8W1Bf1oscurYTCcuqAFhrkJOmRRSwxAhpAS+n6cXW5DUMeTxuD6ZQYSC2EVx2lZABOBc4ObjokFTYq3Xhb+QrDwtYClMgUXLI/UfZQ9JqrQIkTnk2lDNpUGF6FwpOCfW4yns4O2lABmye8NEInbSgiQWDr5PFlgqjZNA9gjHp3f7w7W50O+opIUZlVTuIZg4ayskL2jNedzaLpCE3o5XhsIXC77H4lr+fubOxH8eAekE5FxOywZFI+ZAoZ9Fg43R31tPoZFScwy0qLBeJIhyUjg9n+MAoiPXcsnR+42veFtkkaIi1ol9IVhILYP5sW7RWF0G54rm9yGFhMyECYsyiV5HlbCECZbABwHN3eGbWM6ZxqcL53QbrMgcTehyiHYdWb9RrDnSddJVKjDCUjFwO4wA9Y410wNNXPLdzfcxC7XpyC2QopbizmSJWY1IndeDbY3EfT/VLxTMvuwBWoGFZxEKhFY/8KJGLWwLnL7oQunArLYw4BHcOaOg0PwR9q1II+avLeOB7QWiLMBUrzKcwypNxSYTKkP4I5oY9agIVErDBT28eyduiUgbps+SzUMjZClAWr7nKIVMQBotM24XShKaiXHJJeN0fyMMJA2Bw/JswqyHZCp2FjP0BdNlwcWzosHkPBqqGAp2oUygAuqgbsztStpGocAy6glwdxkPrjpMKsL1V8cxXlMtrW7NPJY4dQbbsqQF4Jp92REo3i8XrsUwgZww4cK3YsHfMIGABE1bYByirONigNBNkIjqu+m0aNhRwqcbDFHE650lIOk/rSBa8V1BROE1vMMAmtpQylSC1niJTSITrXKJymtJJhEkqHM5SidCRDpJSOKkaxDOiUELtkDpnQu3QOq0heNodLqV7OI2msJnpFHpfQvDKPVCSvyqNSilfDKzhWh9pQuwbhFA6vZhPOglX7WgTMLgKsDHOd3Y1hCWrFj+K8a7XKjoUGQaSTikRwm6saZNEqNsUTpP1pU5H6zWFK6tk53IJyhml9MfB85UmXVuEOsFOliGXdNUUcUhCrOMxM6ffKPDJcJ6M+fABZw2EB6CNBbzoeDiuDqTJyMK2t5J/xm5Aw+zX1LDzEjOw56sOlzCK026c8bCHKN1mgQLEI1+RqC85bGjFO5xgM8KKQwzECCgYNazzEji2LU7Es5Bb+GBv4U+jiT1Ft6nj4HGpyH38MHyj0zhBn8aewjT9FphTMxhM80CNY3CXkRHs7dDAa3dl0cE7IhZ1jx1CXO8duQmHsHDuOorBzEyGLOzcRsrRzEyEXvO4U+5Az6kd4ztjaHfTFqRzRFaGjbDTudYe7EZ6RuxxxXy+MKqTU7O5EQhY2uzuD4T76y5i2OAAGiMzi3nQwmaFWoL7t7nTQxSO7O9F00KsOtnanEC02NX1YFFA7rCcAiVMmp2oA8zDzjwaTbg9KPfesh7jLxXrqbVniPKvPVxcgUKXFpQnmKSCsRsKBYYQhUGde3/zTVncSQ5mzR2B/fOKSKDpJxfBsnH6I9QIQnbRGkS3SOwSWgMJkVwEu5Oh7idzzbCHyxV8EwAg6ADA/AQsZi5P2cqDTbGoSsTQ7+GrUnbGA/0Z6OHChSVjHPe6iuTAsLyB8gbhByQyiLOmk0ELgNCkCXHT9ShPlkln1qX250mRndKjZahBLK4hTKTFyGDseTelIRZVHKYBFeQnOcFReapocM19mqfJyHBqovCJQ9Sv9NmcAriLDRHl1sM4ptWusYJ3Ka7E4hL/Osjgjc32ggpEbag4nzW7UccADXL9J/D2QhILyQdjfaCkfXAn5aPiQat2keTy0serTBv2wALqG8uEIwmn8R1QRM6J8ZE2Vj6qpcR8dqvpjTqrysZ4qH0cHC5SPr1fLVH+C63H5RD/k8kmeev6Yt9YkOd1Uh/tAeRwl8XmzH9apfgtKqt9qlv02ytvMcpvqt6Mkvu9oKzp3tsEQyieX6+u0Pk9BSf2eipL6Pc1cq9E8nm6d4APTM6wqG8IzLY/rptXyqV8ZWz3VLTg3KitVRd+u4lyPsoryOMpVlDejrGFYGs9BSfRP1NR8MNoq8VOvuSdIbxD4cczWdBBIoHRPeLffgdI74d1BdE6e8O48htI/4R27BWVQP9Gg50Ik36h/C7sarUubMm4o11ESH6caaw3Cn27WObC6q9laC1H+EDYA4utulAHKH25D4Cif5QUh4TsoCf9sf82netf3alRu+K0yrXsvQCCJsh8qPqKwySH9JpaJ1m+rjaQQyu22ah+01byf015jfTnT9kMf5RDlcZQ7QQDPK8QIJdXHKG9GOUF5C8rnorwV5RTlbShjlLejnKEkOe2ivBPlXhDAZwtxFiXRO4eS6O2jJHr3oCR6P4KS6D0PJdH7UZRE7/koid6PoSR6L5BBcJwIvlBabebwRQQQyR8ngGi+mAAi+hMEENWXEEBkf5IAovtSAojwTxFAlF8GgFn9aQKI8r0EEOWXE0CUX0EAUX4lAUT5VQQQ5VcTQJRfQwBRfi0BRPl1AJjn1xNAlN9AAFF+IwFE+U0EEOWfIYAov5kAovwWAojyWwkgym8jgCi/HcDNRPlnCSDK7yCAKL+TAKL8LgKI8r8igCi/mwCi/HMEEOX3EECU30sAUX4fgFuI8vsJIMofIIAof5AAovwhAojyzxNAlD9MAFH+CAFE+T4CiPIvEECUPwrgVqL8iwQQ5Y8RQJR/iQCi/MsEEOVfIYAof5wAovyrBBDlXyOAKP9rAojyJwDcRpQ/SQBR/hQBRPnXCSDKnyaAKP8GAUT5Nwkgyr9FAFH+DAFE+bcJIMq/A+B2ovy7BBDlzxJAlH+PAKL8OQKI8u8TQJQ/TwBR/gMCiPIXCCDKf0gAUf4igDuI8h8RQJS/RABR/mMCiPKXCSDKf0IAUf4KAUT5Twkgyl8lgCj/GQFE+WsA2EX9OQFE+esEEOW/IIAof4MAovyXBBDlbxJAlP+KAKL8LQKI8l8TQJS/LQ+mUxBazbBdi+NCJiGWQTFlozuZUJAjjc3peIfCstkYf43ycLwhpNzYn0WxKEiVxxFGAfc+21QfUUSG+KvfnXW576IotAf9aCwMI+kT39yaDqlTdTDEydWiaNLsPwdHdyGXZsQU4rx4u9sfn40BGtuDrW3kBrYR9yGS7Eez7mAIqBhhLjEFGYgo95A7iJCgAbwwi3Y4o6eaFvcGGzh79ghe4ty5Glbf8wnj0L/skD1ETNMu5rYsljemRHOEkVE7xMwI40pegEuF7JEgEFYbY4owZxSAF/YG8WAD0ZYURRT6yuOoKMWIxGPxbLkA2qN4czzdEZD1gFfj+WKJgXAb0fOIOH++WO6OgMORwqEWIC5VCMR7CEexZoviMtTzOf7LxaHpGAcQdAEnKzE1ADi8yeKziFm9ai+S4siEJlPlJrhxcTTaGT9nYIGOhzQsxLgoL9ljPXiBFJcjZbo1GOGQQiOuD/qzbYx/xRy2FpGogL6SQs4GVqAClRJG6Uy0L7aF3AS2Phgl/bBmhKkMtiIwVMCZADUVqM5EkSrrqmMJaXTUOOblqRmFLm47w+4WxpIENkkc0M7EHjhZqwY/2tvuUvAeTWP0kGmNB3IqNEsjJtjdi6bIGUZhF6sm/l7KwpATiZxouhtriVuMIbiPsQ3J0tZwf7IdY/+RC/30JiLG7iMX1WNtDAgUOFzaBPOpNF4q5fJmdzjcQOapioZYbMtD21CnKYifKY/PYYBXSLmCGqA3G/LwLM024mw51Wevkjii8VE/lefRWo6OMIobyNL1Y/EsHMGU9erzWmE76YdwtIScnJ6aMBZhK+pEcbeQZ3mVsUzUdhpAgYB0tCLVzLiH8yBqi5uDaTyzEvFi3iXofr6+sEoyE8ZCb7yz0wVj2tlkp8e7hVoKcAUftAnpsPAx1PnEu/09ba4LlXQB4LGmOA9jynBZKSVDHZtZ/EZhjyvNaHZ2PD2TsDCCNXaHGKzPIyaMnK8T5GiRVsY0JAkzFqekDPZ3NsZDTT7mCsaF/1VwQiQmAgYOw2T6AZlmFbOB+4BgE7KJDzcMXig5AQ7hCg5uMMvVaEQOC/NUY8lxnrKs4KC6R95iZ3dG/LKTUD2N+Z6oaN00AsgUk2ZG/WgzwukeQjWWNwfDaA1mC5OJuZFnZOgna11sCzikkwg8sKjZjhE1yWKy0ZSGA7jU6T7NLRwHuxt0uN9AN0KIeyTpwWQ8gvqogRZ3R5tDythTJjZPcWkQt5KmqC+kWFZcW8nzjW4MrVBTLfQSrKIqJ7sbw0G8DWI0LnEbjsOou1PPuKNBjIODFBxsuKRiLiZNsgtmNGujMNZ1IuVuBmfBKaSuO9NiYVeYY2Fe+hem2z7+f0SZ80RBbkGSRxRpdX8rjCXen64kTuDyeX/a3IyjGRS7MO32B7u0mRWzjaqEIt2oFuLJNOr20WMx3h6fhayxxZYjSLBPWojuSyHtYGyzzmiT4gQezxOyv6sUFA8bHraiMTVUor1BL7k5SjJrdPTi2y1p4TDM6QGDcUi2UVIG9YJ60E92NFiBftiy1jscbskDg8DpUQWxMfRWWzJmg6k7fazHYHMA7wHFxVOK5n3YpV3IEE7b024oJAJiKb2GEMivJslYSXDaYlAtSckWkBHEPJKeRV1NO5c0IumPS7xmi4+di5qBMraErSn5bCe7HsAo6azpNgH5TXVRQKlefVcszyOg5pA+iWO1U+kkLyec392EosG3kpYZxkaKZiofhygzlJUoVLOLYIplyL1EqWm2kdXhxJVAtlm/XSGDdU4lGVTSu1PcAZflnHbmq5aijQhtOgsQmMFIYzifeHdzE3lJGO+A4goe4JhADhOmoELgc6IQ722RxfPWj0VEFSEw6eenoc+oubsz2qAoEhBSwNlApthu3RHSjhKqvbdVHU97sD66eIYHORMDvbQbR+ZGPB7uzqIyzZeQy5rB9qoeQRhOtdO0bZ3eNevr5ukAgKzz1k9Xj5jFjNi+RXCAIgz4ztTcCqPdnQCGCuHFAvuvNk4EqLHCBqS62Nm2duGOprq22NOyX5qQl8K95m1ieRUeGIvGAREGkSmpdK/34EzQ4SzMF+LlF7mWBBzD3B6stju4FOy7AYEhMU+ZS6VAdFGPAmlO310jjKFfiSrY1aq6cS8iKeT6BJX0FesCXAfcNNPL7S1qLOUak61IbyjJdkQdsCSYJC0xuI8Jox+JsRaJraJuZFuVTsbDV0E5ISrQYz2jtcEUcFPYWa/ZsJ+aU6903CquoqkZeVXc7qi30qQ57aVjItqCyMzRFmSGwwZcZK5qDHApOPUTb1pQXrmOoArP7k4H4Ef2B/Fk2N1nHV3BCUtVWSXBrTfcRfCsR5twBXLDYyqMxQNn1LQ8bvOjYRcR37Z6oDhhpHpgB8cTGApAGAkvLMDCIK5EwwgBIlSuaI3BLoUbjS6dgbA6ydrqG09ybSgM7b+0OwNUTDxWKaVhj/oTOiOA70iDtDWAGYpZkrWB791Rg30VOp8+DAA2N/ToKWhDrrsyFTyGLqoviSoARO24r3AqFVwF4X4LjoRVDanDBIW7d9STu1r1aGOgmMMwMZBE5RtwZ5mRpL2xbnAFUDIMY9fL7roybei7qWcvdcDQGO9FetcbD/trvEKI06Cs1VQRjVzf2gAHv+m+g/MmHonHu3A6LKw+CUvVrQMBw/qgvxVBycE69isD4WnS3+4PQE1Zp1HBFfdqE7yJ9RquDMqu6RPX/FImguURNMK4L3EEHK+qM9Otk21E/GJBGAwo5G0TmF5ytdMXhVxVdbh9RqMeErzDKtQdoy5rdolKhbozc3MLGlQNT0bscoZ1cVFBCv2U7OS8pEHV8FQ8mcYky2lFNT6tB+dMR81DDCjk02NylHfj3ItSoZ6B/SI9a+MkpSuq8Zl9eB24R8h4JJblkVxVdTC7/H4ITQ5sH81qqrmcbYv2iCJumtwl5yFVZ2sHWwzaL6VSoSoR7yvQwfzOdNn5WNXdpied2FX7GnpePodQnarZ8K6SJgR7xXlI1XkV56a8D7syX1ddarlT2FUJrJocaEh3a9qdbJOSYDWWxdUHUKrjiRSb3MMti2sO4lTXNXK6DmxyygckdLx2HqO61XcGWKX6AAW6XIdC11RzI4aDORPp9MGyuD5fV12aM7iHEDHWGYyNLjfk66qLu43shnpNDIsBEhx53ChuvBBePeKhhoFM5KFG4oHiAbmq6nBSYazuRDxYPDCtqEZf1fkluIeKB2U11RwQi0yrljIgHikefAG0eiBMW9rJK2uPFg85D6k6twhvwRuIq8VDE1g1tamaO2RfKx42j1Hd1jcOvpv3cPHwgzjV9dSeHjsTIAT7iPOxqvvpzcFw6FE9xu2CfGRWVe13oTdEpVDU41F5hOrzQ2QjOnexKR6d1VTz3aTbTZg2ElWPSWDV9MM8Wdp075XisUlFtT0r4hNXjIS9fJyGVUsH/rePKIZfwINOiceLxx9AqY7PVvYeJOHvp6R8wjxK9evSyCa7oBg2KO4QT5zHqG4bCDDGKgaNkW6XT8rVVY+eyoDQJHA3Io5lVdXej2kfxF6+KG7SoGqIMjdi6VD0+AGU6rhJC7QajXei2XQf+Xx5cx6h+mypJUqQ1OuWeZTqtw3716+zPVNgK9UV1fgcrmsPAis+k6+rLkNGed0+xW7ospOvqy4j2hnh+DnTMk4qqm0Sc1hH0sElkXhuVlXt003KsjTgiCuDmN09HHN8HlJ1nk3VQo2r8FtSIPOcVlWHPbXwZXCohJo8j95nmXELWDg7NmBREecYeQIZXXqFrir2YxVAM5dZzP0uKe4ZxArrqXwIkQXVHwGUPpBPujyvr9JJqoUmTBmGH813b6vYHfv/88liOD87wsa1szMe1elwSBPEGD821wr2z812u4iUsx4v4Nyw7oI596YROQtEUPleL8z3UmEVeYt8lxflu7hTrDGcnsRtZQ4dDLHPR/27oukYTS/ONzX12x7qTZPn4E7z/EatXWIIR3N+axVbCLEuRrj+zDXDycdiguxvDuclke8UF6OkdpjCZ6R8mYTv0+kViuRgiadwTzpBzoIzHQE2xCzcvjdryNSGbRHm+XIJB4hwpjukMAKzfUWSM8TurBaRibxSJ/kqEUQ/mNDIWNVXSUqmIozEtjue1KNNrF4WH8CWXj3XwSdveqDHa7Ie5fFsNt65AJXXHuxzIUKvyzplLQOKMiYIDBFqYHKvP9gnxOYz3+UNJC0yMcwwhi7C43SxE5B9vVEq3Yb+qlgc9gvZsea/W8I1oKteFQ7/PyRxfZzhQiwAMmBvzqEqWTLsLTLqpq/V+bAvyBkn1eyVsxC3yj1mOtgZj2dItpGzeoccjLahVnRLMwyUL8ZyvT1BB+wws4Z3JQ0hbCxDvzdB2+xesob3pQ28dWUN708aaN/I0B9I0Dl+qvSOGbGB9l+VgzhtgkzfhrpqTDDvlDFBLIfPSlyTc3Ve735d7iaZWIgh75TeLXGexaIkNriJW3U8CUm66kh3N27XoeDaLX1QL2lAY+SW8/MSq5dryhzl5yTu1wfxvI/8sIxYbiRUM0YaiADgP4KewXgTgRC40qSAvg/o5njUmvSxZWsSv6DZhMpBP3rcG62ijRv6XobDboAp/KJE9guKuD0Y9sFWZUC3cJS2/FhOuTw4vGi6h8s/ooshfokIjbCKaGTx1nGzn6HozeQV8Suk/8pb6ITpRyUyfDETSfMmX5C48GfPAbbwbIjuoom7/2z4cLATIayAjn4i37PRRQX/2aI+KVFJWnLG8CnZj7BhjbiO8wsWDEEKHvh0LtGoYjf4WPkb8oJKV067QvF+U3Z13uaLUvwW6B/Yu+ocBLW1ZpTgZkeYKvYNVHl2n5Dit9k3Dg8kgj8mEZroBsrAzEA46YC1+t2kLWPHySaNFYCWn9fDzNKtvybF76k9QfO2Ah2cQb9aWN36HNeL4velSvrQjMSXpfw8bvi34O367sgN9et7sdiTf5DiNzfnGr6QW8Fge7w77Ac72ExMvlcmPf1DGVNAocKLMoTJ1exgoeMmLOIfqSYwxyF71vAl1YAUBgKqmvhjVVWxNupfZnHAq3Cq5JT4k+SCBqtLqYSvJHV2OH8KDdbumLqvIJM0iK3j4PTPkn5Rv60FtCK+pgVEC5Wmyr4i5Z+DDNiHXk6D3QnZsnZT5JpM2i/J81IA8XXFrg6zYJA0qZr4i4xArCncD4FvyPRyVdxniL+UZ6L9cDrY2oIFf9gQ3wT/AZn+KjRhgv5/lVlkTnFi8W5DfkvujWGi9h5m721PcR7DFP8a2oKMUet+POS3Ff/eFCs63U/5/5s5NC+vg4RUjJDxb1WTnnGuqSz+jW4iR6QfBdv0gvHfqRa96j6v7bL4t3NYtZkD/R1Jqk7hGsXV5QgTgPeBz8REcX/679RTPAoPH0TDTcS2f6+DkjpEGUOt5L+njlpyHrZxqN5+m1KlCPRI+G8w5Hcl2U4dsSEv/ZsM8R84eXbg6vTtUnyPNoADH9ceFv+R1pk8Jm1qsAxolPh+hrPhbID5TxkGzOm97VtS/EOG56cR9OGY/58zLJ5XuH9Uo5ORa8tYFv8ltQw8jHT4e6T8QaYcwMHSRlucFBQfMMR/ne+OC8T3SflPEq0c8Nmj3Z0qDmSQu3iNIf6bhA3DMqx5c/rvGW8WFBy7ANOPYQfyfyRu9AI3yu+Q4n9mj5IA01TrN6X4X3KY5T85WPo2YnwkzBVrRCFh7XWGeKGxG59/6fIio4d1w/VE70wdId0upbdfZYgf53dGOICm1YzFy6R8sUFv+/S2XQQQcEVQenA6xuwR6wMGsZ8wznJGtYF+fYwuXmqIl2gcm1csXmzInzSGUJwktlhGJ9XD07rWiEa7yjReYcifAn9alNReiTZjiES+bB6NyCIWP5Dyp+fRZhxDz3dQi7EE8l5cicACkm2FRj8hXm5EOxtRv0LsftTAkNzHj7DocXQXhbXnMLNXGjh0bDei/kC9XvI9A1JSbAf7sLp+QCYDzRSvzqEt9V3iIjRDIStqpXFJjzNq8tni96V4rW63IN6ob4IgmTHMHwuH0KSPsAm7LNDZOK+HFEfwNAgvorPM0y8bMM0ZdKQ86A/aYB9zxNhvZFw4haPmtRRPhr3mFEed8PbhoOTPGGwuui+2MinenGT0LSwzCbLGhxq0vMWIBzuTIQ7EydW51x1FQ3rorXo6zmiyO0vDnZcY4m26gU4Ms8EElvF2Y2NMbgUHm5Tyz2qc8mwp+h0aTWebFPlOjfTJulPsu/Q4NcwPPoL8xvcQBdN7drVu3w/rIUSCfu82BvE69wyg02fI+ID9OU0TiRxE1NBTQr5HI8GoSnBCc9+rcYrRFP0+jSZGU+T7NZIZTbEf0Fi1wyl0TEqXnaU+iBvNfjT2ht39DWim+C6ialLSnQmv+scM8fPG9myH84vfN7D5kdH6SAeKfzDER4xuD8rE9wP17kY0hMjvM9pzBHGrieTWBFWMJndIx+tj+poF90pwFRRiFpSQcuI0FjaxMWfRI/YMmkGGyL+qhxNANe0d4PyAizLggtwjClsaxK56TNUX1LiVC5kNLnloYghtKYUGL8kbK0CjsUvKhflEuIWb4F4HgpwOoM7/CD7nG2207IPUGXbT2Y2glXcj8C7CKNH+Vh1Ewz6GgMvexLCnhHHPeGdjEFX1m2aUzcTjhV7+8Wb64D9h3vnbwpJ14X6i2HYCp1y3ccsk6AaYfwcCsKQbf9z6VnC7GvDvanTABq6onGbN9p2wQxfIuLU7jbs6bijMjZD5Q0w5mYKe9AtwdT7XuUKzXlR3WiM1L2wt8JzdYTt5ooCFyPIrK6KI64bscYeeLdGuim1GLORnvjg3lKJnFCiLrWAo4gwmqir3QhMpb6NquGufezgk+vQeCH/TwOJCIZO3MCAa3GI2LbtDr0YAoXXZpv0Il63qA079XabgVz5QSiLTsSsQqbrwNMwwNK0arraDEF3oA9MAF9xmc5VvMAtB2LLW0GaGrTy+qAabd4RgwWdWROi3mpYZ2gAl/w4HLsmpom8m0310/t5awW04KEidUdrdNdUy6RmScPL7qRLUgmnp935EYNMPj6ifWcnkRR/Ka3EUGNkJ7LptqW7F0F1dZb0snT8IAkrsFeMpBQhQB1zcKgAsz7CyMDuAemr554g5qNpEo/Qs8s8M0IPZfxl0btBjmkVFPRb3GrIU89A4iTEOrdC2UB3OoEvQtoMxjjganvbswPId/sRGWB4tiNRfnhhWQC8zFE6YbTPtU6yFDVKx0omA5bewilWsnSTUonc6rDFyaZUu+ZcDRh8K1h2+5V9Zc+m7MkCH/VZAmCMOeStEaXYugIR910lrZNJYweInjQYsIsZxCA7CxNFaBhQJ3E+QDtlPNBKyUBYeixVphDCqOjZ8IiyM4hAgFAjUNnaHsE2W8VvhCQa8+3C8UI/2sG2URAHxRtTcRbA0Ra2oKI1UnEqUcDVKT7/dEPICTxv9JAfXHcK9i3dgIedRNGdY5LsM2HLGjCi6fsX22ZhEq5lVpNOEFwwBGU23U1dfTBXqCRui4NVNlrjQzyR9ZEolwRiVOUaAqPN3QwKBAv7K+WbNJxxLQ33mji7CPpXC2bty1FMfNCGhAXlDCXHg4fdAxKohRrQg518hSZ+3ua+xMMjohEAjRQQJp6i5XBAWLm3IpYIK2N/CaXo6Ll7gwFvKUhZZ0mkh5cVkksI4mnWj/QrKg0lluBBdhSeMDJPnYi45W8z6ZAPmuLhg4oTeL6PDENqZTJ1e10owKve2REEK9ndKThzIIi2fn406lA2IWBrnxFyqb0XxW0U0TO1iWR6G0k+7qgOSPjGClLvFERwZ4dH4sIQwi0VyNBUczDR3oDQKI+3dkJvL5WKz13PgvvVKVRDa96DJpTX7dPLOCUxgrQnn3OFvnd16nd95lKfK7qmOes/I8IJbUBTgekKr1vH4i9HiWrb+HOyQQ4xFSWLpGKvH+hD0sgamVV7FMNT77HxpgkkZNoxfnZSMw7opnvZaDBmzwQxxIdifJR9XqIbiWU5RYW23ObwFtBARoRADoX0x7e/swDPXcMgGdmkTS4WlzeOWJ9PxHkJXytEeUudsXKtjSVBfwXxy8jwMsesA2ZA4906dPrCyjmlhmdMjk7G0yzzKhHlym8kQhXmSxQvyWboAnwvzPdf1/A9ONJHGUhvsUKoLTqLXHe11Yz5z6CP6s7DfI0091GxDLQ2uVyJSWw6v1UOrapGK/Is4REqFyY8VUrUz0fq41+X53C2MHDqA92Edpw8annWQojXE2UhIAzWEvhNWZDwfsBl4ieJKYwSlQn+d5k7twwixVNAx7M7KMoXkV7AB6RHk9ngWT8YzXTXis92JhhNjSB9W61Yaq5ru9c8RwIoqS3Qy16jbivqxMrbHyXQwmjl9XECJEmQdwzfixIFNDLI0NuAjA9yWRhRuYTg9Om7+DeypqQdJNwqYYdX117XN+jai9oCMU4Z0wYcd0cPTGzgwJK+PLY7h6niwz2D/HEVn04pxHo8V4rEAKJkNMJjLIK6pns6oGZ09MAVMqp8y9zsUjOsze8AZJ0oYEtVFJ0PP0nfbSjHVeBR5cNiEvWCODriLEzo5dJHfgxOfNyDiOQF4jBcF+kDZQTzMYjPLrq9ABKeNhhOqijH/6Fq0v0n5MrjWCVMBdUrnbUEAdKMJv7QTxeQNUCkENBOc+yiRCxuJ59iTuLFGakKtkKIuPosVOB8dgAzuS7+AICZPvggdgean9Asb84uW6I2D+OgcbMmIuX9qKYVkaupSC2px/tDE0QUYDVKONFHNRCy+hPhijkk2YGQnMleAY3dCrUqyVCShNAt4KJVXLL5oyEW04Vyi3oM1OLUEjweBwzvB8YSqbrQpwMiOLzid8yaN2zaclGFleKQFrwxiNJBxzYGjvO4MDgy9X+JIre7aiwNynmqrL5FHZM/5caj0DsbHTY8hFuPEnSHtvTTewEB74F8syuV+BG8dNRXNQzAI2Ai7t1h8wpArSnSJS4vFpwz6LmzeAcXi04Y8gqGm4HZFHOW1SPrUlDXAMC6Zw3sXcEJ4/JS4dJZ0SchXSGLwK5dNUMuUIRZfNuTlvZz0v2KIK/bm5PxVQ1wJ172OSzxavavoW80qQqAAqwjlkOLqnF0m9h2LzxnymgCSwGmiO9k+uRtxSiTWgUtTe3XkpGAmUFpC6EfTkQ25MYSg+XSi1RkLafEW5Edqvuik1k5tuSF0cspZawP653UhUVpwOQPej3a6yDXgziUGHQOiw0YPPFcLM0Ak/EVRxEBlOuKkLltTlHMKhRVGW3k67vZ7WBUy/Hxzb57Nb8KGeAjxLdj3JCEsvo3AOZG9cQMtJrzR3EAGVouBwiiTES5YZBGT08oei6/hvMrSEs+TC5SQ6Q61Qi52e5SsE0WxFFOWLUiP9MtJPaRhnyoOJXVLpWUZ/XSxwi9Ig4WSOMygXgsEqVxFFo4cJggeVQN73f0hpALEJfGcBlC67OuGvDQ3kXSxv2GIyzZBqa0yEJjv5UzdwSpCZWDh++7uLB70I3vUG8KYEEOTW8HqXsEdPYgQTuCUuBK3jIj7oapDeKNha9QfB5R+F39nyKsZ5Uc51DUbyRLG4m8NeS3sV7mKIHrubgS11sfTRXEdj1PGztzbDvjd7yoYVlO/ntvs7A3v70hxQ2WwuWlt71LUu5ybM3yGVNvKAh1h+buCJpqxqHBJHCXxRIoK1qtVUjUnZmuHmDHDhR5Rj01+AwQSCbcxd0JhiEXEFwMSHlayNoB/mPa29zGEXJqcj1smVpN1M4ojcJMwi1Zlh9AscKtnFIvvYAugapmGoV5FP7nNYAEIqX+YqtJBwT9vJ9IeFVpyw9ghuKYCXDlNGvnx78JgKDdCGWhR1985CNNHoqxOtCT9WKTKORlNs42iYOpPqoo1+oi/VDuOvwu1m/F3sUbHl6Uafbi/XLsNfw/V6MdOKT2zUrNNnNwBHa66rvre64hZqfjqR9eOUp9LaoS91POJ/GX8u8EnW+iL2uWcIbyiRX+vbNjNFsqr6vRLJldXCHdNJcTfaysUZVxXdVZbTON6QJbp6Qnc0FBZhRsrThvFAygr+0Cbvt94UIADGf900IODhsnf8TyEuHoo0gJE52En8efhlSo9/QizXCY2H6nzTY/yaeRH+zSBx+hc72Pph+lQPo5+ABnl49v8YzFPCNTPHj9xTf2GjfoZomMBC+gmmsxxQtxMk7tF/2DLrWX+vZbbyhVamdsDzyQm7mAW7lzn4smeY4Vqwk8J3JbPP033VKdB83kaYlma4dPrZpl/J/QZTtPjH8Z7ZrkVhiwXUyUJAZWJf51ZsVwvTBavAljJ0KbkqunbNMuq2woVrVUcVVf1StYa6ENs0c+C1ivqC8YTdXtVJWPX6Cf+fLriEH6ibiknEllaaw0HYsAGfSJl2bwYBSTgSBhFWnksCc2olMC5ZxYSnG9WHCK9mDK+lLBY5qVYTnocQo4QZ3GFXQls07dqitjhfI6VfhNbqe/RwHOaKceXqLM6oEtDkxbvMhRYI5b15SQsReyK0Ldt4gzwlQiJy67CX0WzRHk1SV2hrqFJoLyWSsXXdcxtshrXYwjqDvAGIovyRio1qQeYHiW0kk9EH5gZ84PmTOrBmWU8RMv5oUgatxq4j9Cm+rAK/W4R4nru9fAK9ETDj6g49OvYLv8G5yMr2e+ZP8pueDW4CFKFR1dtDvsfAzNU+vlYaAEuO+iXoh6XTOfxNJzD1vcEpbRPRN7fBtc80pP0VI9RqSV4Exweyfx4oms3N1UG5ZammtuttHKc40XlNjiU/Eezt/v888x3oEh4uBMwscHEnhwk3uApsFDoh8ohPxV2irNgUn0arQKN9XSwQEw9Qxv9M0NcZ6h1g/K4uBmgEcplk34sGpCF5ffqNslL/YRphRJCqDnNKmmkrU22qt3VKvwufTaqmK/59qqCHKWsgE6YyCURT2t1l9iuw3ecbLFiNNS1BiDQb/D4LveuOKbq7KXQyQBbVoyQ9P8+TvqBcTFO+n8+TgomtLzNdLbi4pdvyP5sji9++TaPVJ1Xe/zCHr1EjvPnxS/fkrrqcvHLNy3ti1++YbK0Y9x78cs37UYsne67+OXbJoUEDTjiSvaR2v+nX74hArz45dvFL990fABbevVcB5+86YEeF798Qwn2L375pjHvlDFBLIfPyotfvomPYtlTHHYDTOHil29wYSp2g4+VF798Uy0Xv3xD88Uv36AtyAO17sdDXvzyDbZTR2zIS/+mi1++Qe7iNRe/fDvLr7U30K+P0cVLL375hn1+EZqhkBW10vOf8Hz/4pdv0RQHm5TyxS/f8mepf4Ev3/435R4AAO2aeXRXRZbH6/de+CVAgLDKbkBUFMWgNKLkVaKguEJUWkFtDcpmN0JEUFSMCYQkbBoVWUUjOwoa2YyEhCioyGagERBQ4gJigxIVFBTa+X7ve79fLnN6zsz8M+fMnPGcpK7vU/dW1a1bt5YQCjnGNfE7Fj2/06mTZ8ybE03hjXUfzRjQa+TdPUf36nvD4O79Rw1Nu/OJO/rfYhqaRibU2LQwMTEhYxwTE6rRY/iDox4eOGykCYfinjHG1DQJpoExISN2TRsT49RI6z94YGKn6hrxLPCfFPVCVGhI+fLMo0eORH744XEacsRQWxq6cdjIgSOG9R+a2HvY0CcSu/cf9lj/R03Y/PfNPhtiB0uljyH0sU6NijkVRRXrtmfh9/KKkopVFaUVxRWrEuVTGf53zfaxFUWJFWshrgQpwv8Wo2Yp4IqKssTt2SKUAOSjCpS3P5eIogz1imCiePu47dnbxyVWFPtVfbPL8bMa9kSBra2CjbLEinfQizUVJduf3Z6HT2A0VnyWPdQo2T6ZX0Rl+ziYKUMTY/FhecUqVAkUOyb+/9D+Fw4NqyU2Eti1801WjVxjmvoRjlW6VYJ8oqn8cx1TVyK98Th8aJaNX82JWpiWppXT2pxrErEGzzcXIOAdAv3j8hfWcMhcaNqPN6bAuejW4cNGPjpwxIj+I83tAwePGtp/hKn+dGnk08Wh/xnH14L7pKpv9n/E8f+HY+r/8NBMTGSN1IgNmbFpU3518ky7393B+9uFY7A0UmPHGlNZw4S7YEfJ6fN1K+Clq10ShbuEB/q4FDj+fTcHROGB4ZewbZjxr//YETz9JHml4i+FwpuDCpmoMGOji0WVqipsDoVPBxW2ocKe31ihQFU4HQovd1Ahd+foeqiwIdMd/88/DqgKy53wPseE9zpYzjJM15AajCyz9d3zTSjkjDVZ8zUJhTN/y7wY250zzmQN1sQJZ+Y36WdCroOB1NLEDWcO6nY/reWY9P6axATWYkDMUk1qhDM33nylCdUAqTylSTicOfal7iYUdsab9PM1iQ1nZv012YRiQapu0SQunDlrJvoWB5I4WpOa4cyJ16T71pLOGmmtwFpNkPLNmtQOP732xnj6YLzJ2q9JfNQHuabC1aRO4INaIOXNNKkbztzy2nXsQa5p2lGTekEPaoNUXqNJQjhz1+iLTCgeJLGPJvXDT7e++xv6OtekPqhJg8DXNUEOj9KkYTCeOiA3ZGrSKJz51ZNT/b4VTNekcdC3uiDmDU2ahDMre99KX+eaPes0OSfwNftW+akmTYO+cTz5hzVpFoyH1hb/qknzwFoMQntPWJMWQezEgkxN0KRlEAe1QNJbaNIqmAUulMlnRVXr8NNDBh3ydcov0eTcQKcmyNEumiQGHk0AadlNkzbsdaJv7XR3TdoG1tiD9r00OS/oQQ2Q5D9r0i5YCyGQvvdrcn7g0fogS4dockE4c0fbfZzTPJPzuCYXBnNKvw3J1qR94Lc4kM6TNbmI40k3oQYgXadrcnE4c+51SJDinUJNOgTeYTstF2hySdAOvXP4LU0uDbwTD7LhXU06BhFCH/R5T5PLAh+4IIs3aZIUrEaOp/BTTToF42kIMr9Sk8vDmR2Xt/LntM93mlxBnURfp+tPmnQOdOIc7gOtIp+7UCGdrkF6TdfkysA1CSSHNOlKnUS6ZpxJzdbkqsA1DlKlaaDJ1dF0lGNSh2jSLXBALRBTrklyYC0Gya0oThMvWFa1QAov08QGOo1AEu/SJCWc+eR3C5kmsDdN1iQ1SBNMvEWrNLkmGobjTernmlwbhAeTQdcYTbrTO+m0hrTXXJMegTWmvbiOmlwX+Jo6Q7pocn2gUw8k6SZNegZLkWl8Rl9Nbgh8wHaqhmpyY9BOY5C0UZrcFM4cOaQ+Qxc9yNXk5iB0mfoTZmpyS5D6a4AsfkOTW4Nk0ASkcp0mvcKZN325xoTOASnYp0nvcGbbost9HxT/oEla4AMu0tSQJrdFZwHHmnhNbg9mgckg4RxN7lDJYEOiJn0C79Da8Xaa/DmwRp2TZ8XbnYEO+9a+syZ3BX1jAjluNekbzA8TSMUNmvRTCSQ9TZO7g1lgAlnZT5N7gvXDXi8doMm9Qa9prWi4Jn8JrDGNxzyhyX3BzDUFSRynyf20luiPtN1kTdLVSKumadI/GCk3kpavafJANHrzTNpiTR4MdOjrMcs1GRD4uqGksNLI54FBZquLRCVJJ0oGBQubiar8Mk0GB40kgGTt0GRIMMx4pKPEJE0eCiaHiSrrIU3+Gljj2bFyjSZ/CxIVU0t6jCZDg6B2Qao6aPJwMKHUqbhLk2GBDtNR+jOaDA+mgKfKgtc1yeB40rkQkCp3afJIsBCagWSc0WREeEzCpcs5Bbm4fGjyaDAFBqSyjiYjo+f0XNO+vSajgmBzQCqu1uSx6KaQ64d7lDwe+IDWug7SZHRgLQakcrQmTwS+ZjrqywCNkieDoGZqKSjU5KmoR6GzUpMxUY8iiX6sydOBR2nt5AFNMgNr9Fv5z5o8E/iNPkg8rUlWKOoEHB7jNMoGEi9wkVQ01GgskIQcj06nW2k0Dkh6URuo8kKNcoAkYzPzmE4ajQ8F0c1kUdBVo1xoicu5Ir+5RqM8aMm46gA1ul6jfGgFB/Y8U3y7RhOApId1gTLu1WgikCxZZrP9gzSaBCR+Zw8rH9FoMpD0kOPq/JRGU9BDGRcNbhir0bPQEoM8tm+cotFzQBJLTHY50zUqAJLA4KSkzdXoeSCZFKa7MUs1egHdiOa7ohUavRjRonv3l2o0FVri3gSHV+uOke+4j6PnibQ21piWGk0DEmv1kNnKkzSaDmvShxpAZq5GM6AlK4T34so2Gs0EEt/WB8oaqtEsoOD8jkPd1xrNBpIpZqpKaqbRy0DiQOaq9B4azQGSGWGyysjQ6BUgyVa8A6dO1+hVjEu8xLbMYo0KoSVt8aCY9HeNXgMSR8UDFf6m0VwYlJhh9smI12getMQbTFlNz9VoPpCsVmaMuD9ptABIxtUQKOFmjRYCye6VAJRxr0aLgGSWqdV1mEaLgUSLmSYhS6Ml6Lx4g93IyNfodWhJN6g1+hWN3ohosRt7Fmq0VLQS6UMcNIs1WgYkPmRaq9qi0ZtAQVrLNVlfafQWkDiKBjNOalQEJAa5JAeENXobSJYkV1BigkbLgUSrEZBprtEKoODUjwvRhRqtBJJUwwQ1v5NGq4CC6M0z+d00Wg0kEcV80ud6jd4BEvfSYN/bNCoGEoNc48n3aPRuxPPUGnq/RmsiWswnaQ9pVAItWcv0Rk6GRmuhJd5gW0VPalQKLWmrMVBlpkZl0AouAOhGnkbrgCTmuaGUF2hUDiQbCg+S8bM0eg9IUkoToPbzNXofKLgEYL6Wa7QeKLgF4MGkRKMNQOINTsroDzT6ACg6KT0qNPoQSCaFF4Eb9mn0EVCQUrCHfqPRxoijaPCS7zT6GFpikFpJxzXaFNGKlXSdGfm+GSrSPabrrH4abQGSyYpHTs66SaOtsBZkIaD1Gm2DlswIb9Ppl2j0CZAsrjigxByNKoCk50zyqfs12g4kBmsgGWY01GgHkMxjU6DKbhr9HUgyAxNvFUM3inYCBUPGPXySRp8CyZDrAVWs0GgXhhxENXIy5zGKdke0mP/TTmm0B1ridubJuBoafQYtyZN8G2zfRKO9QLL8mYVMB432AUlbTIZ9UzTaDyRD5vNgAtd4FH2Obsh80eCQ+zX6AlpikIfW8kc1OgAkaY2nya5cd1FUCSQBzxRqZmv0JZDMMrWqijT6Cki0eKQt3qDR10AyKdwa0vZq9A2QxEYDoL5VGh0EkmXSDAFfGdLoUCh6UcC6O8vz38IbMikGaGRNjQ7DYHBVwN8SzpqU74AkDh2go+dq9A+gYEPBDfhijY4AiTdosJA7bxQdBRKD3FCOW42+BxLPM3cV3aDRD0AS88xCW27X6BhQ4F5o3atRFVDgXhz/Bmv0I5C4lwazRmj0E5AYpA8HjNHo54gP6Y2pWRodh1bUG/dO0ugEkHiDW0OfaRr9AiRxKN0o1OhXIOkGk/yA1zU6CSRJnqfrnBUanUIPJebp+UYlGv0GLfE8xzXkrDj8HVoyrjqSJ7dFvp+GSnBlQJ6cqtEZIOleXSTD8oEa/RNIFjIzXmpYoz+AxO3MeOn3aZTlBN3jPd8s0SjbCQZFg1kHNRoLLTHIJ8mK1hqNA5JwYjIsv06jHCAJDKa1qgyNxgPJjDAZFs7UKBfdiCbDjNUa5UW0mAwTD2iUDy3xbQJQ5TGNJkBLchcTVFFNjSYCiUE+M8adNa5JMCjd4LU6iXtNFE2GliwTnpOHpGo0BUjcWx8o4Q6NngUKbg25pvwsbzwHJLPM3JWfo1EBkPiQuStxlkbPA8mkMHe1L9LoBSDJXTzxFnAPjaIXMS5xFNuq2qzRVGhJW3RU/pcavQQkjmL+Tz2h0TQYlLDhWkhyNJoOLfEGV2tObY1mAMlqlaTRRKOZQDIuPuZntdFoFpDsa/wLQNLFGs0GklmmVqMrNHoZSLS4JE2yRnPQefEGu5F01lS+Ai3pBrU636zRqxEtdmNAb40KRSuRPsTW0Fej14DEh0xrGQ9oNBcomta6PqzRPCBxFA0mjdZoPpAYZJK/d6xGC4BkVVKr6WSNFgKJFm8NJ1/SaBFQ9NaQNE+jxUCSbZhCX16m0RKgIHoxX+9o9DqQRBTde8v7Gr0BJO6lwbStGi0FEoPi+d0aLYt4nloD9mn0ZkSLt4YbDmr0FrRkLdMbY45qVAQt8QbbWvyLRm9DS9pq7Mjf7yPfl0MluDIgXdfXaAWQBHxtpGvTWqOVQLKb8BWifLlGq4AknzRB4k29WKPVQMGVAel6pkbvAAVXhhxTeFCjYiBxBXNyenON3gUKZgQvptdptAZIZoSvEIWPaFQCFOQT5OQZGq2NeIkGk5ZoVAotMUit1E81KotosYfmkEbroCU9ZBaaEadROZBMFrNQWkuN3oPBIAvhct1Bo/ehJZPC82RTq9F6IFlczK5xfTTaACSdp8GEv2r0AZAY5NZQPEajD4FkKpsCVRVo9BGQZAYm3pNzNdoIFB1yQbFGHwPJkLlDHd6i0SYMOYhqeGOfRpsjWsz/i49ptAVa4nm5NZzUaCu0JE9y+U+N0WgbkCx/riBTT6NPgKQtJsNLmmlUASRD5gkqrq1G29ENmS8a7HyRRjugJQaZ1tKv0OjvQJLWuPxbehrtBJKYZwo1PTX6FEhmmVonb9NoF5BoMXftv0ej3UAyKcxdiwdptAdIYoOX66WPaPQZkKwU3hrSn9Jor+PfGuJq1gyFqv8RXvTf5RnnmQcSurqNnrK2aYKTPDXuTvfOdm2aPZF94q1ZMaZGYdjEy78Sgj3D+4Uv1AnVfSYE85eYjs4zoeyQGRsy40ImJ2TGh0xuyOSFTH7ITAiZ6SGzAFqbQmZzyN0aMttQCedQx0x3QibcfFLIhN7q2Sal8xVXpDif/HpFtQDjxiFC6QtEJrRwdg+LL8Y5s+RHD6UvkDlEUQEE/R3e4LyUa9MXWAfutlGhatGH1iGKCkTmoGtC617dK6oOhYee/95z8pt8Zh/xalkR3h6x2LoUcso32c2vfWBbXPa5ddsULbcr5hyzW7dMltK9Nn2gCJgT++R3h6zrdIi1qX/6AjW2eMkHPrHOtO6TvDrOEevCgJf119P2lWMX2kMVTor7Vs/+tvGbsSm9HiiQ0l04e4MIL2+otJkpJ6y7IOOM/WbBPsvyie8WWocC+ux3GiUG/vC3T9nau+eVuD+MSRFhxrAGcMDAZJddmNa9ttdx+RyUkzz04C/eGz/u8FimTTmHXfqL13XCNTY2+yXv1B0PWvfjx8q84Q3G2ZIb421l7ynW7XLf1fbBhBk2+6VxUjoTr6msFtrte8JiDnJEcO8Z0E2EmktbwgX3Wfedn894f3nuWsty1sxm/gdba7d3qKKtfbzsVc+tWnS97X8wzaN5lu7fb50rwtHbiv0a53y2zWIaPPzY9za1sQiQL+3Abgc8F4bsrtEPefMzSu3xMzuT3VZ3zxcHRDxiBmJf+2ybHzsUBg8KpzhtihqkRAUQ4zQcZ6qFVRt/sc67rWuk3FX3e+sgXVkRPkhMsoIooK5vEKUxvyCY4Ddp0v1mwWwR9p/K9DvFET70/MNe0uftGCieO7VpjH065U+WZdWiXCsfGFes0f9ghXU3v3Ydq8JtT9sfxvxh3e1tZ0tcsBWWbtLn34jQdUIoBT61bv+DCdJheDnlpx1bLfzYNqWw+VuWpbRCgRPEGg9/+7snKueHszH/oRSEf7IYZdfZCkvfeeh/mYxVfHZX3UttVHj42xLr9Pn6fPtFu1zfMY+XnesLUS0KjNEScYI76sU9IhQ2P2YP/77Ec7kQOJufjq6Zcntxa+t+kJiQcs5nvSxL6TiFPl8vsKzBqXapAtda2th561dWjNJfbIWlO7DbqyJc2Cnfr8HYpsrVK2+wYqOw+WWWRllKKxTYLGtIP6jCjtGG9JRG2XW2wtJMwLxziAgBPxrEMb9lvi4ech9M2CNCvUt/svcM+N26/J/Dv38nH9t32uh/mDx0kb1+9c9cgdblop7aNMeeXvK2lM4fO4vRq2etu/7EYREYDlxibh2ndkqzmDstSy54+TBr5kzJMFjbHgbwtQTqU43elFK6iBIp46lGHZkhPKfHpKUiyCqjwEXNdOGy18h8HssOeU2sfGj8Zk/xpyzuGcN22L+tHYmJKpLSodWoQGN+QxyZ88qxRSK4boePRLhtym77Vs/XrPv2iMNYYcuQbw/bsS+t9z8sa7lXalybftBX2TOvCnlzkZRiPyrQmHnbwZF497xuSF1XO7V3n5eMpeO5yHnJcBZcsjb5zJJHPLfg/RPJnLqL7q3nsXRvuXKCCBiDB/MeEz4zDT5+78VmN7bu+eGQ/fgxa5ERLGxYqNS0r//4gmRI9tthNc4kxhjrJxYKcLNxzh1/xHc9hb3bfrXO39Yeh9b3TJo9fIGTePS2k9b5acetlsHj5pTfBE/nWWbO5AO9reTVXg8kYK472Ibjyj0kmRYQUjmbXKnJ7tUrN3rYPErodZZuv6s6i4DkkAynSF6C4JagunjJfIbo5ZaCDyUuvCQCsz2GnkxPcR/wEDwebHjYS25BovWwrd2CNY0FQ+HZ6W/K2qjsjYyDBeddHneU+7LsV/gwHOOITWlx2Rwp3eEN1ovAIINR2Q7ECZOHxvpZK/lAPclaLKUVClwJK+bUY7Ki0XopL3w/Rj6s2viYdbCsvajQIW8aM1KNFBHYi8UfTvK30fUnFkvQ/DBmncVO8Y29JG8XltQ2y3Xi1u/7LgK5Cpv8HCndrhOyRbC17vJr0PlU4WITG1i1Hg8JLHPKJ1qHwrutx/sE7rFfPdkIi6kVU1iS5BKc6cRfmK98+PlhxpyULqZVhNjsT5GhZ3po7ohF3Hpd7vvN3hTvWIc+Qsby3Be+P80867236UvLCJf1wcmLzKZ5/F/lJfYhKjSLgXte3mCQQgJB0Os/BlsjBWgbQSh9AR30s3tUAPGbQGn+9XbLalGBRyCZH/nSLKZJtQAlg6XrVgvNYnZZZ/2J9v+ulZBZhtDlOYGDdTn3FI7e1hX9+i+HLqOMNSTsqNJj0lGsw65+YBa8P0oila2wdB/xNonAPCw1sGmnUGXrlng/dAvebyyhy1JaoeA3G889Wjb+FHaMNqSn96/5WLrOVlj6o4JzPZzl1olAH0jEsC2GUP2+p/z96eQdruyTLKU9CoMHLbSs8c7PpVZUGE+0wawtRrFKcficK6XLfZvCwG73+zXqXXq5qGAD8W2023cK07gQe84p33cU2CxrSD+owo7RhvSURtn1yFjMuzj5/7HzpD+Nj3gTkUvHW4dLx9aabp3cI/X9OY/U+U+jCMRHKFEbJxqMYrh1KIjJk3fMqxaiiIIJnTv+DWTWsda5f80ETGmen5PF9lON6sKDECJ1GNFMy2jFSH6WEyBXMbMWrhNut6ggiv+44EffFAVBN8WP9QUsVV+dAuz5BlHiT1BwUGQ4Mq7ARCffFjdauh3NrPeFH8ac63e01wNJ1QK0jYPMUC0wcUHrPMm4Yofxhz697wvrXm0u8+4c/v0iRCAqU4C23w2UxizD1sq0zouEQ0FGc/xMH19gLPzjgrdlUSHSpsGlPbHVPW5dPFNgQ+8ui4rR4nK35t7KVt/b9JonVyW8Sno49Ho4d3kOlom/c/MX9iTmR+wpS3lYrcCt5XNv8tBvvVEvNpWtQ64WWFR+c9yXOefclztfscI6pSMb+v67sFOc7yQK0WFQMCFUSkZ6LWNtadppcVkrLNdAEHR5XHy1AI8YB5upOEcEQVSnYG76V1PJs1NUELdxWxCB8TzvOoQFBSj5WiiN+RGej1xp3D92jhahft+rsKqQPJizOIlMYnQGJ+C/mOZoAypWjDKrsRWWuKx8KAKDAiefFLoZZ7rjuHyGU3goc9oW8Rj4kZXbwi/t9+NgUmH//PVB6/JczGSCXkqJ6c0TgeuFBiVV/OfZhcuCNc7KLrQh2YVGmVXYCktplgL7ISdXdgxHH489lds8+86jrAxm4eweHjuDqOLd7EN2t4TjZykrkWcDCQCODrPiCzJ9E68JNkoKgriipfLgQdf7YYPrtI8oSOXrV99RLWBeq6dYBEHQ8JuggB9PIkQMRvpj5iAeePmFIp9JvrRogSfrby295PBJgoL4jD/wvWRlzPsoj1mZpaxVCvAqFs6vHoLCv+Wz+UeHPC+l82bPkN9nCmjPbxAl8i0PmSgNWrwFJ6he1im5cbIvYIVJJSdSx+8xD1FiAA36PZbYnzHsBRHcZS3vFgEDt3cUf8HQiZXAYomzuf/h7RFDcDB8TkoxIgLN0r7J993jLfnw5jIXtwIRkAU9vIuU8WmlG06mZaUjX1yLBFTmwAfJODaXurwMwFWlDCIuYZdJp7J3nTJkTylhrDEeQ+qU8Y6IJ6hSbNw38nJUygccOKEUGXUszzbJDt2M07lXvakgH/mezD3yPNZUdimiLhfvFt+V8jqBvFGGh4y7OGFlH918Je8aZS7Dn72PDAdnHpPF6VuLbO4mizn2UoS0KdPhI0RMpI5ZD09gjfvzhjyXIhtul/uapzBBOoXNe/soUseEuLS5PToUpBK64NemEEUUTOiX9i1TuD06OeW1UmQLTZtypT/Iad1v9oVIHRNi6kYb7MmkZJQGET3Ab4SzKX2L1GFwHfQj6Pzwe9WCmCSKCiCoXXLjFumTw1/8EUFsE0UFfjUhXlvZJzrR9x0WgS/0P8gnOIwkUsesizEhbiwInBK8k80RYe+2d3AnxdMaXtFkBzlU8RVCY4rnMtvgQUqyDgLAygdsbpaPE7ywuPtPlSGmC/DEUyClc9G9z/lvD7tGLxGBOZGXfLlas+9cCzjz8/JxBGl4JW6AR/BCgacDCug8mtpn+Q7icpR8HKh36XLuiSl4FJmBBRKXsmdeBm7OyO3MFhR4gVk4GzVgSB5/sJfjBoUtCGsDm/Ne63KXpZOZgn/P/IeVgOdtiCHLSxTeC54VYeI1hZaXW5dPFoMHHcJLR4lsC3jE+sDmHtkuT6dyr6cw97rVcMZay3cHlwPiUZQvssjc1uXxgd3mamIpj0xRga96uDbniIC3k4UinLfvXcunGpd3UKwVzMZW+/KGRP8DJho/6+HM3R52u2I4gKtmIWphzj759UU0PhApcJTFUvbkyEKBl22p0eW+NXL+wETSIR6yxgn/KYEJBjfOZPgaW8d5yS63Xj9E/Jgxf+CWwvyOOP2PEn1+k5k8ci2pFhiogqICtH11lIj4h56vk8KtCt47jobnlfB0LwcCxiYPBBwedjrPPX5mKh67PDx8TZXwkg88ELCGHAiowgMBbUCFU3IcyyAWN706WNgIGnhShOQDl2F7Q439p6zce3DM8+89vR5Ik3sPS2mFAptlDah4osKO0Yb0lEbZdbbC0h8Vn3LxTNFChKpFF+CtbImHuOok74MPJnT13weRIOXew1Lao8ARsQZXkKjwmEEb3OrFKDI83FRHSlyE/oCDj+FN4LB/MuFypsoX7T6EI2CD7wE0ylJaocBmWUP6QRV2jDakpzTKrrMVluYgDhMdl3/uhyf1qI/DGPLLtdblCwUTPrZ2KV1apcC53nnrAxZvAqkejzssuVbwPJ2K2UXsoO/VwqqNq/kscgwummGx3yFB5FsX3rdti0Zg+Y2XEnvsLBH2zCvCEhzjP6vxaYV/rKhx57M8k/p9/Xd/GpGG9p/6Z7UA4iOURobJV0yODK3shZuX2X5XHcchbjpTCV+ps+WJh+EsH/pdtVIeFvHBw6rfhbh1S5hKECZrosEugjSKen7rFBhseA3xG2RSfwXLpx8X73qEeh+PjzRc5i7fWpnJWFJRPvSYNJTZQEaOG/kGvOe8ABe8Im96Yp9ZQQRmAuwHvnnzIobJ2wsD1mVOoIAtzcNTWzLeDfvxfpLMEicCPiT2w59YpsvfXZD1PFFBwkAq+UxKvIa56O9Oj/lYavCPIlRhKTYo0ChrSCtUYbO0wdKYfwM=(/figma)--&gt;\"></span><span>Направление проекта медиативного соглашения нотариусу<br />и сопровождение его заключения и нотариального удостоверения. Направление проекта медиативного соглашения нотариусу и сопровождение его заключения и нотариального удостоверения. Направление проекта медиативного соглашения нотариусу и сопровождение его заключения и нотариального удостоверения.</span></p>', 1, 1),
(2, 'Каковы сроки  проведения  процедуры медиации и заключения медиативного соглашения?', '<p>Текст</p>', 1, 2),
(3, 'Как исполнить медиативное соглашение?', '<p>Текст</p>', 1, 3),
(4, 'Сколько стоит процедура медиации?', '<p>Текст</p>', 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `preview_image` varchar(255) DEFAULT NULL,
  `preview_image_enable` tinyint(1) DEFAULT NULL,
  `preview_image_alt` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `intro` text,
  `text` longtext,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1',
  `params` longtext,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `preview_text` text,
  `detail_text` text,
  `active` tinyint(1) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1',
  `update_time` timestamp NULL DEFAULT NULL,
  `description` longtext,
  `main_image` varchar(255) DEFAULT NULL,
  `main_image_alt` varchar(255) DEFAULT NULL,
  `main_image_enable` tinyint(1) DEFAULT NULL,
  `root` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `level` smallint(5) NOT NULL,
  `show_categories_mode` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `eav_attribute`
--

CREATE TABLE `eav_attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `filter` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `eav_dictionary`
--

CREATE TABLE `eav_dictionary` (
  `id` int(11) NOT NULL,
  `id_attrs` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `eav_value`
--

CREATE TABLE `eav_value` (
  `id` int(11) NOT NULL,
  `id_attrs` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `intro` text,
  `text` longtext,
  `preview` varchar(255) DEFAULT NULL,
  `enable_preview` tinyint(1) DEFAULT '1',
  `publish` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `title`, `alias`, `intro`, `text`, `preview`, `enable_preview`, `publish`, `created`, `update_time`) VALUES
(1, 'Создали сайт', NULL, 'Мы создали сайт!', '<p>Мы создали сайт!</p>', NULL, 1, 1, '2022-06-03 13:42:27', '2022-06-03 06:42:27');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `feedback_callback`
--

CREATE TABLE `feedback_callback` (
  `id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL COMMENT 'Create time',
  `completed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is completed',
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя',
  `phone` varchar(128) DEFAULT NULL COMMENT 'Контактный телефон',
  `privacy_policy` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `feedback_footercallback`
--

CREATE TABLE `feedback_footercallback` (
  `id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL COMMENT 'Create time',
  `completed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is completed',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `phone` varchar(128) DEFAULT NULL COMMENT 'phone',
  `email` varchar(255) DEFAULT NULL COMMENT 'email',
  `files[]` varchar(255) DEFAULT NULL COMMENT 'Файл'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback_footercallback`
--

INSERT INTO `feedback_footercallback` (`id`, `created`, `completed`, `name`, `phone`, `email`, `files[]`) VALUES
(1, '2022-06-03 13:57:47', 0, 'test', '+7 ( 444 ) 444 - 44 - 44', 'sdada@mail.ru', 'a:1:{i:0;s:12:&quot;UCfkYNp0.pdf&quot;;}');

-- --------------------------------------------------------

--
-- Структура таблицы `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` longtext,
  `ordering` int(11) DEFAULT NULL,
  `preview_id` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_img`
--

CREATE TABLE `gallery_img` (
  `id` int(11) NOT NULL,
  `image_order` int(11) DEFAULT '1',
  `gallery_id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `info_block`
--

CREATE TABLE `info_block` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '500',
  `active` tinyint(1) DEFAULT '1',
  `use_preview` tinyint(1) DEFAULT '1',
  `use_description` tinyint(1) DEFAULT '1',
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info_block`
--

INSERT INTO `info_block` (`id`, `title`, `code`, `sort`, `active`, `use_preview`, `use_description`, `description`) VALUES
(1, 'Кейсы', '', 500, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `info_block_element`
--

CREATE TABLE `info_block_element` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '500',
  `info_block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info_block_element`
--

INSERT INTO `info_block_element` (`id`, `code`, `active`, `title`, `preview`, `description`, `created_at`, `updated_at`, `sort`, `info_block_id`) VALUES
(1, NULL, 1, 'Запись 1', NULL, NULL, '2022-06-03 14:32:33', '2022-06-03 14:32:33', 500, 1),
(2, NULL, 1, 'Запись 2', NULL, NULL, '2022-06-03 14:32:48', '2022-06-03 14:32:48', 500, 1),
(3, NULL, 1, 'Запись 3', NULL, NULL, '2022-06-03 14:33:04', '2022-06-03 14:33:04', 500, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `info_block_element_prop`
--

CREATE TABLE `info_block_element_prop` (
  `id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info_block_element_prop`
--

INSERT INTO `info_block_element_prop` (`id`, `element_id`, `prop_id`, `value`) VALUES
(1, 1, 1, '<p>К медиатору обратилось юридическое лицо, которому были заморожены денежные средства.</p>'),
(2, 1, 2, '<p>При этом один из кредиторов данного юридического лица требовал незамедлительного возврата денежных средств.</p>\r\n<p>Медиатором было составлено медиативное соглашение, которое было удостоверено нотариусом и исполнено путём предъявление в банк.</p>'),
(3, 2, 1, '<p>К медиатору обратилось юридическое лицо, которому были заморожены денежные средства.</p>'),
(4, 2, 2, '<p>При этом один из кредиторов данного юридического лица требовал незамедлительного возврата денежных средств.</p>\r\n<p>Медиатором было составлено медиативное соглашение, которое было удостоверено нотариусом и исполнено путём предъявление в банк.</p>'),
(5, 3, 1, '<p>К медиатору обратилось юридическое лицо, которому были заморожены денежные средства.</p>'),
(6, 3, 2, '<p>При этом один из кредиторов данного юридического лица требовал незамедлительного возврата денежных средств.</p>\r\n<p>Медиатором было составлено медиативное соглашение, которое было удостоверено нотариусом и исполнено путём предъявление в банк.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `info_block_prop`
--

CREATE TABLE `info_block_prop` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` char(1) NOT NULL,
  `multiple` tinyint(1) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '500',
  `info_block_id` int(11) NOT NULL,
  `default` varchar(255) DEFAULT NULL,
  `options` text,
  `required` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info_block_prop`
--

INSERT INTO `info_block_prop` (`id`, `title`, `active`, `type`, `multiple`, `code`, `sort`, `info_block_id`, `default`, `options`, `required`) VALUES
(1, 'Заголовок', 1, 'T', NULL, 'title', 500, 1, '', NULL, NULL),
(2, 'Описание', 1, 'T', NULL, 'desc', 500, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `info_block_prop_value`
--

CREATE TABLE `info_block_prop_value` (
  `id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL,
  `value_key` varchar(255) NOT NULL,
  `value_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `link`
--

INSERT INTO `link` (`id`, `title`, `url`) VALUES
(1, 'О медиаторе', '#block-3'),
(2, 'Процедура Медиации', '#block-2'),
(3, 'Стоимость услуг', '#block-6'),
(4, 'Вопросы и ответы', '#block-4');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'model',
  `options` varchar(255) DEFAULT NULL,
  `seo_a_title` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `title`, `type`, `options`, `seo_a_title`, `ordering`, `default`, `hidden`, `system`, `parent_id`) VALUES
(1, 'Главная', 'model', '{\"model\":\"page\",\"id\":\"1\"}', NULL, 1, 1, 1, 0, NULL),
(5, 'Обратный звонок', 'model', '{\"model\":\"feedback\",\"id\":\"callback\"}', NULL, -1, 0, 1, 1, NULL),
(6, 'Обратная связь', 'model', '{\"model\":\"feedback\",\"id\":\"footercallback\"}', NULL, -1, 0, 1, 1, NULL),
(7, 'О медиаторе', 'model', '{\"model\":\"link\",\"id\":\"1\"}', NULL, 2, 0, 0, 0, NULL),
(8, 'Процедура Медиации', 'model', '{\"model\":\"link\",\"id\":\"2\"}', NULL, 3, 0, 0, 0, NULL),
(9, 'Стоимость услуг', 'model', '{\"model\":\"link\",\"id\":\"3\"}', NULL, 4, 0, 0, 0, NULL),
(10, 'Вопросы и ответы', 'model', '{\"model\":\"link\",\"id\":\"4\"}', NULL, 5, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `metadata`
--

CREATE TABLE `metadata` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `meta_h1` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `a_title` varchar(255) DEFAULT NULL,
  `priority` float DEFAULT NULL,
  `lastmod` varchar(255) DEFAULT NULL,
  `changefreq` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `metadata`
--

INSERT INTO `metadata` (`id`, `owner_name`, `owner_id`, `meta_h1`, `meta_title`, `meta_key`, `meta_desc`, `a_title`, `priority`, `lastmod`, `changefreq`, `update_time`) VALUES
(1, 'page', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03', NULL, '2022-06-03 07:14:18');

-- --------------------------------------------------------

--
-- Структура таблицы `order_customer_fields`
--

CREATE TABLE `order_customer_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `placeholder` varchar(50) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `sort` tinyint(2) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `values` text,
  `mask` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_customer_fields`
--

INSERT INTO `order_customer_fields` (`id`, `name`, `label`, `placeholder`, `type`, `required`, `sort`, `default_value`, `values`, `mask`) VALUES
(1, 'name', 'Ваше имя', NULL, 'text', 1, 1, NULL, NULL, NULL),
(2, 'email', 'E-mail', NULL, 'email', 0, 2, NULL, NULL, NULL),
(3, 'phone', 'Телефон', NULL, 'phone', 1, 3, NULL, NULL, NULL),
(4, 'address', 'Адрес доставки', NULL, 'textarea', 0, 4, NULL, NULL, NULL),
(5, 'comment', 'Комментарий к заказу', NULL, 'textarea', 0, 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `intro` text,
  `text` longtext,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `view_template` varchar(255) DEFAULT NULL,
  `show_page_title` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_id`, `blog_id`, `alias`, `title`, `intro`, `text`, `created`, `modified`, `update_time`, `view_template`, `show_page_title`) VALUES
(1, NULL, NULL, 'index', 'Главная', '<p>Сайт находится в разработке</p>', '<p>{accordion_1}</p>', '2022-06-03 06:42:27', '2022-06-03 07:14:18', '2022-06-03 07:14:18', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `old_price` decimal(15,2) DEFAULT NULL,
  `sale` tinyint(1) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `hit` tinyint(1) DEFAULT NULL,
  `notexist` tinyint(1) DEFAULT NULL,
  `in_carousel` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `on_shop_index` tinyint(1) DEFAULT '1',
  `link_title` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  `main_image` varchar(255) DEFAULT NULL,
  `main_image_alt` varchar(255) DEFAULT NULL,
  `main_image_enable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `ip` int(11) DEFAULT NULL,
  `text` longtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ts` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `question` longtext,
  `answer` longtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `related_category`
--

CREATE TABLE `related_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_enable` tinyint(1) DEFAULT NULL,
  `preview_text` text,
  `detail_text` text,
  `publish_date` date DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `preview` varchar(32) DEFAULT NULL,
  `enable_preview` tinyint(1) DEFAULT NULL,
  `preview_text` text,
  `text` text,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `seo_seo`
--

CREATE TABLE `seo_seo` (
  `id` int(11) NOT NULL,
  `hash` bigint(20) DEFAULT NULL,
  `model_name` varchar(255) NOT NULL DEFAULT '',
  `model_id` int(11) NOT NULL DEFAULT '0',
  `h1` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `link_title` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `services_pages`
--

CREATE TABLE `services_pages` (
  `id` int(11) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `sef` varchar(255) NOT NULL DEFAULT '',
  `image_alt` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `text` longtext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `preview_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `category` varchar(64) NOT NULL DEFAULT 'system',
  `key` varchar(255) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `category`, `key`, `value`) VALUES
(1, 'cms_settings', 'hide_news', 'b:1;'),
(2, 'cms_settings', 'slogan', 's:0:\"\";'),
(3, 'cms_settings', 'address', 's:22534:\"<p><span data-metadata=\"&lt;!--(figmeta)eyJmaWxlS2V5Ijoic3BkTnRaR3hOWEhnQ2F1bFBWeVNhTCIsInBhc3RlSUQiOjQxMTI4OTgyNywiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--&gt;\"></span><span data-buffer=\"&lt;!--(figma)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(/figma)--&gt;\"></span><span style=\"white-space: pre-wrap;\">Новосибирск, ул. Большая Полянка, д. 7/10с1.</span></p>\";'),
(4, 'cms_settings', 'sitename', 's:0:\"\";'),
(5, 'cms_settings', 'phone', 's:18:\"+7 (915) 022-33-33\";'),
(6, 'cms_settings', 'phone2', 's:0:\"\";'),
(7, 'cms_settings', 'email', 's:0:\"\";'),
(8, 'cms_settings', 'emailPublic', 's:20:\"info@bskmediation.ru\";'),
(9, 'cms_settings', 'firm_name', 's:0:\"\";'),
(10, 'cms_settings', 'counter', 's:0:\"\";'),
(11, 'cms_settings', 'menu_limit', 's:1:\"4\";'),
(12, 'cms_settings', 'cropImages', 'N;'),
(13, 'cms_settings', 'comments', 'N;'),
(14, 'cms_settings', 'meta_title', 's:0:\"\";'),
(15, 'cms_settings', 'meta_key', 's:0:\"\";'),
(16, 'cms_settings', 'meta_desc', 's:0:\"\";'),
(17, 'cms_settings', 'watermark', 'N;'),
(18, 'cms_settings', 'blog_show_created', 's:1:\"0\";'),
(19, 'cms_settings', 'copyright_city', 's:26:\"в Новосибирскe\";'),
(20, 'cms_settings', 'favicon', 'N;'),
(21, 'cms_settings', 'privacy_policy', 's:0:\"\";'),
(22, 'cms_settings', 'privacy_policy_text', 's:0:\"\";'),
(23, 'cms_settings', 'ymap_apikey', 's:0:\"\";'),
(24, 'cms_settings', 'sitemap_priority', 's:1:\"1\";'),
(25, 'cms_settings', 'sitemap_changefreq', 's:6:\"weekly\";'),
(26, 'cms_settings', 'sitemap_auto', 's:0:\"\";'),
(27, 'cms_settings', 'sitemap_auto_generate', 'i:0;'),
(28, 'cms_settings', 'slider_many', 'N;'),
(29, 'cms_settings', 'treemenu_fixed_id', 's:0:\"\";'),
(30, 'cms_settings', 'treemenu_show_id', 's:1:\"0\";'),
(31, 'cms_settings', 'treemenu_show_breadcrumbs', 's:1:\"0\";'),
(32, 'cms_settings', 'treemenu_depth', 's:1:\"1\";'),
(33, 'cms_settings', 'question_collapsed', 's:1:\"0\";'),
(34, 'cms_settings', 'shop_title', 'N;'),
(35, 'cms_settings', 'shop_pos_description', 'N;'),
(36, 'cms_settings', 'shop_enable_attributes', 'N;'),
(37, 'cms_settings', 'shop_enable_filter', 'N;'),
(38, 'cms_settings', 'shop_enable_reviews', 'N;'),
(39, 'cms_settings', 'shop_enable_carousel', 'N;'),
(40, 'cms_settings', 'shop_enable_hit_on_top', 'N;'),
(41, 'cms_settings', 'shop_category_descendants_level', 'N;'),
(42, 'cms_settings', 'shop_enable_brand', 'N;'),
(43, 'cms_settings', 'shop_enable_old_price', 'N;'),
(44, 'cms_settings', 'shop_product_page_size', 'N;'),
(45, 'cms_settings', 'shop_show_categories', 'N;'),
(46, 'cms_settings', 'shop_menu_enable', 'N;'),
(47, 'cms_settings', 'shop_menu_level', 'i:1;'),
(48, 'cms_settings', 'gallery_title', 'N;'),
(49, 'cms_settings', 'gallery_on_page', 'N;'),
(50, 'cms_settings', 'events_title', 's:14:\"Новости\";'),
(51, 'cms_settings', 'events_link_all_text', 's:21:\"Все новости\";'),
(52, 'cms_settings', 'events_list_image_preview', 's:1:\"0\";'),
(53, 'cms_settings', 'events_limit', 's:2:\"12\";'),
(54, 'cms_settings', 'sale_title', 'N;'),
(55, 'cms_settings', 'sale_link_all_text', 'N;'),
(56, 'cms_settings', 'sale_preview_width', 'N;'),
(57, 'cms_settings', 'sale_preview_height', 'N;'),
(58, 'cms_settings', 'sale_meta_h1', 'N;'),
(59, 'cms_settings', 'sale_meta_title', 'N;'),
(60, 'cms_settings', 'sale_meta_key', 'N;'),
(61, 'cms_settings', 'sale_meta_desc', 'N;'),
(62, 'cms_settings', 'tinymce_adaptivy', 's:1:\"0\";'),
(63, 'cms_settings', 'tinymce_full_toolbars', 's:1:\"0\";'),
(64, 'cms_settings', 'tinymce_allow_scripts', 's:1:\"0\";'),
(65, 'cms_settings', 'tinymce_allow_iframe', 's:1:\"1\";'),
(66, 'cms_settings', 'tinymce_allow_object', 's:1:\"1\";'),
(67, 'cms_settings', 'seo_yandex_verification', 's:0:\"\";'),
(68, 'cms_settings', 'system_admins', 's:1:\"0\";'),
(69, 'cms_settings', 'system_slick', 's:1:\"0\";'),
(70, 'cms_settings', 'system_lazyload', 's:1:\"0\";'),
(71, 'cms_settings', 'vertical_template', 's:1:\"0\";'),
(72, 'cms_settings', 'recaptcha3_sitekey', 'N;'),
(73, 'cms_settings', 'recaptcha3_secretkey', 'N;'),
(74, 'cms_settings', 'recaptcha3_score', 'd:0.9;'),
(75, 'cms_settings', 'dev_year', 's:0:\"\";'),
(76, 'cms_settings', 'dev_year_to', 's:0:\"\";'),
(77, 'cms_settings', 'logo_header', 'N;'),
(78, 'cms_settings', 'logo_footer', 'N;'),
(79, 'cms_settings', 'show_socials', 's:1:\"0\";'),
(80, 'cms_settings', 'vk', 'N;'),
(81, 'cms_settings', 'odnoklassniki', 'N;'),
(82, 'cms_settings', 'instagram', 'N;'),
(83, 'cms_settings', 'facebook', 'N;'),
(84, 'cms_settings', 'show_messengers', 's:1:\"1\";'),
(85, 'cms_settings', 'whatsapp', 's:25:\"https://api.whatsapp.com/\";'),
(86, 'cms_settings', 'telegram', 's:20:\"https://telegram.org\";'),
(87, 'cms_settings', 'viber', 's:0:\"\";'),
(88, 'cms_settings', 'additional_phones', 's:0:\"\";'),
(89, 'cms_settings', 'additional_emails', 's:0:\"\";'),
(90, 'cms_settings', 'additional_address', 's:0:\"\";'),
(91, 'cms_settings', 'sitemap', 's:0:\"\";');

-- --------------------------------------------------------

--
-- Структура таблицы `sort_category`
--

CREATE TABLE `sort_category` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sort_data`
--

CREATE TABLE `sort_data` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `level` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_migration`
--

CREATE TABLE `tbl_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1654238546),
('m140101_000100_create_blog_table', 1654238547),
('m140101_000200_create_event_table', 1654238547),
('m140101_000300_create_file_table', 1654238547),
('m140101_000400_create_image_table', 1654238547),
('m140101_000500_create_link_table', 1654238547),
('m140101_000600_create_menu_table', 1654238547),
('m140101_000700_create_metadata_table', 1654238547),
('m140101_000800_create_page_table', 1654238547),
('m140101_000900_create_settings_table', 1654238547),
('m140101_001000_create_question_table', 1654238547),
('m140101_001200_create_category_table', 1654238547),
('m140101_001300_create_product_table', 1654238547),
('m140101_001400_create_related_category_table', 1654238547),
('m140101_001500_create_product_review_table', 1654238547),
('m140101_001600_create_eav_attribute_table', 1654238547),
('m140101_001700_create_eav_value_table', 1654238547),
('m140101_001800_create_gallery_table', 1654238547),
('m140101_001900_create_gallery_img_table', 1654238547),
('m140101_002000_create_sale_table', 1654238547),
('m140101_002100_create_accordion_tables', 1654238547),
('m140101_002200_create_sort_tables', 1654238548),
('m140101_002300_create_brand_table', 1654238548),
('m140101_002400_create_order_customer_fields_table', 1654238548),
('m140101_002500_create_iblock_tables', 1654238549),
('m160415_115947_create_reviews_table', 1654238550),
('m170130_042939_create_seo_table', 1654238550),
('m170920_073717_add_privacy_policy_page', 1654238549),
('m180418_030107_add_show_categories_mode_to_category_table', 1654238549),
('m200623_043554_create_indexes', 1654238549),
('m201202_083051_create_article_table', 1654238549),
('m201207_033520_add_h1_visible_property', 1654238549),
('m201210_051112_update_index_page_h1_visible', 1654238549),
('m210322_032510_add_description_to_infoblock', 1654238549),
('m210511_085354_add_eav_dictionary_table', 1654238549);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accordion`
--
ALTER TABLE `accordion`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `accordion_items`
--
ALTER TABLE `accordion_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accordion_id` (`accordion_id`);

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root` (`root`),
  ADD KEY `lft` (`lft`),
  ADD KEY `rgt` (`rgt`),
  ADD KEY `level` (`level`),
  ADD KEY `alias` (`alias`);

--
-- Индексы таблицы `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `eav_dictionary`
--
ALTER TABLE `eav_dictionary`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `eav_value`
--
ALTER TABLE `eav_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_attrs` (`id_attrs`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_product_id_attrs` (`id_product`,`id_attrs`);

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publish` (`publish`),
  ADD KEY `alias` (`alias`);

--
-- Индексы таблицы `feedback_callback`
--
ALTER TABLE `feedback_callback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback_footercallback`
--
ALTER TABLE `feedback_footercallback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `model_item_id` (`model`,`item_id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `preview_id` (`preview_id`);

--
-- Индексы таблицы `gallery_img`
--
ALTER TABLE `gallery_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id` (`gallery_id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `model_item_id` (`model`,`item_id`);

--
-- Индексы таблицы `info_block`
--
ALTER TABLE `info_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`title`);

--
-- Индексы таблицы `info_block_element`
--
ALTER TABLE `info_block_element`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_element` (`info_block_id`);

--
-- Индексы таблицы `info_block_element_prop`
--
ALTER TABLE `info_block_element_prop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `element_property_property` (`prop_id`),
  ADD KEY `element_property_element` (`element_id`);

--
-- Индексы таблицы `info_block_prop`
--
ALTER TABLE `info_block_prop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`info_block_id`,`code`);

--
-- Индексы таблицы `info_block_prop_value`
--
ALTER TABLE `info_block_prop_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`prop_id`,`value_key`);

--
-- Индексы таблицы `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_name_owner_id` (`owner_name`,`owner_id`);

--
-- Индексы таблицы `order_customer_fields`
--
ALTER TABLE `order_customer_fields`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `hidden_category_id` (`hidden`,`category_id`);

--
-- Индексы таблицы `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `related_category`
--
ALTER TABLE `related_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_cp` (`category_id`,`product_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`);

--
-- Индексы таблицы `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Индексы таблицы `seo_seo`
--
ALTER TABLE `seo_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`),
  ADD KEY `model_name_model_id` (`model_name`,`model_id`);

--
-- Индексы таблицы `services_pages`
--
ALTER TABLE `services_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sort` (`sort`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ukey` (`category`,`key`);

--
-- Индексы таблицы `sort_category`
--
ALTER TABLE `sort_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`key`),
  ADD KEY `name_2` (`name`);

--
-- Индексы таблицы `sort_data`
--
ALTER TABLE `sort_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id` (`category_id`,`model_id`),
  ADD KEY `category_id_2` (`category_id`);

--
-- Индексы таблицы `tbl_migration`
--
ALTER TABLE `tbl_migration`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accordion`
--
ALTER TABLE `accordion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `accordion_items`
--
ALTER TABLE `accordion_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eav_dictionary`
--
ALTER TABLE `eav_dictionary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `eav_value`
--
ALTER TABLE `eav_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `feedback_callback`
--
ALTER TABLE `feedback_callback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `feedback_footercallback`
--
ALTER TABLE `feedback_footercallback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gallery_img`
--
ALTER TABLE `gallery_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `info_block`
--
ALTER TABLE `info_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `info_block_element`
--
ALTER TABLE `info_block_element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `info_block_element_prop`
--
ALTER TABLE `info_block_element_prop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `info_block_prop`
--
ALTER TABLE `info_block_prop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `info_block_prop_value`
--
ALTER TABLE `info_block_prop_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `order_customer_fields`
--
ALTER TABLE `order_customer_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `related_category`
--
ALTER TABLE `related_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `seo_seo`
--
ALTER TABLE `seo_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `services_pages`
--
ALTER TABLE `services_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT для таблицы `sort_category`
--
ALTER TABLE `sort_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sort_data`
--
ALTER TABLE `sort_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `info_block_element`
--
ALTER TABLE `info_block_element`
  ADD CONSTRAINT `block_element` FOREIGN KEY (`info_block_id`) REFERENCES `info_block` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `info_block_element_prop`
--
ALTER TABLE `info_block_element_prop`
  ADD CONSTRAINT `element_property_element` FOREIGN KEY (`element_id`) REFERENCES `info_block_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `element_property_property` FOREIGN KEY (`prop_id`) REFERENCES `info_block_prop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `info_block_prop`
--
ALTER TABLE `info_block_prop`
  ADD CONSTRAINT `block_property` FOREIGN KEY (`info_block_id`) REFERENCES `info_block` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sort_data`
--
ALTER TABLE `sort_data`
  ADD CONSTRAINT `sort_data_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `sort_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
