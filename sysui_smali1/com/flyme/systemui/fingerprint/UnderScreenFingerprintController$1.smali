.class Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController$1;
.super Landroid/os/Handler;
.source "UnderScreenFingerprintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x212

    if-eq v0, v1, :cond_7

    goto :goto_2c

    .line 221
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_c

    return-void

    .line 224
    :cond_c
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->access$000(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;Z)V

    .line 225
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->access$100(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintChange(Z)V

    :goto_2c
    return-void
.end method
