.class final Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingAppPermission"
.end annotation


# instance fields
.field private final accountDigest:Ljava/lang/String;

.field private final certDigest:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field private final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 94
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    .line 98
    iput p5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 99
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public apply(Landroid/content/pm/PackageManager;)Z
    .registers 13

    .line 102
    nop

    .line 103
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 105
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_10
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_a1

    .line 107
    :try_start_13
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 108
    array-length v6, v4

    move v7, v5

    :goto_2d
    if-ge v7, v6, :cond_49

    aget-object v8, v4, v7

    .line 109
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    iget-object v10, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 109
    invoke-static {v10}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 111
    nop

    .line 112
    move-object v3, v8

    goto :goto_49

    .line 108
    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 115
    :cond_49
    :goto_49
    if-eqz v3, :cond_4c

    .line 116
    goto :goto_4d

    .line 118
    :cond_4c
    goto :goto_1e

    .line 119
    :cond_4d
    :goto_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_13 .. :try_end_4e} :catchall_9e

    .line 120
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_a1

    .line 121
    if-nez v3, :cond_52

    .line 122
    return v5

    .line 126
    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    iget v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_5c} :catch_9c

    .line 130
    nop

    .line 137
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_80

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-le v1, v2, :cond_7f

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    aget-object v0, v0, v5

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 143
    :cond_7f
    return v5

    .line 145
    :cond_80
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$100(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 147
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    const-string v1, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {v0, v3, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 150
    :cond_9b
    return v2

    .line 128
    :catch_9c
    move-exception p1

    .line 129
    return v5

    .line 119
    :catchall_9e
    move-exception p1

    :try_start_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw p1

    .line 120
    :catchall_a1
    move-exception p1

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a1

    throw p1
.end method
