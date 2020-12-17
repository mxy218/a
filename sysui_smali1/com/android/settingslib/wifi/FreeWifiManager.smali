.class public Lcom/android/settingslib/wifi/FreeWifiManager;
.super Ljava/lang/Object;
.source "FreeWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/settingslib/wifi/FreeWifiManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFreeWifiDisabledReason:I

.field private mFreeWifiEnabled:Z

.field private mFreeWifiObserver:Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;

.field private mFreeWifiStateLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiEnabled:Z

    const/4 v2, 0x0

    .line 22
    iput v2, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    .line 23
    iput-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiObserver:Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance p1, Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;

    iget-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;-><init>(Lcom/android/settingslib/wifi/FreeWifiManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiObserver:Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;

    .line 37
    iget-object p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "free_wifi_enabler"

    .line 38
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiObserver:Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 39
    iget-object p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "free_wifi_disabled_reason"

    .line 40
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiObserver:Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    invoke-direct {p0}, Lcom/android/settingslib/wifi/FreeWifiManager;->refreshWifiEnableState()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/FreeWifiManager;)V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/android/settingslib/wifi/FreeWifiManager;->refreshWifiEnableState()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/FreeWifiManager;
    .registers 3

    .line 26
    sget-object v0, Lcom/android/settingslib/wifi/FreeWifiManager;->INSTANCE:Lcom/android/settingslib/wifi/FreeWifiManager;

    if-nez v0, :cond_12

    const-string v0, "FreeWifiManager"

    const-string v1, "INSTANCE is null,create it"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lcom/android/settingslib/wifi/FreeWifiManager;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/FreeWifiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/wifi/FreeWifiManager;->INSTANCE:Lcom/android/settingslib/wifi/FreeWifiManager;

    .line 30
    :cond_12
    sget-object p0, Lcom/android/settingslib/wifi/FreeWifiManager;->INSTANCE:Lcom/android/settingslib/wifi/FreeWifiManager;

    return-object p0
.end method

.method private handleDisabledReasonChanged(II)V
    .registers 5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2f

    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_2f

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/FreeWifiManager;->removeFreeWifiDisabledReason(I)V

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiUtils;->setFreeWifiNofity(Landroid/content/Context;Z)V

    :cond_2f
    return-void
.end method

.method private refreshWifiEnableState()V
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiUtils;->isFreeWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiEnabled:Z

    .line 48
    iget v1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    .line 49
    iget-object v2, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/wifi/WifiUtils;->getFreeWifiDisabledReason(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    .line 50
    iget v2, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/wifi/FreeWifiManager;->handleDisabledReasonChanged(II)V

    const-string v1, "FreeWifiManager"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "free wifi enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method


# virtual methods
.method public isFreeWifiDisabledReasonEmpty()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget p0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 149
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isFreeWifiEnabled()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public removeFreeWifiDisabledReason(I)V
    .registers 7

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget v1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    not-int v2, p1

    and-int/2addr v1, v2

    .line 129
    iget v2, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    if-eq v2, v1, :cond_46

    const-string v2, "FreeWifiManager"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove the new reason + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput v1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    .line 133
    iget-object p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiDisabledReason:I

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiUtils;->setFreeWifiDisabledReason(Landroid/content/Context;I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiDisabledReasonEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/FreeWifiManager;->setFreeWifiEnabled(Z)V

    .line 139
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public setFreeWifiEnabled(Z)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mFreeWifiEnabled:Z

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/wifi/FreeWifiManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiUtils;->setFreeWifiEnabled(Landroid/content/Context;Z)V

    .line 82
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method
