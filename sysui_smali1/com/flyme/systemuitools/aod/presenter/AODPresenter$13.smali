.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 2

    .line 1216
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChange(F)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_25

    .line 1219
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isProximitySensorClose()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1220
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$3200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    .line 1221
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->cancelDelayBroadcast()V

    goto :goto_3c

    :cond_25
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3c

    .line 1223
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    .line 1224
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->cancelDelayBroadcastForMotion()V

    :cond_3c
    :goto_3c
    return-void
.end method
