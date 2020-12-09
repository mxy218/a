.class final Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# static fields
.field static final DISMISS_DIALOG_UI_MSG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 6122
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6123
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 6128
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_e

    .line 6130
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    .line 6131
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 6132
    nop

    .line 6135
    :goto_e
    return-void
.end method
