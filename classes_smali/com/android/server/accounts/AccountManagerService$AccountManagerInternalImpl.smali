.class final Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;
.super Landroid/accounts/AccountManagerInternal;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountManagerInternalImpl"
.end annotation


# instance fields
.field private mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2

    .line 6135
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/accounts/AccountManagerInternal;-><init>()V

    .line 6136
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$1;)V
    .registers 3

    .line 6135
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    return-void
.end method


# virtual methods
.method public addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
    .registers 3

    .line 6201
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$4000(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6202
    return-void
.end method

.method public backupAccountAccessPermissions(I)[B
    .registers 5

    .line 6211
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6212
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_10

    .line 6213
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 6216
    :cond_10
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->backupAccountAccessPermissions(I)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 6217
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public hasAccountAccess(Landroid/accounts/Account;I)Z
    .registers 5

    .line 6206
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->access$4100(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 15

    .line 6144
    if-nez p1, :cond_a

    .line 6145
    const-string p1, "AccountManagerService"

    const-string p2, "account cannot be null"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6146
    return-void

    .line 6148
    :cond_a
    if-nez p2, :cond_15

    .line 6149
    const-string p1, "AccountManagerService"

    const-string/jumbo p2, "packageName cannot be null"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6150
    return-void

    .line 6152
    :cond_15
    if-gez p3, :cond_20

    .line 6153
    const-string p1, "AccountManagerService"

    const-string/jumbo p2, "user id must be concrete"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6154
    return-void

    .line 6156
    :cond_20
    if-nez p4, :cond_2a

    .line 6157
    const-string p1, "AccountManagerService"

    const-string p2, "callback cannot be null"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6158
    return-void

    .line 6161
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 6162
    invoke-virtual {v0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->access$3700(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6163
    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 6164
    const-string p1, "AccountManagerService"

    const-string/jumbo p2, "requestAccountAccess: account is hidden"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6165
    return-void

    .line 6168
    :cond_44
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6170
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6171
    const/4 p2, 0x1

    const-string p3, "booleanResult"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6172
    invoke-virtual {p4, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 6173
    return-void

    .line 6178
    :cond_60
    :try_start_60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_64} :catch_a7

    .line 6180
    :try_start_64
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_a2

    .line 6182
    :try_start_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_71} :catch_a7

    .line 6183
    nop

    .line 6187
    nop

    .line 6189
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0, p1, p2, v2, p4}, Lcom/android/server/accounts/AccountManagerService;->access$3800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v7

    .line 6191
    iget-object p4, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService;->access$3900(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object p4

    monitor-enter p4

    .line 6192
    :try_start_80
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$3900(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6193
    monitor-exit p4
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_9f

    .line 6194
    iget-object p4, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object p4, p4, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, p4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V

    .line 6195
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v3 .. v9}, Lcom/android/server/accounts/AccountManagerService;->access$2100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 6196
    return-void

    .line 6193
    :catchall_9f
    move-exception p1

    :try_start_a0
    monitor-exit p4
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p1

    .line 6182
    :catchall_a2
    move-exception p1

    :try_start_a3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_a7} :catch_a7

    .line 6184
    :catch_a7
    move-exception p1

    .line 6185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6186
    return-void
.end method

.method public restoreAccountAccessPermissions([BI)V
    .registers 6

    .line 6222
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_10

    .line 6224
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 6227
    :cond_10
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->restoreAccountAccessPermissions([BI)V

    .line 6228
    monitor-exit v0

    .line 6229
    return-void

    .line 6228
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method
