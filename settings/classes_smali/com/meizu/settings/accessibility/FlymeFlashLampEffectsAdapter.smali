.class public Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;
.super Ljava/lang/Object;
.source "FlymeFlashLampEffectsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;
    }
.end annotation


# static fields
.field private static mCameraId:Ljava/lang/Integer;

.field private static mFlashLampEffectsClazz:Ljava/lang/Object;

.field private static mMeizuCameraClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mMethodFlashLampEffectsOpen:Ljava/lang/reflect/Method;

.field private static mMethodFlashLampEffectsRelease:Ljava/lang/reflect/Method;

.field private static mMethodSetFlashlightMode:Ljava/lang/reflect/Method;


# instance fields
.field private mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "com.meizu.camera.MeizuCamera"

    .line 55
    invoke-static {v0}, Lcom/meizu/settings/utils/MzReflectionUtils;->getReflectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMeizuCameraClass:Ljava/lang/Class;

    .line 57
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMeizuCameraClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "open"

    invoke-static {v0, v3, v2}, Lcom/meizu/settings/utils/MzReflectionUtils;->getReflectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsOpen:Ljava/lang/reflect/Method;

    .line 60
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMeizuCameraClass:Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v3, v2, v1

    const-string/jumbo v1, "setFlashlightMode"

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/MzReflectionUtils;->getReflectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodSetFlashlightMode:Ljava/lang/reflect/Method;

    .line 63
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMeizuCameraClass:Ljava/lang/Class;

    const-string/jumbo v1, "release"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/MzReflectionUtils;->getReflectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsRelease:Ljava/lang/reflect/Method;

    const-string v0, "FlymeFlashLampEffectsAdapter"

    const-string v1, "Creater!"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlymeFlashLampEffectsAdapter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;-><init>(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;I)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->enableFlashEffectsMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;)V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->disableFlashEffects()V

    return-void
.end method

.method private disableFlashEffects()V
    .registers 8

    const-string p0, "FlymeFlashLampEffectsAdapter"

    const-string v0, "disableFlashEffects"

    .line 157
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsOpen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6a

    sget-object v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    if-nez v1, :cond_6a

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->getCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/meizu/settings/utils/MzReflectionUtils;->invokeStaticMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 163
    sget-object v3, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodSetFlashlightMode:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, -0x1

    .line 165
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    .line 163
    invoke-static {v0, v3, v5}, Lcom/meizu/settings/utils/MzReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    sget-object v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsRelease:Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/MzReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableFlashEffects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    if-eqz v1, :cond_5c

    const-string v1, "Success!"

    goto :goto_5e

    :cond_5c
    const-string v1, "Failure!"

    :goto_5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sput-object v2, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    :cond_6a
    return-void
.end method

.method private enableFlashEffectsMode(I)V
    .registers 10

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableFlashEffectsMode mode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FlymeFlashLampEffectsAdapter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsOpen:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_7e

    sget-object v2, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    if-nez v2, :cond_7e

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->getCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p0, v3}, Lcom/meizu/settings/utils/MzReflectionUtils;->invokeStaticMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    .line 140
    sget-object p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p0, :cond_59

    .line 142
    sget-object v4, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodSetFlashlightMode:Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v5

    .line 142
    invoke-static {p0, v4, v6}, Lcom/meizu/settings/utils/MzReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    sget-object v2, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsRelease:Ljava/lang/reflect/Method;

    invoke-static {p0, v2, v3}, Lcom/meizu/settings/utils/MzReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    if-eqz p1, :cond_70

    const-string p1, "Success!"

    goto :goto_72

    :cond_70
    const-string p1, "Failure!"

    :goto_72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sput-object v3, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mFlashLampEffectsClazz:Ljava/lang/Object;

    :cond_7e
    return-void
.end method

.method private static declared-synchronized getCameraId()I
    .registers 3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-object v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mCameraId:Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_27

    if-nez v1, :cond_1f

    :try_start_7
    const-string v1, "com.meizu.camera.MeizuCamera"

    .line 101
    invoke-static {v1}, Lcom/meizu/settings/utils/Reflect;->on(Ljava/lang/String;)Lcom/meizu/settings/utils/Reflect;

    move-result-object v1

    const-string v2, "FLASH_LIGHT_SPECIAL_ID"

    invoke-virtual {v1, v2}, Lcom/meizu/settings/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sput-object v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mCameraId:Ljava/lang/Integer;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18
    .catchall {:try_start_7 .. :try_end_17} :catchall_27

    goto :goto_1f

    :catch_18
    const/4 v1, 0x5

    .line 103
    :try_start_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mCameraId:Ljava/lang/Integer;

    .line 107
    :cond_1f
    :goto_1f
    sget-object v1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mCameraId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_27

    monitor-exit v0

    return v1

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private removeFlashEffectsMessages(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_a

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_15

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_15
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_20

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_20
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_2b

    .line 128
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2b
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-nez p1, :cond_34

    .line 131
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_34
    return-void
.end method


# virtual methods
.method public startFlashEffects(I)V
    .registers 5

    .line 188
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsOpen:Ljava/lang/reflect/Method;

    const-string v1, "FlymeFlashLampEffectsAdapter"

    if-eqz v0, :cond_32

    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodSetFlashlightMode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsRelease:Ljava/lang/reflect/Method;

    if-nez v0, :cond_f

    goto :goto_32

    .line 195
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFlashLightMode flshMode effects :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x3e

    if-eqz v0, :cond_2e

    .line 200
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_31

    .line 202
    :cond_2e
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    :goto_31
    return-void

    :cond_32
    :goto_32
    const-string/jumbo p0, "setFlashLightMode don\'t support flash lamp effects!"

    .line 191
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopFlashEffectsImmediately()V
    .registers 2

    .line 176
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsOpen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodSetFlashlightMode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mMethodFlashLampEffectsRelease:Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    goto :goto_17

    :cond_d
    const/4 v0, 0x1

    .line 183
    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->removeFlashEffectsMessages(I)V

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->mHandler:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_17
    :goto_17
    const-string p0, "FlymeFlashLampEffectsAdapter"

    const-string/jumbo v0, "stopFlashEffects don\'t support flash lamp effects!"

    .line 179
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
