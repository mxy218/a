.class Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$5;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->getLockoutTimeCount()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 494
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V

    .line 498
    return-void
.end method
