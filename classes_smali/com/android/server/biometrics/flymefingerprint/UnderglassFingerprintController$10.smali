.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;II)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 839
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iput p2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->val$x:I

    iput p3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 842
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 843
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->val$x:I

    iget v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->val$y:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->setParams(II)V

    .line 844
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 845
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$10;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    :cond_41
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v1
.end method
