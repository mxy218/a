.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 2679
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2680
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2681
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 2685
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_34

    .line 2686
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 2687
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2688
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2689
    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 2690
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 2692
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_31

    .line 2693
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_34

    .line 2692
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1

    .line 2695
    :cond_34
    :goto_34
    return-void
.end method
