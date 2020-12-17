.class Lcom/android/server/wm/FlymeDimWindow$H;
.super Landroid/os/Handler;
.source "FlymeDimWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeDimWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeDimWindow;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeDimWindow;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 394
    iput-object p1, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    .line 395
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_68

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_58

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_34

    const/4 v3, 0x4

    if-eq v0, v3, :cond_24

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    goto :goto_70

    .line 434
    :cond_15
    monitor-enter p0

    .line 435
    :try_start_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;

    .line 436
    .local v0, "userWindowState":Lcom/android/server/wm/FlymeDimWindow$UserWindowState;
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowStateInner(Lcom/android/server/wm/FlymeDimWindow$UserWindowState;)V

    .line 437
    .end local v0  # "userWindowState":Lcom/android/server/wm/FlymeDimWindow$UserWindowState;
    monitor-exit p0

    .line 439
    goto :goto_70

    .line 437
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0

    .line 428
    :cond_24
    monitor-enter p0

    .line 429
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2c

    move v1, v2

    :cond_2c
    invoke-static {v0, v1}, Lcom/android/server/wm/FlymeDimWindow;->access$400(Lcom/android/server/wm/FlymeDimWindow;Z)V

    .line 430
    monitor-exit p0

    .line 432
    goto :goto_70

    .line 430
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_31

    throw v0

    .line 420
    :cond_34
    monitor-enter p0

    .line 421
    :try_start_35
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$1100(Lcom/android/server/wm/FlymeDimWindow;)Lcom/android/server/wm/FlymeDimWindow$DimView;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$1100(Lcom/android/server/wm/FlymeDimWindow;)Lcom/android/server/wm/FlymeDimWindow$DimView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeDimWindow$DimView;->setVisibility(I)V

    .line 424
    :cond_48
    monitor-exit p0

    .line 426
    goto :goto_70

    .line 424
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_4a

    throw v0

    .line 414
    :cond_4d
    monitor-enter p0

    .line 415
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$1000(Lcom/android/server/wm/FlymeDimWindow;)V

    .line 416
    monitor-exit p0

    .line 418
    goto :goto_70

    .line 416
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw v0

    .line 408
    :cond_58
    monitor-enter p0

    .line 409
    :try_start_59
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_60

    move v1, v2

    :cond_60
    invoke-static {v0, v1}, Lcom/android/server/wm/FlymeDimWindow;->access$900(Lcom/android/server/wm/FlymeDimWindow;Z)V

    .line 410
    monitor-exit p0

    .line 412
    goto :goto_70

    .line 410
    :catchall_65
    move-exception v0

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_65

    throw v0

    .line 402
    :cond_68
    monitor-enter p0

    .line 403
    :try_start_69
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$H;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$800(Lcom/android/server/wm/FlymeDimWindow;)V

    .line 404
    monitor-exit p0

    .line 406
    nop

    .line 443
    :goto_70
    return-void

    .line 404
    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v0
.end method
