.class Lcom/android/server/wm/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/wm/TaskRecord;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mServiceContext:Landroid/content/Context;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 106
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/RootActivityContainer;Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/RootActivityContainer;Landroid/content/Context;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "root"  # Lcom/android/server/wm/RootActivityContainer;
    .param p4, "context"  # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 113
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 114
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 115
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method private createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .registers 16
    .param p1, "callingUid"  # I
    .param p2, "flags"  # I

    .line 132
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v12

    .line 133
    .local v12, "activityOptions":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v1, 0x1

    new-array v8, v1, [Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v3, v8, v5

    new-array v9, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object v1, v9, v5

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v10, p2

    move-object v11, v12

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 138
    .local v0, "target":Landroid/content/IIntentSender;
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1
.end method

.method private deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 194
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_18

    .line 195
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 196
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 198
    :cond_18
    return-object v1
.end method

.method private interceptHarmfulAppIfNeeded()Z
    .registers 10

    .line 326
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 327
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_53

    .line 330
    .local v1, "harmfulAppWarning":Ljava/lang/CharSequence;
    nop

    .line 332
    if-nez v1, :cond_15

    .line 333
    return v0

    .line 336
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 339
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 342
    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 343
    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 344
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 346
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 347
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    const/4 v2, 0x1

    return v2

    .line 328
    .end local v0  # "target":Landroid/content/IntentSender;
    .end local v1  # "harmfulAppWarning":Ljava/lang/CharSequence;
    :catch_53
    move-exception v1

    .line 329
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method private interceptPackageUninstallIfNeeded()Z
    .registers 13

    .line 353
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 354
    return v1

    .line 357
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "scheme":Ljava/lang/String;
    const-string v3, "package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    const-string v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 360
    const-string v3, "android.intent.action.DELETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 361
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    :cond_34
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 362
    const/4 v4, 0x1

    const-string v5, "need_intercept"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 363
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v1, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 365
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 366
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    const-string v3, "com.android.settings"

    const-string v5, "com.meizu.settings.security.FlymeUninstallActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 370
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 371
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 372
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 374
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 375
    .local v5, "parent":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 376
    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 377
    return v4

    .line 380
    .end local v1  # "newIntent":Landroid/content/Intent;
    .end local v5  # "parent":Landroid/content/pm/UserInfo;
    :cond_97
    return v1
.end method

.method private interceptQuietProfileIfNeeded()Z
    .registers 10

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 204
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_10
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 210
    .local v0, "target":Landroid/content/IntentSender;
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 211
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 212
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 216
    .local v2, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 217
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 218
    const/4 v1, 0x1

    return v1
.end method

.method private interceptSuspendedByAdminPackage()Z
    .registers 12

    .line 222
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 223
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 224
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_c

    .line 225
    const/4 v1, 0x0

    return v1

    .line 227
    :cond_c
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v3, "android.app.extra.RESTRICTION"

    const-string v4, "policy_suspend_packages"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 231
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 235
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_45

    .line 236
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_56

    .line 239
    :cond_45
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 242
    :goto_56
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 243
    return v2
.end method

.method private interceptSuspendedPackageIfNeeded()Z
    .registers 12

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000  # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_15

    goto :goto_6f

    .line 252
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 253
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    if-nez v0, :cond_1e

    .line 254
    return v1

    .line 256
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 257
    .local v1, "suspendedPackage":Ljava/lang/String;
    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "suspendingPackage":Ljava/lang/String;
    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 259
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result v3

    return v3

    .line 261
    :cond_37
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v3

    .line 262
    .local v3, "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 264
    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 265
    iget v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 266
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 267
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 268
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 269
    const/4 v4, 0x1

    return v4

    .line 250
    .end local v0  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v1  # "suspendedPackage":Ljava/lang/String;
    .end local v2  # "suspendingPackage":Ljava/lang/String;
    .end local v3  # "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :cond_6f
    :goto_6f
    return v1
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 8
    .param p1, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"  # I

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 305
    return-object v1

    .line 308
    :cond_c
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 310
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 311
    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 312
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2, v1, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    .line 313
    .local v3, "newIntent":Landroid/content/Intent;
    if-nez v3, :cond_25

    .line 314
    return-object v1

    .line 316
    :cond_25
    const v1, 0x10804000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 320
    return-object v3
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .registers 10

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    .line 274
    .local v0, "interceptingIntent":Landroid/content/Intent;
    if-nez v0, :cond_c

    .line 275
    const/4 v1, 0x0

    return v1

    .line 277
    :cond_c
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 278
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 279
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v2, :cond_28

    .line 285
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v4, "android.intent.extra.TASK_ID"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 288
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_32

    .line 289
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 292
    :cond_32
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 293
    .local v2, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 294
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 295
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskRecord;IILandroid/app/ActivityOptions;)Z
    .registers 11
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "inTask"  # Lcom/android/server/wm/TaskRecord;
    .param p6, "callingPid"  # I
    .param p7, "callingUid"  # I
    .param p8, "activityOptions"  # Landroid/app/ActivityOptions;

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 151
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 152
    iput p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 153
    iput p7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 154
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 155
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 158
    iput-object p8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 161
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptPackageUninstallIfNeeded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 164
    return v1

    .line 168
    :cond_20
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 171
    return v1

    .line 173
    :cond_27
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 176
    return v1

    .line 178
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 181
    return v1

    .line 183
    :cond_35
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    move-result v0

    return v0
.end method

.method setStates(IIIILjava/lang/String;)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "realCallingPid"  # I
    .param p3, "realCallingUid"  # I
    .param p4, "startFlags"  # I
    .param p5, "callingPackage"  # Ljava/lang/String;

    .line 124
    iput p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 125
    iput p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 126
    iput p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 127
    iput p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 128
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 129
    return-void
.end method
