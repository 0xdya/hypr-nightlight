# 🌙 hypr-nightlight

سكربت بسيط لـ **Hyprland** يتيح التنقل بين درجات حرارة لونية مختلفة عبر `gammastep` — بضغطة مفتاح واحدة.

---

## المتطلبات

- [`gammastep`](https://gitlab.com/chinstrap/gammastep)
- [`libnotify`](https://gitlab.gnome.org/GNOME/libnotify) — لإشعارات `notify-send`
- Hyprland

على Arch:

```bash
sudo pacman -S gammastep libnotify
```

---

## التثبيت

```bash
git clone https://github.com/0xdya/hypr-nightlight.git
cd hypr-nightlight
chmod +x toggle-nightlight.sh
cp toggle-nightlight.sh ~/.config/hypr/scripts/
```

---

## الإعداد في Hyprland

أضف هذا السطر إلى `~/.config/hypr/keybindings.conf`:

```ini
bind = , F12, exec, ~/.config/hypr/scripts/toggle-nightlight.sh
```

غيّر `F12` لأي مفتاح تريده.

---

## الدرجات المتاحة

| الحالة | درجة الحرارة | الوصف |
|--------|-------------|-------|
| إيقاف | — | بدون تأثير |
| ليلي | 3500K | برتقالي دافئ، مناسب قبل النوم |
| دافئ | 4200K | دافئ معتدل |
| خفيف | 5500K | تأثير خفيف بالكاد محسوس |

كل ضغطة تنتقل للحالة التالية دورياً.

---

## التخصيص

عدّل هذين المتغيرين في السكربت:

```bash
STATES=(0 3500 4200 5500)
NAMES=("إيقاف" "ليلي" "دافئ" "خفيف")
```

---

## الترخيص

MIT
