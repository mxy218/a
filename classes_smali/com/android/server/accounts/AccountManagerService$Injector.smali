.class Lcom/android/server/accounts/AccountManagerService$Injector;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 6236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6237
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6238
    return-void
.end method


# virtual methods
.method addLocalService(Landroid/accounts/AccountManagerInternal;)V
    .registers 3

    .line 6252
    const-class v0, Landroid/accounts/AccountManagerInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6253
    return-void
.end method

.method getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .registers 3

    .line 6296
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getCeDatabaseName(I)Ljava/lang/String;
    .registers 4

    .line 6262
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "accounts_ce.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6264
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 6248
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDeDatabaseName(I)Ljava/lang/String;
    .registers 4

    .line 6256
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "accounts_de.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6258
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getMessageHandlerLooper()Landroid/os/Looper;
    .registers 5

    .line 6241
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "AccountManagerService"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 6243
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 6244
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getNotificationManager()Landroid/app/INotificationManager;
    .registers 2

    .line 6300
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method getPreNDatabaseName(I)Ljava/lang/String;
    .registers 6

    .line 6268
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 6269
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "accounts.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6271
    if-nez p1, :cond_68

    .line 6276
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6277
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_68

    .line 6279
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 6280
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 6281
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_4a

    .line 6282
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User dir cannot be created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6286
    :cond_4a
    :goto_4a
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_68

    .line 6287
    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User dir cannot be migrated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6292
    :cond_68
    :goto_68
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
