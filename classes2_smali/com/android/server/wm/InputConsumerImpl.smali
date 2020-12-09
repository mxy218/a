.class Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "InputConsumerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mApplicationHandle:Landroid/view/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mClientPid:I

.field final mClientUser:Landroid/os/UserHandle;

.field final mInputSurface:Landroid/view/SurfaceControl;

.field final mName:Ljava/lang/String;

.field private final mOldPosition:Landroid/graphics/Point;

.field private final mOldWindowCrop:Landroid/graphics/Rect;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field final mToken:Landroid/os/IBinder;

.field final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V
    .registers 10

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 55
    iput-object p3, p0, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    .line 56
    iput p5, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    .line 57
    iput-object p6, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    .line 59
    invoke-static {p3}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p1

    .line 60
    const/4 p2, 0x0

    aget-object p5, p1, p2

    iput-object p5, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    .line 61
    const/4 p5, 0x1

    if-eqz p4, :cond_42

    .line 62
    aget-object p6, p1, p5

    invoke-virtual {p6, p4}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 63
    aget-object p1, p1, p5

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 64
    iput-object p4, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    goto :goto_46

    .line 66
    :cond_42
    aget-object p1, p1, p5

    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 68
    :goto_46
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object p4, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 p6, 0x0

    invoke-virtual {p1, p4, p6}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 70
    new-instance p1, Landroid/view/InputApplicationHandle;

    new-instance p4, Landroid/os/Binder;

    invoke-direct {p4}, Landroid/os/Binder;-><init>()V

    invoke-direct {p1, p4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 71
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Landroid/view/InputApplicationHandle;

    iput-object p3, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 72
    const-wide v0, 0x12a05f200L

    iput-wide v0, p1, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 75
    new-instance p4, Landroid/view/InputWindowHandle;

    invoke-direct {p4, p1, p6, p7}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object p4, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 76
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-object p3, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 77
    iget-object p4, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {p4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p4

    iput-object p4, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 78
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/16 p4, 0x7e6

    iput p4, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 79
    iget p4, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    invoke-direct {p0, p4}, Lcom/android/server/wm/InputConsumerImpl;->getLayerLw(I)I

    move-result p4

    iput p4, p1, Landroid/view/InputWindowHandle;->layer:I

    .line 80
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p2, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 81
    iput-wide v0, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 83
    iput-boolean p5, p1, Landroid/view/InputWindowHandle;->visible:Z

    .line 84
    iput-boolean p2, p1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 85
    iput-boolean p2, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 86
    iput-boolean p2, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 87
    iput-boolean p2, p1, Landroid/view/InputWindowHandle;->paused:Z

    .line 88
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p4

    iput p4, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 89
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p4

    iput p4, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 90
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p2, p1, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 91
    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 93
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Input Consumer "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 96
    return-void
.end method

.method private getLayerLw(I)I
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x2710

    add-int/lit16 p1, p1, 0x3e8

    return p1
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 170
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v2, Landroid/view/InputWindowHandle;->displayId:I

    .line 171
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/InputConsumerImpl;->unlinkFromDeathRecipient()V

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method

.method disposeChannelsLw()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/wm/InputConsumerImpl;->unlinkFromDeathRecipient()V

    .line 164
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  name="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 139
    return-void
.end method

.method layout(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    iget-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 121
    return-void
.end method

.method layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 7

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 127
    return-void

    .line 130
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 133
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    .line 134
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    return-void
.end method

.method linkToDeathRecipient()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 100
    return-void

    .line 104
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 107
    goto :goto_b

    .line 105
    :catch_a
    move-exception v0

    .line 108
    :goto_b
    return-void
.end method

.method show(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 151
    return-void
.end method

.method show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 145
    return-void
.end method

.method unlinkFromDeathRecipient()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 112
    return-void

    .line 115
    :cond_5
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    return-void
.end method
