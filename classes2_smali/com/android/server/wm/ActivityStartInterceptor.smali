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

    .line 105
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/RootActivityContainer;Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/RootActivityContainer;Landroid/content/Context;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 113
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 114
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method private createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .registers 15

    .line 131
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v11

    .line 132
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

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object p1

    .line 137
    new-instance p2, Landroid/content/IntentSender;

    invoke-direct {p2, p1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object p2
.end method

.method private deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 185
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_18

    .line 186
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 187
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 189
    :cond_18
    return-object v1
.end method

.method private interceptHarmfulAppIfNeeded()Z
    .registers 8

    .line 317
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 318
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_53

    .line 321
    nop

    .line 323
    if-nez v1, :cond_15

    .line 324
    return v0

    .line 327
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 333
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 334
    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 338
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 339
    const/4 v0, 0x1

    return v0

    .line 319
    :catch_53
    move-exception v1

    .line 320
    return v0
.end method

.method private interceptQuietProfileIfNeeded()Z
    .registers 9

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 195
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_10
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 201
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 202
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 203
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method private interceptSuspendedByAdminPackage()Z
    .registers 10

    .line 213
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 214
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 215
    if-nez v0, :cond_c

    .line 216
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_c
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v1, "android.app.extra.RESTRICTION"

    const-string v3, "policy_suspend_packages"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 222
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_45

    .line 227
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_56

    .line 230
    :cond_45
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 233
    :goto_56
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 234
    return v2
.end method

.method private interceptSuspendedPackageIfNeeded()Z
    .registers 8

    .line 239
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

    .line 243
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 244
    if-nez v0, :cond_1e

    .line 245
    return v1

    .line 247
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 248
    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 249
    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 250
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result v0

    return v0

    .line 252
    :cond_37
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    .line 253
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 255
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 256
    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 260
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_6f
    :goto_6f
    return v1
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 7

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 296
    return-object v1

    .line 299
    :cond_c
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 301
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 302
    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 303
    invoke-virtual {v2, v1, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p2

    .line 304
    if-nez p2, :cond_25

    .line 305
    return-object v1

    .line 307
    :cond_25
    const v1, 0x10804000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 311
    return-object p2
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .registers 9

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    .line 265
    if-nez v0, :cond_c

    .line 266
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_c
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 269
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 270
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v1, :cond_28

    .line 276
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v3, "android.intent.extra.TASK_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 279
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_32

    .line 280
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 283
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 285
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 286
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskRecord;IILandroid/app/ActivityOptions;)Z
    .registers 10

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 151
    iput p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 152
    iput p7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 153
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 154
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 155
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 157
    iput-object p8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 159
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_20

    .line 162
    return p2

    .line 164
    :cond_20
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 167
    return p2

    .line 169
    :cond_27
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 172
    return p2

    .line 174
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    move-result p1

    return p1
.end method

.method setStates(IIIILjava/lang/String;)V
    .registers 6

    .line 123
    iput p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 124
    iput p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 125
    iput p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 126
    iput p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 127
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 128
    return-void
.end method
