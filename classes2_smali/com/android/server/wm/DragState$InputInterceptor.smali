.class Lcom/android/server/wm/DragState$InputInterceptor;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputInterceptor"
.end annotation


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field mDragWindowHandle:Landroid/view/InputWindowHandle;

.field mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

.field mServerChannel:Landroid/view/InputChannel;

.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V
    .registers 11

    .line 265
    iput-object p1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const-string v0, "drag"

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 267
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 268
    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 269
    iget-object v1, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 270
    new-instance v1, Lcom/android/server/wm/DragInputEventReceiver;

    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    iget-object v6, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 271
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-direct {v1, v4, v6, v7}, Lcom/android/server/wm/DragInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 273
    new-instance v1, Landroid/view/InputApplicationHandle;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-direct {v1, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 274
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    iput-object v0, v1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 275
    const-wide v6, 0x12a05f200L

    iput-wide v6, v1, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 278
    new-instance v4, Landroid/view/InputWindowHandle;

    .line 279
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-direct {v4, v1, v5, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 280
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v0, p2, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 282
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DragState;->getDragLayerLocked()I

    move-result v0

    iput v0, p2, Landroid/view/InputWindowHandle;->layer:I

    .line 283
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, p2, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 284
    const/16 v0, 0x7e0

    iput v0, p2, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 285
    iput-wide v6, p2, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 287
    iput-boolean v3, p2, Landroid/view/InputWindowHandle;->visible:Z

    .line 288
    iput-boolean v2, p2, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 289
    iput-boolean v3, p2, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 290
    iput-boolean v2, p2, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 291
    iput-boolean v2, p2, Landroid/view/InputWindowHandle;->paused:Z

    .line 292
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p2, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 293
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p2, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 294
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, p2, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 295
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p2, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 298
    iget-object p2, p2, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 301
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, p2, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 302
    iput v2, p2, Landroid/view/InputWindowHandle;->frameTop:I

    .line 303
    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p2, Landroid/view/InputWindowHandle;->frameRight:I

    .line 304
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p2, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 310
    iget-object p1, p1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->pauseRotationLocked()V

    .line 311
    return-void
.end method


# virtual methods
.method tearDown()V
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/DragInputEventReceiver;->dispose()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 317
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 319
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 320
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 322
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 323
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->resumeRotationLocked()V

    .line 330
    return-void
.end method
