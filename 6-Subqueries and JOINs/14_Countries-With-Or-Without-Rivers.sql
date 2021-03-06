SELECT TOP 5 c.CountryName, r.RiverName
FROM Countries AS c
LEFT OUTER JOIN Continents AS con       
ON c.ContinentCode = con.ContinentCode
LEFT OUTER JOIN CountriesRivers AS cr
ON c.CountryCode = cr.CountryCode
LEFT OUTER JOIN Rivers AS r
ON cr.RiverId = r.Id
WHERE con.ContinentName = 'Africa'
ORDER BY c.CountryName