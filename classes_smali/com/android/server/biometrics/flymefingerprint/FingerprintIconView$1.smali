.class Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView$1;
.super Ljava/lang/Object;
.source "FingerprintIconView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->drawIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    .line 63
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView$1;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"  # Landroid/view/SurfaceHolder;
    .param p2, "format"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I

    .line 80
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"  # Landroid/view/SurfaceHolder;

    .line 73
    const-string v0, "FingerprintIconView"

    const-string/jumbo v1, "surfaceCreated.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView$1;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->access$000(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->access$100(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;Z)V

    .line 75
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"  # Landroid/view/SurfaceHolder;

    .line 67
    const-string v0, "FingerprintIconView"

    const-string/jumbo v1, "surfaceDestroyed.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView$1;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->access$002(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;Z)Z

    .line 69
    return-void
.end method
