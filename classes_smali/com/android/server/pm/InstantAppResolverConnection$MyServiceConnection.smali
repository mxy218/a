.class final Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstantAppResolverConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection$1;)V
    .registers 3

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 308
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->access$100()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 309
    const-string p1, "PackageManager"

    const-string v0, "Connected to instant app resolver"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppResolverConnection;->access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 312
    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Landroid/app/IInstantAppResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstantAppResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection;->access$302(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;

    .line 313
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolverConnection;->access$400(Lcom/android/server/pm/InstantAppResolverConnection;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2c

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v0, v2}, Lcom/android/server/pm/InstantAppResolverConnection;->access$402(Lcom/android/server/pm/InstantAppResolverConnection;I)I
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_43

    .line 317
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_43

    .line 320
    goto :goto_38

    .line 318
    :catch_32
    move-exception p2

    .line 319
    :try_start_33
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Lcom/android/server/pm/InstantAppResolverConnection;->access$500(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 321
    :goto_38
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Lcom/android/server/pm/InstantAppResolverConnection;->access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 322
    monitor-exit p1

    .line 323
    return-void

    .line 322
    :catchall_43
    move-exception p2

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_43

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 327
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->access$100()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 328
    const-string p1, "PackageManager"

    const-string v0, "Disconnected from instant app resolver"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppResolverConnection;->access$200(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 331
    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolverConnection;->access$500(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 332
    monitor-exit p1

    .line 333
    return-void

    .line 332
    :catchall_1b
    move-exception v0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0
.end method
