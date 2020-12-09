.class Lcom/android/server/wm/Letterbox$InputInterceptor;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputInterceptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;
    }
.end annotation


# instance fields
.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mToken:Landroid/os/Binder;

.field final mWindowHandle:Landroid/view/InputWindowHandle;

.field final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    .line 173
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_1d

    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_1e

    :cond_1d
    move-object p1, p2

    :goto_1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 177
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 178
    new-instance v0, Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {v0, v2}, Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;-><init>(Landroid/view/InputChannel;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 182
    new-instance v0, Landroid/view/InputWindowHandle;

    .line 183
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 184
    iget-object p2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-object p1, p2, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    iput-object p1, p2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 186
    const p1, 0x20800028

    iput p1, p2, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 190
    const/16 p1, 0x7e6

    iput p1, p2, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 191
    const-wide v2, 0x12a05f200L

    iput-wide v2, p2, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 193
    iput-boolean v1, p2, Landroid/view/InputWindowHandle;->visible:Z

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p2, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    iput p2, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 196
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 197
    return-void
.end method


# virtual methods
.method dispose()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 217
    return-void
.end method

.method updateTouchableRegion(Landroid/graphics/Rect;)V
    .registers 4

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 204
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 205
    return-void

    .line 207
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 208
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Region;->translate(II)V

    .line 210
    return-void
.end method
