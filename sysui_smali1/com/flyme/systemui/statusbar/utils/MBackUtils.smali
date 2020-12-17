.class public Lcom/flyme/systemui/statusbar/utils/MBackUtils;
.super Ljava/lang/Object;
.source "MBackUtils.java"


# static fields
.field private static mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;


# direct methods
.method private static getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;
    .registers 2

    .line 20
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    if-nez v1, :cond_13

    const-string v1, "flyme_statusbar"

    .line 23
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 22
    invoke-static {v1}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v1

    sput-object v1, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    .line 25
    :cond_13
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static isMBackMode(I)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "persist.sys_cts_state"

    .line 56
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_d

    if-ne p0, v2, :cond_d

    move v0, v2

    :cond_d
    return v0
.end method

.method public static setHomeChipEnable(Z)V
    .registers 4

    :try_start_0
    const-string v0, "MBackUtils"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHomeChipEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 34
    invoke-interface {v0, p0}, Lmeizu/statusbar/IFlymeStatusBarService;->setHomeChipEnable(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_23

    :catch_20
    const/4 p0, 0x0

    .line 38
    sput-object p0, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    :cond_23
    :goto_23
    return-void
.end method

.method public static setNavigationBarMode(ZZ)V
    .registers 5

    :try_start_0
    const-string v0, "MBackUtils"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNavigationBarMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 47
    invoke-interface {v0, p0, p1}, Lmeizu/statusbar/IFlymeStatusBarService;->setNavigationBarMode(ZZ)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2c

    :catch_29
    const/4 p0, 0x0

    .line 51
    sput-object p0, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    :cond_2c
    :goto_2c
    return-void
.end method
