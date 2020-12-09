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
    .registers 4

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    .line 114
    new-instance v0, Lcom/android/server/wm/InputMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InputMonitor$1;-><init>(Lcom/android/server/wm/InputMonitor;)V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    .line 153
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 154
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 155
    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 156
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {p1}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 157
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance p1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mApplyImmediately:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/InputMonitor;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p2}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    .line 170
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 171
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z
    .registers 3

    .line 182
    if-eqz p1, :cond_c

    .line 183
    invoke-virtual {p1}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw()V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    .line 185
    const/4 p1, 0x1

    return p1

    .line 187
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private scheduleUpdateInputWindows()V
    .registers 3

    .line 313
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v0, :cond_5

    .line 314
    return-void

    .line 317
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez v0, :cond_13

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_13
    return-void
.end method


# virtual methods
.method createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 14

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 220
    new-instance v0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 221
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

    .line 223
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 224
    return-object v0

    .line 217
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Existing input consumer found with name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", display: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .registers 15

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 234
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

    .line 236
    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const p4, 0x3d13fc73

    const/4 p5, 0x1

    if-eq p3, p4, :cond_32

    const p4, 0x5463dca8

    if-eq p3, p4, :cond_28

    :cond_27
    goto :goto_3b

    :cond_28
    const-string p3, "wallpaper_input_consumer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_27

    const/4 p1, 0x0

    goto :goto_3b

    :cond_32
    const-string p3, "pip_input_consumer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_27

    move p1, p5

    :goto_3b
    if-eqz p1, :cond_49

    if-eq p1, p5, :cond_40

    goto :goto_4e

    .line 243
    :cond_40
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget p3, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    goto :goto_4e

    .line 238
    :cond_49
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean p5, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 239
    nop

    .line 246
    :goto_4e
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 247
    return-void

    .line 230
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Existing input consumer found with name: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", display: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method destroyInputConsumer(Ljava/lang/String;)Z
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 175
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 176
    return p1

    .line 178
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 393
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InputConsumers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    goto :goto_24

    .line 399
    :cond_3c
    return-void
.end method

.method getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/InputConsumerImpl;

    return-object p1
.end method

.method layoutInputConsumers(II)V
    .registers 8

    .line 196
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "layoutInputConsumer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_f
    if-ltz v2, :cond_21

    .line 198
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_26

    .line 197
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 201
    :cond_21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_26
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method onDisplayRemoved()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    .line 165
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 370
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 378
    :cond_a
    return-void
.end method

.method populateInputWindowHandle(Landroid/view/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .registers 9

    .line 254
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 255
    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/view/InputWindowHandle;I)I

    move-result p3

    .line 256
    iput p3, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 257
    iput p4, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 258
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide p3

    iput-wide p3, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 259
    iput-boolean p5, p1, Landroid/view/InputWindowHandle;->visible:Z

    .line 260
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p3

    iput-boolean p3, p1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 261
    iput-boolean p6, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 262
    iput-boolean p7, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 263
    iget-object p3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p3, :cond_29

    iget-object p3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean p3, p3, Lcom/android/server/wm/AppWindowToken;->paused:Z

    goto :goto_2a

    :cond_29
    const/4 p3, 0x0

    :goto_2a
    iput-boolean p3, p1, Landroid/view/InputWindowHandle;->paused:Z

    .line 264
    iget p3, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput p3, p1, Landroid/view/InputWindowHandle;->layer:I

    .line 265
    iget-object p3, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p3, p3, Lcom/android/server/wm/Session;->mPid:I

    iput p3, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 266
    iget-object p3, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p3, p3, Lcom/android/server/wm/Session;->mUid:I

    iput p3, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 267
    iget-object p3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput p3, p1, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 268
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p3

    iput p3, p1, Landroid/view/InputWindowHandle;->displayId:I

    .line 270
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p3

    .line 271
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iput p4, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 272
    iget p4, p3, Landroid/graphics/Rect;->top:I

    iput p4, p1, Landroid/view/InputWindowHandle;->frameTop:I

    .line 273
    iget p4, p3, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/view/InputWindowHandle;->frameRight:I

    .line 274
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iput p3, p1, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 279
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iget-object p3, p3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 281
    iget p3, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 p4, 0x3f800000  # 1.0f

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_74

    .line 285
    iget p2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr p4, p2

    iput p4, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    goto :goto_76

    .line 287
    :cond_74
    iput p4, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 295
    :goto_76
    if-eqz p6, :cond_7a

    .line 296
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mFocusedInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 298
    :cond_7a
    return-void
.end method

.method resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    .line 209
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 212
    :cond_18
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 381
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 387
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 389
    :cond_b
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    .line 358
    if-nez p1, :cond_d

    .line 359
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    goto :goto_22

    .line 361
    :cond_d
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 362
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 363
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 365
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    .line 367
    :goto_22
    return-void
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1b

    .line 340
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 344
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 347
    :cond_11
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 350
    if-eqz p2, :cond_1b

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 354
    :cond_1b
    return-void
.end method

.method setUpdateInputWindowsNeededLw()V
    .registers 2

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 302
    return-void
.end method

.method updateInputWindowsImmediately()V
    .registers 2

    .line 324
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-eqz v0, :cond_f

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mApplyImmediately:Z

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mApplyImmediately:Z

    .line 329
    :cond_f
    return-void
.end method

.method updateInputWindowsLw(Z)V
    .registers 2

    .line 306
    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez p1, :cond_7

    .line 307
    return-void

    .line 309
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->scheduleUpdateInputWindows()V

    .line 310
    return-void
.end method
