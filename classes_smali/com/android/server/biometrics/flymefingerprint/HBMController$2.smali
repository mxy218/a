.class Lcom/android/server/biometrics/flymefingerprint/HBMController$2;
.super Landroid/database/ContentObserver;
.source "HBMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/HBMController;->registerTestDimlayerAlphaContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 125
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$300(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V

    .line 126
    return-void
.end method
