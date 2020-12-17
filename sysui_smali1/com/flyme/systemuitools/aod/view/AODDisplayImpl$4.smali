.class Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;
.super Ljava/lang/Object;
.source "AODDisplayImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->enterAODMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$500(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 149
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$000(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->animateFODIcon(FI)I

    .line 150
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 151
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$000(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$4;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$100(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getFingerprintColors()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->setFingerprintIconColor([I)V

    :cond_31
    return-void
.end method
