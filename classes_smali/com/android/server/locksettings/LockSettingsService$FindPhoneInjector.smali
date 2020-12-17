.class Lcom/android/server/locksettings/LockSettingsService$FindPhoneInjector;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindPhoneInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPassword(Lcom/android/server/locksettings/LockSettingsService;Z)V
    .registers 3
    .param p0, "dst"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "passwordOK"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3296
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->access$1800(Lcom/android/server/locksettings/LockSettingsService;)Lcom/meizu/findphone/FindPhoneService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneService;->checkPassword(Z)Z

    .line 3297
    return-void
.end method

.method static createFindPhoneService(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 4
    .param p0, "dst"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 3288
    new-instance v0, Lcom/meizu/findphone/FindPhoneService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->access$1500(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/findphone/FindPhoneService;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-static {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1802(Lcom/android/server/locksettings/LockSettingsService;Lcom/meizu/findphone/FindPhoneService;)Lcom/meizu/findphone/FindPhoneService;

    .line 3289
    return-void
.end method

.method static systemReady(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2
    .param p0, "dst"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 3292
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->access$1800(Lcom/android/server/locksettings/LockSettingsService;)Lcom/meizu/findphone/FindPhoneService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/findphone/FindPhoneService;->systemReady()V

    .line 3293
    return-void
.end method
