.class Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DragInputEventReceiver.java"


# instance fields
.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mIsStartEvent:Z

.field private mMuteInput:Z

.field private mStylusButtonDownAtStart:Z


# direct methods
.method constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 45
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 48
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 53
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 54
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 10

    .line 58
    nop

    .line 60
    const/4 v0, 0x0

    :try_start_2
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_68

    .line 61
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v1, :cond_13

    goto :goto_68

    .line 65
    :cond_13
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 66
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 67
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 68
    nop

    .line 69
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_2a

    move v5, v6

    goto :goto_2b

    :cond_2a
    move v5, v0

    .line 71
    :goto_2b
    iget-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v7, :cond_33

    .line 74
    iput-boolean v5, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 78
    :cond_33
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_6e
    .catchall {:try_start_2 .. :try_end_37} :catchall_6c

    if-eqz v1, :cond_64

    if-eq v1, v6, :cond_50

    if-eq v1, v2, :cond_47

    const/4 v2, 0x3

    if-eq v1, v2, :cond_44

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 102
    return-void

    .line 99
    :cond_44
    :try_start_44
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 100
    goto :goto_53

    .line 83
    :cond_47
    iget-boolean v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v1, :cond_53

    if-nez v5, :cond_53

    .line 88
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_53

    .line 95
    :cond_50
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 96
    nop

    .line 105
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-nez v2, :cond_5b

    move v2, v6

    goto :goto_5c

    :cond_5b
    move v2, v0

    :goto_5c
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5f} :catch_6e
    .catchall {:try_start_44 .. :try_end_5f} :catchall_6c

    .line 106
    nop

    .line 110
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_79

    :cond_64
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 81
    return-void

    .line 110
    :cond_68
    :goto_68
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 63
    return-void

    .line 110
    :catchall_6c
    move-exception v1

    goto :goto_7b

    .line 107
    :catch_6e
    move-exception v1

    .line 108
    :try_start_6f
    const-string v2, "WindowManager"

    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_6c

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 111
    :goto_79
    nop

    .line 112
    return-void

    .line 110
    :goto_7b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
