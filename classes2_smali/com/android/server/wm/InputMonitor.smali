.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;,
        Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    }
.end annotation


# instance fields
.field private mApplyImmediately:Z

.field private mDisableWallpaperTouchEvents:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayId:I

.field private mDisplayRemoved:Z

.field private mFocusedInputWindowHandle:Landroid/view/InputWindowHandle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/InputConsumerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field private final mUpdateInputWindows:Ljava/lang/Runnable;

.field private mUpdateInputWindowsNeeded:Z

.field private mUpdateInputWindowsPending:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"  # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    .line 115
    new-instance v0, Lcom/android/server/wm/InputMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InputMonitor$1;-><init>(Lcom/android/server/wm/InputMonitor;)V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    .line 154
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 156
    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 158
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"  # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"  # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mApplyImmediately:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"  # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/InputMonitor;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/InputMonitor;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "consumer"  # Lcom/android/server/wm/InputConsumerImpl;

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p2}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 172
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z
    .registers 3
    .param p1, "consumer"  # Lcom/android/server/wm/InputConsumerImpl;

    .line 183
    if-eqz p1, :cond_c

    .line 184
    invoke-virtual {p1}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw()V

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    .line 186
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private scheduleUpdateInputWindows()V
    .registers 3

    .line 314
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v0, :cond_5

    .line 315
    return-void

    .line 318
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez v0, :cond_13

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :cond_13
    return-void
.end method


# virtual methods
.method createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 14
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "inputEventReceiverFactory"  # Landroid/view/InputEventReceiver$Factory;

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 221
    new-instance v0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/InputMonitor;Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;ILandroid/os/UserHandle;I)V

    .line 224
    .local v0, "consumer":Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 225
    return-object v0

    .line 218
    .end local v0  # "consumer":Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing input consumer found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .registers 15
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "inputChannel"  # Landroid/view/InputChannel;
    .param p4, "clientPid"  # I
    .param p5, "clientUser"  # Landroid/os/UserHandle;

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 235
    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V

    .line 237
    .local v0, "consumer":Lcom/android/server/wm/InputConsumerImpl;
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x3d13fc73

    const/4 v4, 0x1

    if-eq v2, v3, :cond_32

    const v3, 0x5463dca8

    if-eq v2, v3, :cond_28

    :cond_27
    goto :goto_3b

    :cond_28
    const-string v2, "wallpaper_input_consumer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x0

    goto :goto_3b

    :cond_32
    const-string v2, "pip_input_consumer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move v1, v4

    :goto_3b
    if-eqz v1, :cond_49

    if-eq v1, v4, :cond_40

    goto :goto_4e

    .line 244
    :cond_40
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    goto :goto_4e

    .line 239
    :cond_49
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v4, v1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 240
    nop

    .line 247
    :goto_4e
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 248
    return-void

    .line 231
    .end local v0  # "consumer":Lcom/android/server/wm/InputConsumerImpl;
    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing input consumer found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method destroyInputConsumer(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    invoke-direct {p0, v0}, Lcom/android/server/wm/InputMonitor;->disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 177
    return v0

    .line 179
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 394
    .local v0, "inputConsumerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InputConsumers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .end local v2  # "key":Ljava/lang/String;
    goto :goto_24

    .line 400
    :cond_3c
    return-void
.end method

.method getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    return-object v0
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 551
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J

    move-result-wide v0

    return-wide v0
.end method

.method layoutInputConsumers(II)V
    .registers 8
    .param p1, "dw"  # I
    .param p2, "dh"  # I

    .line 197
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "layoutInputConsumer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_21

    .line 199
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_26

    .line 198
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 202
    .end local v2  # "i":I
    :cond_21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 203
    nop

    .line 204
    return-void

    .line 202
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method onDisplayRemoved()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    .line 166
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "window"  # Lcom/android/server/wm/WindowToken;

    .line 371
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_24

    .line 372
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1e

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pausing WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 379
    :cond_24
    return-void
.end method

.method populateInputWindowHandle(Landroid/view/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .registers 11
    .param p1, "inputWindowHandle"  # Landroid/view/InputWindowHandle;
    .param p2, "child"  # Lcom/android/server/wm/WindowState;
    .param p3, "flags"  # I
    .param p4, "type"  # I
    .param p5, "isVisible"  # Z
    .param p6, "hasFocus"  # Z
    .param p7, "hasWallpaper"  # Z

    .line 255
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 256
    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/view/InputWindowHandle;I)I

    move-result p3

    .line 257
    iput p3, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 258
    iput p4, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 259
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 260
    iput-boolean p5, p1, Landroid/view/InputWindowHandle;->visible:Z

    .line 261
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    iput-boolean v0, p1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 262
    iput-boolean p6, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 263
    iput-boolean p7, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 264
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_29

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iput-boolean v0, p1, Landroid/view/InputWindowHandle;->paused:Z

    .line 265
    iget v0, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v0, p1, Landroid/view/InputWindowHandle;->layer:I

    .line 266
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 267
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 268
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v0, p1, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 269
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    .line 271
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 272
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 273
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameTop:I

    .line 274
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameRight:I

    .line 275
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 280
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 282
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_74

    .line 286
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v2, v1

    iput v2, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    goto :goto_76

    .line 288
    :cond_74
    iput v2, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 291
    :goto_76
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v1, :cond_98

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInputWindowHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_98
    if-eqz p6, :cond_9c

    .line 297
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mFocusedInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 299
    :cond_9c
    return-void
.end method

.method resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 213
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "window"  # Lcom/android/server/wm/WindowToken;

    .line 382
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_25

    .line 383
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1e

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resuming WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 390
    :cond_25
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "newApp"  # Lcom/android/server/wm/AppWindowToken;

    .line 359
    if-nez p1, :cond_d

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    goto :goto_22

    .line 362
    :cond_d
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 363
    .local v0, "handle":Landroid/view/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 364
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 366
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    .line 368
    .end local v0  # "handle":Landroid/view/InputApplicationHandle;
    :goto_22
    return-void
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .param p1, "newWindow"  # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"  # Z

    .line 336
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1e

    .line 337
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input focus has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_39

    .line 341
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 345
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 348
    :cond_2f
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 349
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 351
    if-eqz p2, :cond_39

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 355
    :cond_39
    return-void
.end method

.method setUpdateInputWindowsNeededLw()V
    .registers 2

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 303
    return-void
.end method

.method updateInputWindowsImmediately()V
    .registers 2

    .line 325
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-eqz v0, :cond_f

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mApplyImmediately:Z

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mApplyImmediately:Z

    .line 330
    :cond_f
    return-void
.end method

.method updateInputWindowsLw(Z)V
    .registers 3
    .param p1, "force"  # Z

    .line 307
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v0, :cond_7

    .line 308
    return-void

    .line 310
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->scheduleUpdateInputWindows()V

    .line 311
    return-void
.end method
