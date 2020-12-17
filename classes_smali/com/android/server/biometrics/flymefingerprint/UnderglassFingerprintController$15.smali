.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setSystemAllAnimationEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 1057
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iput-boolean p2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1060
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->val$enable:Z

    const-string/jumbo v1, "transition_animation_scale"

    const-string/jumbo v2, "window_animation_scale"

    const/4 v3, 0x0

    if-eqz v0, :cond_48

    .line 1061
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_24

    .line 1062
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)F

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1064
    :cond_24
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3d

    .line 1065
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1068
    :cond_3d
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3302(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;F)F

    .line 1069
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3402(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;F)F

    goto :goto_5a

    .line 1071
    :cond_48
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1072
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$15;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1074
    :goto_5a
    return-void
.end method
