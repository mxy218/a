.class final Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeadWindowEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V
    .registers 3
    .param p2, "inputChannel"  # Landroid/view/InputChannel;

    .line 2167
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->this$0:Lcom/android/server/wm/WindowState;

    .line 2168
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 2169
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"  # Landroid/view/InputEvent;

    .line 2172
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 2173
    return-void
.end method
