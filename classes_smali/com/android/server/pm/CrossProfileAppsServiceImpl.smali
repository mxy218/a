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
    .param p1, "context"  # Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "injector"  # Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
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
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callingUserId"  # I
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
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 160
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2

    .line 162
    .local v2, "enabledProfileIds":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v3, "targetProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_2f

    aget v6, v2, v5

    .line 164
    .local v6, "userId":I
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

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_36

    .line 163
    .end local v6  # "userId":I
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 172
    :cond_2f
    nop

    .line 174
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 172
    return-object v3

    .line 174
    .end local v2  # "enabledProfileIds":[I
    .end local v3  # "targetProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_36
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 179
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 180
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v1

    .line 182
    .local v1, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/high16 v4, 0xc0000

    .line 183
    invoke-virtual {v3, p1, v4, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 188
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_22

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_29

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    .line 190
    :goto_23
    iget-object v5, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v5, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 188
    return v4

    .line 190
    .end local v3  # "info":Landroid/content/pm/PackageInfo;
    :catchall_29
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isSameProfileGroup(II)Z
    .registers 7
    .param p1, "callerUserId"  # I
    .param p2, "userId"  # I

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 227
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    .line 229
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 227
    return v2

    .line 229
    :catchall_16
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .registers 13
    .param p1, "launchIntent"  # Landroid/content/Intent;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I

    .line 200
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 203
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-virtual {v2, p1, v3, p3, p4}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v2

    .line 208
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 209
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v3, :cond_46

    .line 210
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 211
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 212
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_43

    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_5d

    if-eqz v6, :cond_43

    .line 220
    iget-object v6, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v6, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    .line 214
    return-void

    .line 209
    .end local v5  # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 217
    .end local v4  # "i":I
    :cond_46
    :try_start_46
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/CrossProfileAppsServiceImpl;
    .end local p1  # "launchIntent":Landroid/content/Intent;
    .end local p2  # "component":Landroid/content/ComponentName;
    .end local p3  # "callingUid":I
    .end local p4  # "userId":I
    throw v4
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_5d

    .line 220
    .end local v2  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3  # "size":I
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/CrossProfileAppsServiceImpl;
    .restart local p1  # "launchIntent":Landroid/content/Intent;
    .restart local p2  # "component":Landroid/content/ComponentName;
    .restart local p3  # "callingUid":I
    .restart local p4  # "userId":I
    :catchall_5d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private verifyCallingPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "callingPackage"  # Ljava/lang/String;

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
    .param p1, "callingPackage"  # Ljava/lang/String;
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

    move-result-object v0

    return-object v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;IZ)V
    .registers 20
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "component"  # Landroid/content/ComponentName;
    .param p4, "userId"  # I
    .param p5, "launchMainActivity"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 95
    nop

    .line 96
    const/16 v1, 0x7e

    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    .line 97
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 100
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v10

    .line 101
    .local v10, "callerUserId":I
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v11

    .line 103
    .local v11, "callingUid":I
    invoke-direct {p0, v7, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 105
    .local v12, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 117
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v13, v1

    .line 118
    .local v13, "launchIntent":Landroid/content/Intent;
    if-eqz p5, :cond_67

    .line 119
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x10200000

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_84

    .line 130
    :cond_67
    if-eq v10, v9, :cond_81

    .line 131
    const/4 v1, -0x1

    const-string v3, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v3, v11, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    .line 134
    .local v1, "permissionFlag":I
    if-nez v1, :cond_79

    .line 135
    invoke-direct {p0, v10, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isSameProfileGroup(II)Z

    move-result v2

    if-eqz v2, :cond_79

    goto :goto_81

    .line 136
    :cond_79
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    .end local v1  # "permissionFlag":I
    :cond_81
    :goto_81
    invoke-virtual {v13, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    :goto_84
    invoke-direct {p0, v13, v8, v11, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {v13, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v2

    .line 149
    if-eqz p5, :cond_a0

    .line 150
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object v5, v1

    goto :goto_a1

    .line 151
    :cond_a0
    move-object v5, v1

    .line 147
    :goto_a1
    move-object v1, v2

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 153
    return-void

    .line 111
    .end local v13  # "launchIntent":Landroid/content/Intent;
    :cond_ac
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attempts to start an activity in other package - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_ca
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot access unrelated user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
