.class public final Lcom/flyme/systemui/headsup/FlymeHeadsupManager;
.super Ljava/lang/Object;
.source "FlymeHeadsupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;
    }
.end annotation


# static fields
.field private static mDisturbPKgForPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

.field private static sMiniNotificationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWhitePkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUG:Z

.field private mAutoDismissNotificationDecay:I

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mContext:Landroid/content/Context;

.field private mDissmissPopView:Ljava/lang/Runnable;

.field private mDissmissSnoozeTip:Ljava/lang/Runnable;

.field private mForceQuickReplyObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsUpMaxHeight:I

.field private mIsForceQuickReply:Z

.field private mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mPopNotificationObserver:Landroid/database/ContentObserver;

.field private mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

.field private final mQQKeywordGroupPattern:Ljava/util/regex/Pattern;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowPopNotification:Z

.field private mSnoozeCounts:I

.field private mSnoozeTipAttachToWindow:Z

.field private mSnoozeTipLayout:Landroid/view/View;

.field private mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mStatusBarHeight:I

.field private final mWechatKeywordPattern:Ljava/util/regex/Pattern;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDisturbPKgForPop:Ljava/util/ArrayList;

    .line 129
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDisturbPKgForPop:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sMiniNotificationPkgs:Ljava/util/ArrayList;

    .line 134
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sMiniNotificationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.alarmclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sMiniNotificationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.flyme.systemuitools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    .line 138
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_qq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_wechat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_tim:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.tim"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_dingtalk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.alibaba.android.rimet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_azar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.azarlive.android"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_discord:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.discord"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_hangouts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.google.android.talk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_imo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.imo.android.imoim"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_line:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "jp.naver.line.android"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_messenger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.facebook.orca"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_messenger_lite:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.facebook.mlite"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_ok:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ru.ok.android"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_skype:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.skype.raider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_snapchat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.snapchat.android"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_tamtam_messenger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ru.ok.messages"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_telegram:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "org.telegram.messenger"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_viber_messenger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.viber.voip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_vibrate_chat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.chatmessengers.vibratechat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_vk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.vkontakte.android"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_whatsapp_business:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.whatsapp.w4b"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_whatsap:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.whatsapp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    sget v1, Lcom/android/systemui/R$drawable;->ic_notice_pop_tencent_work:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.wework"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FlymeHeadsupManager"

    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->DEBUG:Z

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeCounts:I

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mShowPopNotification:Z

    .line 91
    iput-boolean v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mIsForceQuickReply:Z

    .line 94
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHandler:Landroid/os/Handler;

    const-string v1, "\\[微信红包\\]"

    .line 101
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWechatKeywordPattern:Ljava/util/regex/Pattern;

    const-string v1, "\\((.*?)\\)"

    .line 102
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mQQKeywordGroupPattern:Ljava/util/regex/Pattern;

    .line 162
    new-instance v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$1;-><init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)V

    iput-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDissmissSnoozeTip:Ljava/lang/Runnable;

    .line 178
    new-instance v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$2;-><init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)V

    iput-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDissmissPopView:Ljava/lang/Runnable;

    .line 186
    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 187
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWindowManager:Landroid/view/WindowManager;

    const-string v1, "headup_snooze"

    .line 188
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 189
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "snooze_count"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeCounts:I

    .line 190
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->snooze_tip:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    .line 191
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mStatusBarHeight:I

    .line 192
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->heads_up_notification_decay:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mAutoDismissNotificationDecay:I

    .line 193
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 194
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    .line 195
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 197
    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->initContentResolver()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipAttachToWindow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipAttachToWindow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Landroid/view/View;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Landroid/view/WindowManager;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mShowPopNotification:Z

    return p0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mShowPopNotification:Z

    return p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->DEBUG:Z

    return p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mIsForceQuickReply:Z

    return p0
.end method

