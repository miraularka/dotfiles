import duolingo
lingo  = duolingo.Duolingo('tehl33tjim', 'T4A5)>[2<snQVcPb')

info = lingo.get_streak_info()
streak = info['streak_extended_today']
if streak == False:
    full = '%{F#FF0000} %{F-}'
if streak == True:
    full = '%{F#00FF00} %{F-}'
days = str(info['site_streak'])
full = full+days+"%{F-}"

print(full)
