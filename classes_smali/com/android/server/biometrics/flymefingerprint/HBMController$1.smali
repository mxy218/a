.class Lcom/android/server/biometrics/flymefingerprint/HBMController$1;
.super Ljava/lang/Object;
.source "HBMController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/HBMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 85
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$1;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$1;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    const-string v1, "/sys/class/meizu/main_tp/act_mode"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$200(Lcom/android/server/biometrics/flymefingerprint/HBMController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    return-void
.end method