.method static synthetic access$702(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mIsForceQuickReply:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Lcom/flyme/systemui/statusbar/policy/PopNotificationView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    return-object p0
.end method

.method private checkKeyword(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z
    .registers 8

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object p2, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_22

    .line 497
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_22
    const/4 p2, 0x0

    if-nez v0, :cond_26

    return p2

    .line 500
    :cond_26
    sget-object v2, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$6;->$SwitchMap$com$flyme$systemui$headsup$FlymeHeadsupManager$LuckyMoneyType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4a

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3f

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3b

    goto :goto_5c

    :cond_3b
    if-eqz v1, :cond_3e

    return v2

    :cond_3e
    return p2

    :cond_3f
    if-eqz v1, :cond_5c

    const-string p0, "[QQ红包]"

    .line 513
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5c

    return v2

    :cond_4a
    const-string/jumbo p0, "红包"

    .line 508
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5c

    return v2

    :cond_5c
    :goto_5c
    return p2

    .line 503
    :cond_5d
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWechatKeywordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private checkMsgtype(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z
    .registers 4

    .line 528
    sget-object p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$6;->$SwitchMap$com$flyme$systemui$headsup$FlymeHeadsupManager$LuckyMoneyType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 p2, 0x2

    if-eq p0, p2, :cond_16

    const/4 p2, 0x3

    if-eq p0, p2, :cond_16

    const/4 p2, 0x4

    if-eq p0, p2, :cond_16

    return p1

    :cond_16
    return v0

    .line 530
    :cond_17
    iget-object p0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2c

    const-string p2, "MainUI_User_Last_Msg_Type"

    .line 532
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const p2, 0x1a000031

    if-ne p0, p2, :cond_2b

    move p1, v0

    :cond_2b
    return p1

    :cond_2c
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;
    .registers 3

    const-class v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    monitor-enter v0

    .line 201
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sInstance:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    if-nez v1, :cond_e

    .line 202
    new-instance v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sInstance:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    .line 204
    :cond_e
    sget-object p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sInstance:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSnoozeTipHeight()I
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->snooze_tip_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private initContentResolver()V
    .registers 7

    .line 344
    new-instance v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$3;

    iget-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$3;-><init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationObserver:Landroid/database/ContentObserver;

    .line 354
    new-instance v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;

    iget-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$4;-><init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mForceQuickReplyObserver:Landroid/database/ContentObserver;

    .line 364
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_bubble_notification"

    .line 365
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 364
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mz_force_quick_reply"

    .line 369
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mForceQuickReplyObserver:Landroid/database/ContentObserver;

    .line 368
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_44

    move v0, v3

    goto :goto_45

    :cond_44
    move v0, v4

    :goto_45
    iput-boolean v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mShowPopNotification:Z

    .line 374
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_54

    goto :goto_55

    :cond_54
    move v3, v4

    :goto_55
    iput-boolean v3, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mIsForceQuickReply:Z

    return-void
.end method

.method private isFullScreen()Z
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTopWindowIsFullscreen()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isPopMode()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mShowPopNotification:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_a
    iget-boolean p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->DEBUG:Z

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isRedEnvelopeAssistantEnabled()Z
    .registers 4

    .line 547
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "mz_red_envelope_assistant_switch"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private setPopViewVisibilityWithAnimation(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 426
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 428
    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->setPopWithAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->setPopWithAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_20

    :cond_11
    const-string p1, "FlymeHeadsupManager"

    const-string v1, "setHeadsUpViewVisibilityWithAnimation: setVisible = false"

    .line 433
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance p1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$5;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$5;-><init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)V

    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->setPopWithAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    :goto_20
    return-void
.end method

.method private showSnoozeTip()V
    .registers 8

    .line 218
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_28

    .line 219
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    .line 221
    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getSnoozeTipHeight()I

    move-result v3

    const/16 v4, 0x7e8

    const/16 v5, 0x308

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 226
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x30

    .line 227
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "SnoozeTip"

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    :cond_28
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getSnoozeTipHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipAttachToWindow:Z

    .line 234
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 235
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    iget v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mStatusBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 238
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 240
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDissmissSnoozeTip:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addToWindow()V
    .registers 8

    .line 379
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->heads_up_window_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHeadsUpMaxHeight:I

    .line 380
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHeadsUpMaxHeight:I

    const/4 v2, -0x1

    const/16 v4, 0x7f6

    const v5, 0x800328

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 389
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x30

    .line 390
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x10

    .line 391
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "Heads Up"

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/R$style;->Animation_StatusBar_HeadsUp:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 395
    iget-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getWhitePkgIconId(Ljava/lang/String;)I
    .registers 2

    .line 298
    sget-object p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public hidePopNotificationView()V
    .registers 2

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->setPopViewVisibilityWithAnimation(Z)V

    return-void
.end method

.method public isDisturbForPop(Ljava/lang/String;)Z
    .registers 2

    .line 282
    sget-object p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDisturbPKgForPop:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForceQuickReply()Z
    .registers 1

    .line 306
    iget-boolean p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mIsForceQuickReply:Z

    return p0
.end method

.method public isLuckyMoneyNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 6

    .line 465
    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isRedEnvelopeAssistantEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 469
    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    const-string v2, "com.tencent.mm"

    .line 471
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    .line 472
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->WECHAT:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->checkKeyword(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->WECHAT:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->checkMsgtype(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_2b

    :cond_2a
    return v3

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    const-string v2, "com.eg.android.AlipayGphone"

    .line 477
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 478
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->ALIPAY:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->checkKeyword(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->ALIPAY:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->checkMsgtype(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_46

    :cond_45
    return v3

    :cond_46
    :goto_46
    return v1

    :cond_47
    const-string v2, "com.tencent.mobileqq"

    .line 483
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "com.tencent.tim"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_59

    :cond_58
    return v1

    .line 484
    :cond_59
    :goto_59
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->QQ:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->checkKeyword(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->QQ:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->checkMsgtype(Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;Landroid/app/Notification;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_6b

    :cond_6a
    return v3

    :cond_6b
    :goto_6b
    return v1
.end method

.method public isMiniPkg(Ljava/lang/String;)Z
    .registers 2

    .line 310
    sget-object p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sMiniNotificationPkgs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPopMode(Ljava/lang/String;)Z
    .registers 3

    .line 274
    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isPopMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isDisturbForPop(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isPopQuickOpen(Ljava/lang/String;)Z
    .registers 3

    .line 459
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isPopMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isQuickOpen()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 460
    :goto_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[foree] isPopQuickOpen: quick open = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeHeadsupManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isShowPopNotification()Z
    .registers 1

    .line 302
    iget-boolean p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mShowPopNotification:Z

    return p0
.end method

.method public isWhitePkg(Ljava/lang/String;)Z
    .registers 2

    .line 294
    sget-object p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->sWhitePkgs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeFromWindow()V
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public saveSnoozeCount()V
    .registers 4

    .line 208
    iget v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeCounts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 209
    iput v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeCounts:I

    .line 210
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    iget v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeCounts:I

    const-string/jumbo v2, "snooze_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->showSnoozeTip()V

    :cond_1d
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setPopWithAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 445
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->releasePopWithAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public shouldShowPopView(Ljava/lang/String;)Z
    .registers 3

    .line 278
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isPopMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isWhitePkg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isMiniPkg(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public showPopNotificationView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 6

    .line 403
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 404
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isMiniPkg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 406
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->newComponent(Landroid/content/Context;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->showMiniForPop(Z)V

    .line 407
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->newComponent(Landroid/content/Context;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void

    .line 411
    :cond_2d
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 412
    iget-object v2, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mPopNotificationView:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->updateNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 414
    invoke-direct {p0, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->setPopViewVisibilityWithAnimation(Z)V

    .line 416
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDissmissPopView:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    iget-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mDissmissPopView:Ljava/lang/Runnable;

    iget p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mAutoDismissNotificationDecay:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public snooze(Ljava/lang/String;)V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isDisturbForPop(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 454
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snoozePackage(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public snoozeNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 553
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 555
    iget-object p0, p0, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_13

    .line 558
    :try_start_a
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 561
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public updateResources()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipAttachToWindow:Z

    if-eqz v1, :cond_17

    .line 268
    invoke-direct {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getSnoozeTipHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 269
    iget-object v0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->mSnoozeTipLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    return-void
.end method
