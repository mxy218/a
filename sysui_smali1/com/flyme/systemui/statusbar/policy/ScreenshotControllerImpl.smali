.class public Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;
.super Ljava/lang/Object;
.source "ScreenshotControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenshotController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsCapturing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private SimulatePrintScreenkey(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    const-string v0, "ScreenshotController"

    const-string v1, "ScreenshotTile down"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$3;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "ScreenshotTile"

    .line 96
    invoke-static {p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)Landroid/os/Handler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->SimulatePrintScreenkey(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    .line 75
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
    .registers 2

    .line 80
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mIsCapturing:Z

    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;->onScreenshotStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 19
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    return-void
.end method

.method public capturePicture()V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isCapturing()Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mIsCapturing:Z

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 19
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    return-void
.end method

.method public takeScreenShot()V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
