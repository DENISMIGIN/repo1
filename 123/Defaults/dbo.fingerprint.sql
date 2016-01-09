
create default [fingerprint] as LEFT(ISNULL(suser_sname(),'N/A') + ',' + ISNULL(host_name(), 'N/A') + ',' + CONVERT(varchar, GETDATE(), 4) + ',' + CONVERT(varchar, GETDATE(), 8), 60)
GO
