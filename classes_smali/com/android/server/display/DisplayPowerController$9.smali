.class Lcom/android/server/display/DisplayPowerController$9;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field final synthetic val$callback:Landroid/os/IBrightnessChangedCallback;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/DisplayPowerController;

    .line 2375
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$9;->val$callback:Landroid/os/IBrightnessChangedCallback;

    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController$9;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2379
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$9;->val$callback:Landroid/os/IBrightnessChangedCallback;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$9;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2382
    goto :goto_f

    .line 2380
    :catch_e
    move-exception v0

    .line 2383
    :goto_f
    return-void
.end method
