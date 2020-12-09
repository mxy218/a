.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 59
    :try_start_0
    new-instance p1, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 65
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p1}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 66
    const-string/jumbo p1, "telecom"

    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 68
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p1}, Lcom/android/server/telecom/TelecomLoaderService;->access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_80

    .line 69
    :try_start_1f
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p2}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object p2

    if-eqz p2, :cond_7b

    .line 70
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 71
    invoke-static {p2}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 73
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 74
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 75
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_7b

    .line 77
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 78
    nop

    .line 79
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 80
    add-int/lit8 v1, v1, -0x1

    :goto_5f
    if-ltz v1, :cond_7b

    .line 81
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 82
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 83
    nop

    .line 84
    invoke-virtual {p2, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 80
    add-int/lit8 v1, v1, -0x1

    goto :goto_5f

    .line 90
    :cond_7b
    monitor-exit p1

    .line 93
    goto :goto_88

    .line 90
    :catchall_7d
    move-exception p2

    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_1f .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p2
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_80} :catch_80

    .line 91
    :catch_80
    move-exception p1

    .line 92
    const-string p1, "TelecomLoaderService"

    const-string p2, "Failed linking to death."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_88
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 98
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p1}, Lcom/android/server/telecom/TelecomLoaderService;->access$000(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 99
    return-void
.end method
