.class public Lcom/meizu/systemui/shared/OverViewUtil;
.super Ljava/lang/Object;
.source "OverViewUtil.java"


# static fields
.field public static final ACTION_CANCEL_GESTURE_VIEW:Ljava/lang/String; = "com.android.systemui.recents.action.CANCEL_GESTURE_VIEW"

.field public static final ACTION_ENTER_OVERVIEW:Ljava/lang/String; = "com.flyme.ACTION_ENTER_RECENTS"

.field public static final ACTION_SHOW_GESTURE_VIEW:Ljava/lang/String; = "com.android.systemui.recents.action.SHOW_GESTURE_VIEW"

.field private static final MZ_SAVE_MODE_RUI:Landroid/net/Uri;

.field private static final POWER_NORMAL_MODE:I = 0x0

.field private static final POWER_SAVE_MODE:I = 0x3

.field private static mSaveMode:Z

.field private static sInstance:Lcom/meizu/systemui/shared/OverViewUtil;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/systemui/shared/OverViewUtil;->sInstanceSync:Ljava/lang/Object;

    const-string v0, "mz_current_power_mode"

    .line 29
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/systemui/shared/OverViewUtil;->MZ_SAVE_MODE_RUI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OverViewUtil"

    .line 24
    iput-object v0, p0, Lcom/meizu/systemui/shared/OverViewUtil;->TAG:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/meizu/systemui/shared/OverViewUtil$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/systemui/shared/OverViewUtil$1;-><init>(Lcom/meizu/systemui/shared/OverViewUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 47
    iput-object p1, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/meizu/systemui/shared/OverViewUtil;->updateSaveMode()V

    .line 53
    iget-object p1, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 54
    sget-object v0, Lcom/meizu/systemui/shared/OverViewUtil;->MZ_SAVE_MODE_RUI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .registers 1

    .line 23
    sget-object v0, Lcom/meizu/systemui/shared/OverViewUtil;->MZ_SAVE_MODE_RUI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/systemui/shared/OverViewUtil;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/meizu/systemui/shared/OverViewUtil;->updateSaveMode()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/systemui/shared/OverViewUtil;
    .registers 3

    .line 63
    sget-object v0, Lcom/meizu/systemui/shared/OverViewUtil;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/meizu/systemui/shared/OverViewUtil;->sInstance:Lcom/meizu/systemui/shared/OverViewUtil;

    if-nez v1, :cond_12

    .line 65
    new-instance v1, Lcom/meizu/systemui/shared/OverViewUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meizu/systemui/shared/OverViewUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/systemui/shared/OverViewUtil;->sInstance:Lcom/meizu/systemui/shared/OverViewUtil;

    .line 67
    :cond_12
    sget-object p0, Lcom/meizu/systemui/shared/OverViewUtil;->sInstance:Lcom/meizu/systemui/shared/OverViewUtil;

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private updateSaveMode()V
    .registers 4

    .line 58
    iget-object p0, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_current_power_mode"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    sput-boolean v0, Lcom/meizu/systemui/shared/OverViewUtil;->mSaveMode:Z

    return-void
.end method


# virtual methods
.method public isSaveMode()Z
    .registers 1

    .line 77
    sget-boolean p0, Lcom/meizu/systemui/shared/OverViewUtil;->mSaveMode:Z

    return p0
.end method

.method public sendBroadcast(Ljava/lang/String;Z)V
    .registers 8

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " caller-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OverViewUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.flyme.ACTION_ENTER_RECENTS"

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v4, "enter"

    .line 96
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    :cond_3d
    iget-object v4, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 100
    invoke-static {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 101
    iget-object p0, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lflyme/view/WindowManagerExt;->getInstance(Landroid/content/Context;)Lflyme/view/WindowManagerExt;

    move-result-object p0

    invoke-virtual {p0, v1}, Lflyme/view/WindowManagerExt;->closeWindowMode(Z)V

    const-string p0, "current is in home...."

    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_62
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    if-eqz p2, :cond_74

    .line 106
    iget-object p2, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lflyme/view/WindowManagerExt;->getInstance(Landroid/content/Context;)Lflyme/view/WindowManagerExt;

    move-result-object p2

    invoke-virtual {p2, v1}, Lflyme/view/WindowManagerExt;->closeWindowMode(Z)V

    goto :goto_85

    :cond_74
    const-string p2, "com.android.systemui.recents.action.SHOW_GESTURE_VIEW"

    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 108
    iget-object p2, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lflyme/view/WindowManagerExt;->getInstance(Landroid/content/Context;)Lflyme/view/WindowManagerExt;

    move-result-object p2

    invoke-virtual {p2, v4}, Lflyme/view/WindowManagerExt;->updateWindowModeShowState(Z)V

    :cond_85
    :goto_85
    const-string p2, "com.android.systemui.recents.action.CANCEL_GESTURE_VIEW"

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 110
    iget-object p0, p0, Lcom/meizu/systemui/shared/OverViewUtil;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lflyme/view/WindowManagerExt;->getInstance(Landroid/content/Context;)Lflyme/view/WindowManagerExt;

    move-result-object p0

    invoke-virtual {p0, v1}, Lflyme/view/WindowManagerExt;->updateWindowModeShowState(Z)V

    :cond_96
    return-void
.end method
