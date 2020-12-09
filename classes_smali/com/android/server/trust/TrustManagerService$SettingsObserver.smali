.class final Lcom/android/server/trust/TrustManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

.field private final TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mIsAutomotive:Z

.field private mLockWhenTrustLost:Z

.field private mTrustAgentsExtendUnlock:Z

.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Handler;)V
    .registers 4

    .line 240
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 241
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 224
    nop

    .line 225
    const-string/jumbo p2, "trust_agents_extend_unlock"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    .line 227
    nop

    .line 228
    const-string p2, "lock_screen_when_trust_lost"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    .line 243
    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 244
    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    .line 246
    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 247
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    .line 248
    return-void
.end method


# virtual methods
.method getLockWhenTrustLost()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    return v0
.end method

.method getTrustAgentsExtendUnlock()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsExtendUnlock:Z

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 268
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 271
    iget-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    .line 273
    xor-int/2addr p1, v0

    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 278
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$100(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    .line 274
    const-string/jumbo v3, "trust_agents_extend_unlock"

    invoke-static {p2, v3, p1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsExtendUnlock:Z

    goto :goto_40

    .line 279
    :cond_23
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 280
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 285
    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->access$100(Lcom/android/server/trust/TrustManagerService;)I

    move-result p2

    .line 281
    const-string v2, "lock_screen_when_trust_lost"

    invoke-static {p1, v2, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    goto :goto_41

    .line 279
    :cond_40
    :goto_40
    nop

    .line 287
    :goto_41
    return-void
.end method

.method updateContentObserver()V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 255
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$100(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 256
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 259
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$100(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    .line 256
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 262
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 264
    return-void
.end method
