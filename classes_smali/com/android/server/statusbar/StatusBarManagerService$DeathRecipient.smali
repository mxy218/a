.class Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "x1"  # Lcom/android/server/statusbar/StatusBarManagerService$1;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 100
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/IStatusBar;

    .line 101
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 102
    return-void
.end method

.method public linkToDeath()V
    .registers 4

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$300(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 109
    goto :goto_1d

    .line 107
    :catch_15
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string v2, "Unable to register Death Recipient for status bar"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method
