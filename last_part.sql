-- Disable safe mode for this session
SET SQL_SAFE_UPDATES = 0;

-- 2. Update grades E and F to D
UPDATE takes
SET grade = 'D'
WHERE grade IN ('E', 'F');

-- 3. Delete assignments with point abuse (> 150 or < -150)
DELETE FROM assigns
WHERE points > 150 
   OR points < -150;

-- Re-enable safe mode
SET SQL_SAFE_UPDATES = 1;
