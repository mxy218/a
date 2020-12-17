.class Lcom/android/server/wm/WindowManagerService$9;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$callback:Landroid/view/IOnKeyguardExitResult;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/wm/WindowManagerService;

    .line 2957
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$9;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 3
    .param p1, "success"  # Z

    .line 2961
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$9;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-interface {v0, p1}, Landroid/view/IOnKeyguardExitResult;->onKeyguardExitResult(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2964
    goto :goto_7

    .line 2962
    :catch_6
    move-exception v0

    .line 2965
    :goto_7
    return-void
.end method
