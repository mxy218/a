.class Lcom/android/server/pm/PackageManagerService$PackageManagerNative;
.super Landroid/content/pm/IPackageManagerNative$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerNative"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 25098
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageManagerNative$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"  # Lcom/android/server/pm/PackageManagerService$1;

    .line 25098
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25114
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25115
    .local v0, "installerName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 25116
    return-object v0

    .line 25119
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 25120
    .local v1, "callingUser":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 25123
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_28

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_28

    .line 25124
    const-string/jumbo v3, "preload"

    return-object v3

    .line 25126
    :cond_28
    const-string v3, ""

    return-object v3
.end method

.method public getLocationFlags(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 25169
    .local v0, "callingUser":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 25172
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_28

    .line 25176
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    .line 25177
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x2

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    or-int/2addr v3, v4

    .line 25178
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v2, 0x4

    :cond_26
    or-int/2addr v2, v3

    .line 25176
    return v2

    .line 25173
    :cond_28
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get ApplicationInfo for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getModuleMetadataPackageName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25183
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 5
    .param p1, "uids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25101
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v0

    .line 25103
    .local v0, "results":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_16

    .line 25104
    aget-object v2, v0, v1

    if-nez v2, :cond_13

    .line 25105
    const-string v2, ""

    aput-object v2, v0, v1

    .line 25103
    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 25108
    .end local v1  # "i":I
    :cond_16
    return-object v0
.end method

.method public getTargetSdkVersionForPackage(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 25146
    .local v0, "callingUser":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 25147
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_14

    .line 25151
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v2

    .line 25148
    :cond_14
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get ApplicationInfo for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getVersionCodeForPackage(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25132
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 25133
    .local v0, "callingUser":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 25134
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_16

    .line 25135
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    return-wide v2

    .line 25138
    .end local v0  # "callingUser":I
    .end local v1  # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_16
    goto :goto_18

    .line 25137
    :catch_17
    move-exception v0

    .line 25139
    :goto_18
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z
    .registers 8
    .param p1, "packageNames"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 25158
    .local v0, "callingUser":I
    array-length v1, p1

    new-array v1, v1, [Z

    .line 25159
    .local v1, "results":[Z
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_25

    .line 25160
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v4, p1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 25161
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    move-result v5

    :goto_20
    aput-boolean v5, v1, v2

    .line 25159
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 25163
    .end local v2  # "i":I
    :cond_25
    return-object v1
.end method
