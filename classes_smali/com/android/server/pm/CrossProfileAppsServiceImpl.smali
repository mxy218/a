.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProfileAppsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 59
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 63
    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 66
    return-void
.end method

.method private getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 159
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 160
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    array-length v4, v2

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_2f

    aget v6, v2, v5

    .line 164
    if-ne v6, p2, :cond_1e

    .line 165
    goto :goto_2c

    .line 167
    :cond_1e
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_25

    .line 168
    goto :goto_2c

    .line 170
    :cond_25
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_36

    .line 163
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 172
    :cond_2f
    nop

    .line 174
    iget-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 172
    return-object v3

    .line 174
    :catchall_36
    move-exception p1

    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .registers 8

    .line 179
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v1

    .line 182
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/high16 v4, 0xc0000

    .line 183
    invoke-virtual {v3, p1, v4, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 188
    if-eqz p1, :cond_22

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_29

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 190
    :goto_23
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 188
    return p1

    .line 190
    :catchall_29
    move-exception p1

    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isSameProfileGroup(II)Z
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 227
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    .line 229
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 227
    return p1

    .line 229
    :catchall_16
    move-exception p1

    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .registers 10

    .line 200
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 203
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-virtual {v2, p1, v3, p3, p4}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 209
    const/4 p4, 0x0

    :goto_17
    if-ge p4, p3, :cond_46

    .line 210
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 211
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 212
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_5d

    if-eqz v2, :cond_43

    .line 220
    iget-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 214
    return-void

    .line 209
    :cond_43
    add-int/lit8 p4, p4, 0x1

    goto :goto_17

    .line 217
    :cond_46
    :try_start_46
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_5d

    .line 220
    :catchall_5d
    move-exception p1

    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private verifyCallingPackage(Ljava/lang/String;)V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method public getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 74
    nop

    .line 75
    const/16 v0, 0x7d

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 80
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;IZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 95
    nop

    .line 96
    const/16 v0, 0x7e

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 97
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 101
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v2

    .line 103
    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 105
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 110
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 117
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 118
    if-eqz p5, :cond_5f

    .line 119
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v0, 0x10200000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7c

    .line 130
    :cond_5f
    if-eq v0, p4, :cond_79

    .line 131
    const/4 v3, -0x1

    const-string v4, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v4, v2, v3, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    .line 134
    if-nez v1, :cond_71

    .line 135
    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isSameProfileGroup(II)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_79

    .line 136
    :cond_71
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_79
    :goto_79
    invoke-virtual {v7, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    :goto_7c
    invoke-direct {p0, v7, p3, v2, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {v7, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    iget-object p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v4

    .line 149
    if-eqz p5, :cond_98

    .line 150
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    move-object v8, p3

    goto :goto_99

    .line 151
    :cond_98
    move-object v8, v0

    .line 147
    :goto_99
    move-object v5, p1

    move-object v6, p2

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 153
    return-void

    .line 111
    :cond_a0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attempts to start an activity in other package - "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_be
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot access unrelated user "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
