#!/bin/bash


memTotal_b=`free -b |grep Mem |awk '{print $2}'`
memFree_b=`free -b |grep Mem |awk '{print $4}'`
memBuffer_b=`free -b |grep Mem |awk '{print $6}'`
memCache_b=`free -b |grep Mem |awk '{print $7}'`

memTotal_m=`free -m |grep Mem |awk '{print $2}'`
memFree_m=`free -m |grep Mem |awk '{print $4}'`
memBuffer_m=`free -m |grep Mem |awk '{print $6}'`
memCache_m=`free -m |grep Mem |awk '{print $7}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
hdd=`df -lh | awk '{if ($6 == "/") { print $5 }}' | head -1 | cut -d'%' -f1`
uptime=`uptime`
ProcessCnt=`ps -A | wc -l`
memUsed_b=$(($memTotal_b-$memFree_b-$memBuffer_b-$memCache_b))
memUsed_m=$(($memTotal_m-$memFree_m-$memBuffer_m-$memCache_m))

memUsedPrc=$((($memUsed_b*100)/$memTotal_b))
echo "SuperGroup Commands:"
echo "⚓️!info"
echo "نمایش اطلاعات فرد"
echo "⚓️!admins"
echo "نمایش لیست ادمین های گروه"
echo "⚓️!owner"
echo "نمایش خریدار گروه"
echo "⚓️!modlist"
echo "نمایش لیست ناظم ها"
echo "⚓️!block"
echo "بلاک کردن و کیک کردن فرد"
echo "⚓️!id"
echo "نمایش ایدی گروه"
echo "⚓️!id from"
echo "نمایش اطلاعات فردی که پیغام رو فوارد کرده"
echo "⚓️!kickme"
echo "کیک شدن از سوپر گروه"
echo "⚓️!setowner"
echo "ست کردن کاربر به عنوان خریدار گروه"
echo "⚓️!promote [username|id]"
echo "اضافه کردن کاربر به لیست ناظم ها"
echo "⚓️!demote [username|id]"
echo "پاک کردن کاربر از لیست ناظم ها"
echo "⚓️!setname"
echo "گذاشتن اسم گروه"
echo "⚓️!setphoto"
echo "گذاشتن عکس برای گروه"
echo "⚓️!setrules"
echo "گذاشتن قوانین برای گروه"
echo "⚓️!setabout"
echo "گذاشتن متن درباره برای سوپر گروه(این متن در بخش توضیحات گروه هم نمایش داده میشه)"
echo "⚓️!note text"
echo "ذخیره کردن یک یادداشت"
echo "⚓️!newlink"
echo "ساختن لینک جدید"
echo "⚓️!link"
echo "گرفتن لینک"
echo "⚓️!rules"
echo "نمایش قوانین"
echo "⚓️!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]"
echo "قفل کردن لینک گروها-اسپم-متن و اسم های بزرگ -زبان فارسی-تعداد اعضا-کاراکتر های غیر عادی-استیکر-مخاطبین"
echo "⚓️!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]"
echo "باز کردن قفل امکانات بالا"
echo "⚓️!mute [all|audio|gifs|photo|video]"
echo "پاک کردن سریع همه پیغام ها-عکس ها-گیف ها-صدا های ضبط شده-فیلم"
echo "⚓️!unmute [all|audio|gifs|photo|video]"
echo "باز کردن قفل امکانات بالا"
echo "⚓️!setflood [value]"
echo "گذاشتن value به عنوان حساسیت اسپم"
echo "⚓️!settings"
echo "نمایش تنظیمات گروه"
echo "⚓️!muteslist"
echo "نمایش نوع پیغام های سایلنت شده"
echo "⚓️!muteuser [username]"
echo "سایلنت کردن یک کاربر خاص در گروه"
echo "⚓️!mutelist"
echo "نمایش لیست افراد سایلنت شده"
echo "⚓️!clean [rules|about|modlist|mutelist]"
echo "پاک کردن لیست ناظم ها-درباره-لیست سایلنت شده ها-قوانین"
echo "⚓️!public [yes|no]"
echo "نمایش گروه شما در لیست گروها"
echo "⚓️!res [username]"
echo "گرفتن اطلاعت یوزر نیم داده شد"
