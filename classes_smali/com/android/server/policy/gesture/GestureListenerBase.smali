.class public abstract Lcom/android/server/policy/gesture/GestureListenerBase;
.super Ljava/lang/Object;
.source "GestureListenerBase.java"

# interfaces
.implements Lcom/android/server/policy/gesture/IGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;
    }
.end annotation


# static fields
.field public static final IS_PRODUCT_INTERNATIONAL:Z

.field private static final SHELL_FINGERPRINT_KEY:Z

.field public static final SHOW_NAVIGATION_BAR_DEFAULT:I


# instance fields
.field protected DEVICE_HEIGHT:I

.field protected DEVICE_WIDTH:I

.field protected final GESTURE_TRIGGER_TIME_OUT:J

.field protected NAVIGATION_BAR_HEIGHT:I

.field protected final TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mDisplay:Landroid/view/Display;

.field protected mGesturePreTriggerBehavior:I

.field protected mGestureState:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

.field private mGestureTouchSlop:I

.field protected mMotionDownTime:J

.field protected mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

.field protected mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/gesture/GestureListenerBase;->IS_PRODUCT_INTERNATIONAL:Z

    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/android/server/policy/gesture/GestureListenerBase;->SHOW_NAVIGATION_BAR_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V
    .registers 5
    .param p1, "SystemGesture"  # Lcom/android/server/policy/gesture/SystemGesture;
    .param p2, "context"  # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->NAVIGATION_BAR_HEIGHT:I

    .line 33
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->GESTURE_TRIGGER_TIME_OUT:J

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mGesturePreTriggerBehavior:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mMotionDownTime:J

    .line 57
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    .line 58
    iput-object p2, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mContext:Landroid/content/Context;

    .line 59
    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 60
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mDisplay:Landroid/view/Display;

    .line 61
    return-void
.end method

.method private updateCTSTestTouchSlop()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v1}, Lcom/android/server/policy/gesture/SystemGesture;->getGestureSwitchController()Lcom/android/server/policy/gesture/GestureSwitchController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/gesture/GestureSwitchController;->isCTSRunning()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    goto :goto_24

    :cond_1d
    const v1, 0xa070003  # 6.500016E-33f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_24
    iput v1, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mGestureTouchSlop:I

    .line 179
    return-void
.end method


# virtual methods
.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getGestureTouchSlop()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mGestureTouchSlop:I

    return v0
.end method

.method protected abstract getSupportGestureType()I
.end method

.method protected hasRegisterClient()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 95
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 78
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->updateCTSTestTouchSlop()V

    .line 80
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public interceptMotionBeforeQueueingVice(Landroid/view/MotionEvent;)I
    .registers 3
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract isSupportGestureType(I)Z
.end method

.method protected notifyGestureCanceled()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyGestureCanceled "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_8
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    if-eqz v0, :cond_1d

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->getSupportGestureType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ISystemGestureListener;->onGestureCanceled(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 150
    :cond_1d
    goto :goto_1f

    .line 148
    :catch_1e
    move-exception v0

    .line 151
    :goto_1f
    return-void
.end method

.method protected notifyGesturePreTrigger(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 120
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyGesturePreTrigger x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_27
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    if-eqz v0, :cond_3c

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->getSupportGestureType()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/view/ISystemGestureListener;->onGesturePreTrigger(ILandroid/view/MotionEvent;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3c} :catch_3d

    .line 127
    :cond_3c
    goto :goto_3e

    .line 125
    :catch_3d
    move-exception v0

    .line 128
    :goto_3e
    return-void
.end method

.method protected notifyGesturePreTriggerBefore(Landroid/view/MotionEvent;)I
    .registers 5
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyGesturePreTrigger x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_27
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    if-eqz v0, :cond_3e

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->getSupportGestureType()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/view/ISystemGestureListener;->onGesturePreTriggerBefore(ILandroid/view/MotionEvent;)I

    move-result v0
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3f

    return v0

    .line 161
    :cond_3e
    goto :goto_40

    .line 159
    :catch_3f
    move-exception v0

    .line 162
    :goto_40
    const/4 v0, -0x1

    return v0
.end method

.method protected notifyGestureTriggered(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyGestureTriggered x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " getSupportGestureType() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->getSupportGestureType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_33
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    if-eqz v0, :cond_48

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    iget-object v0, v0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->getSupportGestureType()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/view/ISystemGestureListener;->onGestureTriggered(ILandroid/view/MotionEvent;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_48} :catch_49

    .line 138
    :cond_48
    goto :goto_4a

    .line 136
    :catch_49
    move-exception v0

    .line 139
    :goto_4a
    return-void
.end method

.method public setSystemGesutreClient(Lcom/android/server/policy/gesture/SystemGestureClient;)V
    .registers 4
    .param p1, "client"  # Lcom/android/server/policy/gesture/SystemGestureClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 109
    if-eqz p1, :cond_13

    iget v0, p1, Lcom/android/server/policy/gesture/SystemGestureClient;->gesture:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/gesture/GestureListenerBase;->isSupportGestureType(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 110
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gesture type not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mSystemGestureClient:Lcom/android/server/policy/gesture/SystemGestureClient;

    .line 113
    return-void
.end method

.method protected abstract shouldInterceptGesture()Z
.end method

.method public systemReady()V
    .registers 6

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 66
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 67
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 68
    .local v1, "width":I
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 69
    .local v2, "height":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->DEVICE_HEIGHT:I

    .line 70
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->DEVICE_WIDTH:I

    .line 71
    iget-object v3, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xa0702a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/gesture/GestureListenerBase;->NAVIGATION_BAR_HEIGHT:I

    .line 72
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->updateCTSTestTouchSlop()V

    .line 73
    return-void
.end method
