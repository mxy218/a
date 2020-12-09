.class Lcom/android/server/statusbar/StatusBarManagerService$2;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActionsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isGlobalActionsDisabled()Z
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$1100(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v0

    .line 476
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public setGlobalActionsListener(Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$1302(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    .line 482
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$1300(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-interface {p1, v0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    .line 483
    return-void
.end method

.method public showGlobalActions()V
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 489
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showGlobalActionsMenu()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 490
    :catch_12
    move-exception v0

    .line 492
    :cond_13
    :goto_13
    return-void
.end method
