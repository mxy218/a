.class public Lcom/android/systemui/statusbar/phone/NavigationModeController;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationModeController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mEnableGestureNavReceiver:Landroid/content/BroadcastReceiver;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/UiOffloadThread;)V
    .registers 20
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    .line 91
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    .line 94
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 152
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 153
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string v1, "overlay"

    .line 155
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    move-object/from16 v1, p3

    .line 156
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    move-object/from16 v1, p2

    .line 157
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 158
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 160
    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 161
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android"

    .line 162
    invoke-virtual {v7, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 163
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 165
    new-instance v13, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v13, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->deferGesturalNavOverlayIfNecessary()V

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->resetNavBarMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->restoreGesturalNavOverlayIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->deferGesturalNavOverlayIfNecessary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationModeController;Landroid/content/Intent;)Z
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->enableGestureNav(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private deferGesturalNavOverlayIfNecessary()V
    .registers 8

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 314
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeEnableGestureNavListener()V

    return-void

    .line 324
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    :try_start_25
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v2}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_32} :catch_33

    goto :goto_3a

    .line 328
    :catch_33
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v3, "deferGesturalNavOverlayIfNecessary: failed to fetch default overlays"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    const-string v2, "com.android.internal.systemui.navbar.gestural"

    .line 330
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeEnableGestureNavListener()V

    return-void

    :cond_46
    const/4 v1, -0x2

    const-string v2, "com.android.internal.systemui.navbar.threebutton"

    .line 342
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->supportsDeviceAdmin()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mEnableGestureNavReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_75

    .line 346
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mEnableGestureNavReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mEnableGestureNavReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string p0, "com.android.systemui.ENABLE_GESTURE_NAV"

    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_75
    return-void
.end method

.method private dumpAssetPaths(Landroid/content/Context;)V
    .registers 7

    .line 417
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v0, "assetPaths="

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p0

    .line 419
    array-length p1, p0

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p1, :cond_36

    aget-object v1, p0, v0

    .line 420
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_36
    return-void
.end method

.method private enableGestureNav(Landroid/content/Intent;)Z
    .registers 7

    const-string v0, "com.android.systemui.EXTRA_RESULT_INTENT"

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v1, v1, Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 206
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string p1, "No callback pending intent was attached"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 210
    :cond_13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 211
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 213
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.action.ENABLE_GESTURE_NAV_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_a6

    .line 217
    :cond_2d
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 221
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 225
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 226
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    .line 227
    :cond_5b
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string p1, "Callback must be from the device owner"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 231
    :cond_63
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 232
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 233
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto :goto_9e

    .line 237
    :cond_80
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_96

    .line 238
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    goto :goto_96

    .line 244
    :cond_91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setGestureModeOverlayForMainLauncher()Z

    move-result p0

    return p0

    .line 239
    :cond_96
    :goto_96
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string p1, "Callback must be from the profile owner"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 234
    :cond_9e
    :goto_9e
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string p1, "Callback must be from a managed user"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 214
    :cond_a6
    :goto_a6
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string p1, "Invalid callback intent"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getCurrentInteractionMode(Landroid/content/Context;)I
    .registers 2

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0080

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private removeEnableGestureNavListener()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mEnableGestureNavReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mEnableGestureNavReceiver:Landroid/content/BroadcastReceiver;

    :cond_c
    return-void
.end method

.method private resetNavBarMode()V
    .registers 6

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string v3, "mz_current_navigation_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v3, "com.android.internal.systemui.navbar.threebutton"

    const-string v4, "com.android.internal.systemui.navbar.gestural"

    if-ne v0, v1, :cond_18

    .line 432
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    goto :goto_1b

    .line 434
    :cond_18
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    :goto_1b
    if-eqz v0, :cond_2d

    const/4 v3, 0x1

    if-eq v0, v3, :cond_27

    if-eq v0, v1, :cond_23

    goto :goto_30

    .line 445
    :cond_23
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    goto :goto_30

    :cond_27
    const-string v0, "com.android.internal.systemui.navbar.twobutton"

    .line 442
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    goto :goto_30

    .line 439
    :cond_2d
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    :goto_30
    return-void
.end method

.method private restoreGesturalNavOverlayIfNecessary()V
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->supportsDeviceAdmin()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    .line 376
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 377
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getUserProvisioningState()I

    move-result v1

    if-nez v1, :cond_27

    .line 378
    :cond_24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setGestureModeOverlayForMainLauncher()Z

    .line 384
    :cond_27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2d
    return-void
.end method

.method private setGestureModeOverlayForMainLauncher()Z
    .registers 5

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeEnableGestureNavListener()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    return v1

    .line 196
    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching system navigation to full-gesture mode: contextUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 198
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    const-string v2, "com.android.internal.systemui.navbar.gestural"

    .line 200
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    return v1
.end method

.method private supportsDeviceAdmin()Z
    .registers 2

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.device_admin"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p1, "NavigationModeController:"

    .line 404
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1b
    const-string p1, ", "

    .line 408
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p3}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_28

    goto :goto_2a

    :catch_28
    const-string p1, "failed_to_fetch"

    .line 412
    :goto_2a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  defaultOverlays="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->dumpAssetPaths(Landroid/content/Context;)V

    return-void
.end method

.method public getCurrentUserContext()Landroid/content/Context;
    .registers 4

    .line 289
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_13

    .line 295
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    return-object p0

    .line 298
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 299
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 298
    invoke-virtual {v1, p0, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$setModeOverlay$1$NavigationModeController(Ljava/lang/String;I)V
    .registers 5

    .line 391
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, p1, p2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_24

    .line 397
    :catch_6
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to enable overlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public synthetic lambda$updateCurrentInteractionMode$0$NavigationModeController(I)V
    .registers 3

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 253
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "navigation_mode"

    .line 252
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V
    .registers 2

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setModeOverlay(Ljava/lang/String;I)V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public updateCurrentInteractionMode(Z)V
    .registers 5

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    .line 250
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$Az4iHIVUWwUXS_IGosEIyzFux8w;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$Az4iHIVUWwUXS_IGosEIyzFux8w;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    .line 262
    :goto_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_31

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;->onNavigationModeChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method
