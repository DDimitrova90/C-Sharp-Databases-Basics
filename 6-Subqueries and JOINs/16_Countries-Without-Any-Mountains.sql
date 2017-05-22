SELECT COUNT(*) AS CountryCode FROM
(SELECT c.CountryCode FROM Countries AS c
LEFT OUTER JOIN MountainsCountries AS mc
ON c.CountryCode = mc.CountryCode
WHERE mc.CountryCode IS NULL) AS computed