.class public abstract Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
.super Ljava/lang/Object;
.source "SmartTouchComponent.java"


# static fields
.field public static mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;


# instance fields
.field private isConfigOn:Z

.field private isStatusbarSwichOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mFSDObserver:Landroid/database/ContentObserver;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mOldOrientation:I

.field private smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    .line 177
    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mFSDObserver:Landroid/database/ContentObserver;

    .line 48
    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    if-eqz v1, :cond_20

    const-string v1, "SmartTouch"

    const-string v2, "is a error."

    .line 49
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_20
    sput-object p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    .line 52
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const-string p1, "mz_smart_touch_change"

    .line 53
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mFSDObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_smart_touch_switch"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_45

    const/4 v0, 0x1

    :cond_45
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    .line 56
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    const-string v0, "flag_change_SmartTouch"

    const-string v1, "init"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->changeFloatTouch()V

    .line 60
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/net/Uri;)V

    .line 76
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/database/ContentObserver;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mFSDObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    return p0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->changeFloatTouch()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->notifiChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onConfigChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onSettingsChange()V

    return-void
.end method

.method private final changeFloatTouch()V
    .registers 6

    .line 218
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    const/4 v1, 0x0

    const-string v2, "flag_change_SmartTouch"

    if-eqz v0, :cond_94

    .line 219
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v0, :cond_17

    const-string v0, "error : smart bar should close"

    .line 220
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->destroy()V

    .line 222
    sput-object v1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    :cond_17
    const-string/jumbo v0, "state change open "

    .line 225
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 228
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    .line 229
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    const-string v1, "SmartTouch"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_46

    .line 230
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v3, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    const-string v0, "hide when changeFloatTouch, because is land"

    .line 231
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 233
    :cond_46
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v2, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 235
    :goto_4a
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_66

    .line 236
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 237
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v3, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    const-string v0, "hide when changeFloatTouch, because is keyguard"

    .line 238
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 240
    :cond_66
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v2, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    .line 243
    :goto_6a
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v0

    if-nez v0, :cond_77

    .line 244
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    .line 249
    :cond_77
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "smarttouchtest"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "firsthelp"

    .line 250
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 251
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_a3

    :cond_94
    const-string/jumbo v0, "state change close "

    .line 255
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v0, :cond_a3

    .line 257
    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->destroy()V

    .line 258
    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    :cond_a3
    :goto_a3
    return-void
.end method

.method public static getInstanse()Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
    .registers 1

    .line 44
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    return-object v0
.end method

.method private final notifiChange()V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "mz_smart_touch_change"

    invoke-static {p0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_17

    const/4 v2, 0x1

    .line 210
    :cond_17
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private final onConfigChange()V
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    const-string v0, "flag_change_SmartTouch"

    const-string v1, "on database change"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->changeFloatTouch()V

    return-void
.end method

.method private final onSettingsChange()V
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz p0, :cond_7

    .line 204
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onSettingsChange()V

    :cond_7
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 265
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_53

    .line 266
    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    .line 267
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz p1, :cond_53

    .line 268
    iget p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    const/4 v0, 0x1

    const-string v1, "SmartTouch"

    if-ne p1, v0, :cond_45

    .line 269
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 270
    invoke-virtual {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string/jumbo p1, "show when ConfigurationChanged"

    .line 271
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    goto :goto_53

    .line 274
    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not show when ConfigurationChanged "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 277
    :cond_45
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v0, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    const-string p1, "hide when screen-h"

    .line 278
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    :cond_53
    :goto_53
    return-void
.end method

.method public final onNotificationsPanelExpand(Z)V
    .registers 3

    .line 286
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v0, :cond_17

    .line 287
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 288
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->setTopViewGroupVisible(Z)V

    :cond_17
    return-void
.end method

.method public abstract onUpdateViews(Z)V
.end method

.method public final setSmartTouchOn(Z)V
    .registers 7

    const-string v0, "flag_change_SmartTouch"

    const-string v1, "onClick "

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    .line 84
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v1, "smarttouchtest"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "firsthelp"

    .line 85
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 86
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, -0x2

    const-string v3, "mz_smart_touch_switch"

    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_2c

    move v0, v1

    .line 88
    :cond_2c
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    xor-int/2addr v0, v1

    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 89
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->notifiChange()V

    goto/16 :goto_d8

    .line 92
    :cond_3b
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_cc

    .line 94
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onUpdateViews(Z)V

    .line 96
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_55

    const-string/jumbo v0, "smarttouch.SmartTouchComponent"

    const-string/jumbo v3, "should always be null"

    .line 97
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    :cond_55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 102
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$layout;->smarttouch_help:I

    invoke-static {v3, v4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 103
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->smarttouch_help_button_modify:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;

    invoke-direct {v3, p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->smarttouch_help_button_close:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;

    invoke-direct {v3, p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v2, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;

    invoke-direct {v2, p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 149
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMaxHeight(I)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    .line 151
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 162
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_d8

    .line 166
    :cond_cc
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onUpdateViews(Z)V

    .line 167
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_d8

    .line 168
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 169
    iput-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    :cond_d8
    :goto_d8
    return-void
.end method
