# 时间
IO.inspect(Time.utc_now)
t = Time.utc_now()
IO.inspect(t.hour)

#日期
IO.inspect(Date.utc_today())

#即包含时间，又包含日期
nt = NaiveDateTime.local_now()
IO.inspect(nt)
IO.inspect(nt.hour)

#日期,时区信息
IO.inspect(DateTime.now("Etc/UTC"))