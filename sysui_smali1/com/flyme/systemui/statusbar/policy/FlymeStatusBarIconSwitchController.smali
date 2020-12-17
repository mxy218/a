.class public final Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;
.super Ljava/lang/Object;
.source "FlymeStatusBarIconSwitchController.java"


# static fields
.field private static final SETTING_TO_SLOT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FlymeStatusBarIconSwitchController"

.field private static final mSwitchState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mToggleObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->SETTING_TO_SLOT:Ljava/util/HashMap;

    .line 52
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->SETTING_TO_SLOT:Ljava/util/HashMap;

    const-string v1, "mz_show_volume"

    const-string/jumbo v2, "volume"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->SETTING_TO_SLOT:Ljava/util/HashMap;

    const-string v1, "mz_show_alarm"

    const-string v2, "alarm_clock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->SETTING_TO_SLOT:Ljava/util/HashMap;

    const-string v1, "mz_show_headset"

    const-string v2, "headset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->SETTING_TO_SLOT:Ljava/util/HashMap;

    const-string v1, "mz_show_hd"

    const-string v2, "hd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController$1;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController$1;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mToggleObserver:Landroid/database/ContentObserver;

    .line 59
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlymeStatusBarIconSwitchController: enter - elapse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mapStateSets()V

    .line 63
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->registerContentObservers()V

    .line 64
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FlymeStatusBarIconSwitchController: leave - elapse="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 18
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->SETTING_TO_SLOT:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;)Landroid/content/ContentResolver;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    .line 18
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;)Landroid/content/Context;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;
    .registers 3

    const-class v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->sInstance:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->sInstance:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    .line 71
    :cond_e
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->sInstance:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private mapStateSets()V
    .registers 6

    .line 79
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const-string v3, "mz_show_volume"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v4, "volume"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_show_alarm"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "alarm_clock"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_show_headset"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_41

    move v1, v2

    goto :goto_42

    :cond_41
    move v1, v3

    :goto_42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "headset"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_show_hd"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_59

    :cond_58
    move v2, v3

    :goto_59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "hd"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerContentObservers()V
    .registers 6

    .line 86
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_show_volume"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mToggleObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_show_alarm"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mToggleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_show_headset"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mToggleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_show_hd"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mToggleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public isSlotVisible(Ljava/lang/String;)Z
    .registers 2

    .line 75
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->mSwitchState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
