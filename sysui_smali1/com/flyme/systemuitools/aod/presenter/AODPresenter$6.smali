.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$6;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 301
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$6;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$6;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 305
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$6;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->registerSensor()V

    :cond_15
    return-void
.end method
