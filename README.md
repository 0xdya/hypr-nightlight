# 🌙 HNT

سكربت بسيط موجه لمسستخدمين هايبرلاند، (يشتغل على أي واجهة de/wm)

اسم **HNT** هو اختصار ل **Hyprland Nightlight Toggle** يتيح التنقل بين درجات حرارة لونية مختلفة عبر `gammastep` باختصار كيبورد واحد

---

## المتطلبات

- [`gammastep`](https://gitlab.com/chinstrap/gammastep) (لتحكم فدرجة حرارة الألوان)
- [`libnotify`](https://gitlab.gnome.org/GNOME/libnotify) (لارسال الاشعارات، يمكنك استبداله المهم عدل ملف السكربت بعدها)

  
على Arch:

```bash
sudo pacman -S gammastep libnotify
```

---

## التثبيت (لهايبرلاند)

```bash
git clone https://github.com/0xdya/HNT.git
cd HNT
chmod +x HNT.sh
cp HNT.sh ~/.config/hypr/scripts/
```

---

## الإعداد
أضف هذا السطر إلى `~/.config/hypr/keybindings.conf`:

```ini
bind = , F12, exec, ~/.config/hypr/scripts/HNT.sh
```

غيّر `F12` لأي مفتاح تريده.

---

## الدرجات المتاحة

| الحالة | درجة الحرارة | الوصف |
|--------|-------------|-------|
| إيقاف | — | بدون تأثير |
| ليلي | 3500K | برتقالي دافئ، مناسب للاسستخدام الليلي |
| معتدل | 4200K | مناسب للاستخدام الطويل |
| خفيف | 5500K | تأثير خفيف بالكاد محسوس |

كل ضغطة تنتقل للحالة التالية.

---

## التخصيص

يمكنك تعديل هذين المتغيرين في السكربت:

```bash
STATES=(0 3500 4200 5500)
NAMES=("إيقاف" "ليلي" "معتدل" "خفيف")
```

---
