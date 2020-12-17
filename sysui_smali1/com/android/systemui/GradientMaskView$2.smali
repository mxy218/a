.class Lcom/android/systemui/GradientMaskView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "GradientMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GradientMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/GradientMaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/GradientMaskView;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/systemui/GradientMaskView$2;->this$0:Lcom/android/systemui/GradientMaskView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeFingerprintVisibility(Z)V
    .registers 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fingerprint visible change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GradientMaskView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p0, p0, Lcom/android/systemui/GradientMaskView$2;->this$0:Lcom/android/systemui/GradientMaskView;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/GradientMaskView;->doMaskViewChangeAnimate(ZI)V

    return-void
.end method
