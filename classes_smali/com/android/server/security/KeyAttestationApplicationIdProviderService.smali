.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f9

    if-ne v0, v1, :cond_5f

    .line 52
    nop

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 55
    :try_start_d
    iget-object v2, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_46

    .line 59
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 60
    array-length v3, v2

    new-array v3, v3, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    .line 62
    const/4 v4, 0x0

    :goto_1d
    array-length v5, v2

    if-ge v4, v5, :cond_3c

    .line 63
    iget-object v5, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v6, v2, v4

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 65
    new-instance v6, Landroid/security/keymaster/KeyAttestationPackageInfo;

    aget-object v7, v2, v4

    .line 66
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Ljava/lang/String;J[Landroid/content/pm/Signature;)V

    aput-object v6, v3, v4
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_39} :catch_50
    .catchall {:try_start_d .. :try_end_39} :catchall_4e

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 71
    :cond_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    nop

    .line 73
    new-instance p1, Landroid/security/keymaster/KeyAttestationApplicationId;

    invoke-direct {p1, v3}, Landroid/security/keymaster/KeyAttestationApplicationId;-><init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V

    return-object p1

    .line 57
    :cond_46
    :try_start_46
    new-instance p1, Landroid/os/RemoteException;

    const-string v2, "No packages for uid"

    invoke-direct {p1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_4e} :catch_50
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 71
    :catchall_4e
    move-exception p1

    goto :goto_5b

    .line 68
    :catch_50
    move-exception p1

    .line 69
    :try_start_51
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_4e

    .line 71
    :goto_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 50
    :cond_5f
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "This service can only be used by Keystore"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
