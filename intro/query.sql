SELECT *, 
  CASE 
    WHEN review > 4.5 THEN "Extraordinary"
    WHEN review <= 4.5 AND review >= 4 THEN "Excellent"
    WHEN review >3 AND review <= 4 THEN "Good"
    WHEN review > 2 AND review <= 3 THEN "Fair"
    ELSE "Poor"
  END AS "Review"
FROM nomnom
ORDER BY review DESC;