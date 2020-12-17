.class Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceProvisionedObserver"
.end annotation


# instance fields
.field private final mDeviceProvisionedUri:Landroid/net/Uri;

.field private mRegistered:Z

.field private final mUserSetupCompleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 3111
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3112
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3104
    const-string p1, "device_provisioned"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 3106
    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mUserSetupCompleteUri:Landroid/net/Uri;

    .line 3113
    return-void
.end method

.method private clearFrpCredentialIfOwnerNotSecure()V
    .registers 7

    .line 3158
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 3159
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3160
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 3161
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3162
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 3165
    :cond_3b
    return-void

    .line 3167
    .end local v2  # "user":Landroid/content/pm/UserInfo;
    :cond_3c
    goto :goto_e

    .line 3168
    :cond_3d
    return-void
.end method

.method private isProvisioned()Z
    .registers 4

    .line 3187
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private reportDeviceSetupComplete()V
    .registers 4

    .line 3147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->reportDeviceSetupComplete()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3150
    goto :goto_12

    .line 3148
    :catch_a
    move-exception v0

    .line 3149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failure reporting to IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3151
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private updateRegistration()V
    .registers 6

    .line 3171
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3172
    .local v0, "register":Z
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    if-ne v0, v1, :cond_b

    .line 3173
    return-void

    .line 3175
    :cond_b
    if-eqz v0, :cond_2e

    .line 3176
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3178
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mUserSetupCompleteUri:Landroid/net/Uri;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_3b

    .line 3181
    :cond_2e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3183
    :goto_3b
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    .line 3184
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;
    .param p3, "userId"  # I

    .line 3117
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3118
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    .line 3120
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3121
    const-string v0, "LockSettingsService"

    const-string v1, "Reporting device setup complete to IGateKeeperService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->reportDeviceSetupComplete()V

    .line 3123
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->clearFrpCredentialIfOwnerNotSecure()V

    goto :goto_2c

    .line 3125
    :cond_1f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mUserSetupCompleteUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3126
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1000(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 3128
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 3131
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3132
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    goto :goto_20

    .line 3137
    :cond_10
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3138
    const-string v0, "LockSettingsService"

    const-string v1, "FRP credential disabled, reporting device setup complete to Gatekeeper immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->reportDeviceSetupComplete()V

    .line 3143
    :cond_20
    :goto_20
    return-void
.end method
