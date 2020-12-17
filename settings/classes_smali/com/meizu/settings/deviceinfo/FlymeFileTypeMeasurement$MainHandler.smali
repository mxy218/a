.class Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;
.super Landroid/os/Handler;
.source "FlymeFileTypeMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$1;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;-><init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$100(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$100(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 70
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$100(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$FileTypeMeasureListener;

    invoke-interface {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$FileTypeMeasureListener;->onFileTypeMeasureFinshed(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;)V

    :cond_27
    return-void
.end method
