.class public Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;
.super Ljava/lang/Object;
.source "FlymeFileTypeMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;,
        Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$FileTypeMeasureListener;,
        Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;,
        Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;,
        Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;

.field private mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

.field private mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field private mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$FileTypeMeasureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlymeFileTypeMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;-><init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    .line 43
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;-><init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$1;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMainHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;

    .line 44
    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mWeakListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMainHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Landroid/app/usage/StorageStatsManager;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 62
    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->stopMeasure()V

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public startMeasure(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$FileTypeMeasureListener;)V
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMeasure listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFileTypeMeasuetment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 50
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_30

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_30
    return-void
.end method

.method public stopMeasure()V
    .registers 3

    const-string v0, "FlymeFileTypeMeasuetment"

    const-string/jumbo v1, "stopMeasure"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->mWeakListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
