.class Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$1;
.super Ljava/lang/Object;
.source "AODDisplayImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;
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

    .line 73
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$000(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->animateFODIcon(FI)I

    .line 77
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 78
    fill-array-data v0, :array_2c

    .line 79
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$000(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->setFingerprintIconColor([I)V

    .line 81
    :cond_21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$100(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$200(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;Landroid/content/Context;)V

    return-void

    nop

    :array_2c
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
