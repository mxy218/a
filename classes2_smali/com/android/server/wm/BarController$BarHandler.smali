.class Lcom/android/server/wm/BarController$BarHandler;
.super Landroid/os/Handler;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BarController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BarController;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/android/server/wm/BarController$BarHandler;->this$0:Lcom/android/server/wm/BarController;

    .line 359
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 360
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1d

    .line 366
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 367
    :goto_c
    iget-object p1, p0, Lcom/android/server/wm/BarController$BarHandler;->this$0:Lcom/android/server/wm/BarController;

    invoke-static {p1}, Lcom/android/server/wm/BarController;->access$100(Lcom/android/server/wm/BarController;)Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 368
    iget-object p1, p0, Lcom/android/server/wm/BarController$BarHandler;->this$0:Lcom/android/server/wm/BarController;

    invoke-static {p1}, Lcom/android/server/wm/BarController;->access$100(Lcom/android/server/wm/BarController;)Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;->onBarVisibilityChanged(Z)V

    .line 372
    :cond_1d
    :goto_1d
    return-void
.end method
