.class Lcom/android/server/location/ActivityRecognitionProxy$1;
.super Lcom/android/server/ServiceWatcher;
.source "ActivityRecognitionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ActivityRecognitionProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .registers 17

    .line 87
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onBind$0(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/os/IBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {p0, p1}, Lcom/android/server/location/ActivityRecognitionProxy;->access$000(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected onBind()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    new-instance v1, Lcom/android/server/location/-$$Lambda$ActivityRecognitionProxy$1$d2hvjp-Sk2zwb2N0mtEiubZ0jBE;

    invoke-direct {v1, v0}, Lcom/android/server/location/-$$Lambda$ActivityRecognitionProxy$1$d2hvjp-Sk2zwb2N0mtEiubZ0jBE;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/ActivityRecognitionProxy$1;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 91
    return-void
.end method
