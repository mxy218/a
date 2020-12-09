.class final Lcom/android/server/biometrics/BiometricService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# static fields
.field private static final DEFAULT_ALWAYS_REQUIRE_CONFIRMATION:Z = false

.field private static final DEFAULT_APP_ENABLED:Z = true

.field private static final DEFAULT_KEYGUARD_ENABLED:Z = true


# instance fields
.field private final FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

.field private final FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

.field private final FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFaceAlwaysRequireConfirmation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceEnabledForApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceEnabledOnKeyguard:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Handler;)V
    .registers 3

    .line 449
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 450
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 431
    nop

    .line 432
    const-string p2, "face_unlock_keyguard_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 433
    nop

    .line 434
    const-string p2, "face_unlock_app_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 435
    nop

    .line 436
    const-string p2, "face_unlock_always_require_confirmation"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 440
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Ljava/util/Map;

    .line 441
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Ljava/util/Map;

    .line 442
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 451
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 452
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    .line 453
    return-void
.end method


# virtual methods
.method getFaceAlwaysRequireConfirmation(I)Z
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 515
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 517
    :cond_12
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method getFaceEnabledForApps(I)Z
    .registers 4

    .line 507
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 508
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 510
    :cond_12
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method getFaceEnabledOnKeyguard()Z
    .registers 4

    .line 499
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 501
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 503
    :cond_16
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method notifyEnabledOnKeyguardCallbacks(I)V
    .registers 9

    .line 521
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    .line 522
    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 523
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Ljava/util/Map;

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 523
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->notify(Landroid/hardware/biometrics/BiometricSourceType;ZI)V

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 527
    :cond_30
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 9

    .line 473
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 474
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "face_unlock_keyguard_enabled"

    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1b

    move v1, v2

    :cond_1b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_6f

    if-nez p1, :cond_6f

    .line 481
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    goto :goto_6f

    .line 483
    :cond_2e
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 484
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_unlock_app_enabled"

    invoke-static {v0, v3, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    if-eqz p3, :cond_47

    move v1, v2

    :cond_47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f

    .line 489
    :cond_4f
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 490
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_unlock_always_require_confirmation"

    invoke-static {v0, v3, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    if-eqz p3, :cond_68

    move v1, v2

    :cond_68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_6f
    :goto_6f
    return-void
.end method

.method updateContentObserver()V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 461
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 465
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 469
    return-void
.end method
