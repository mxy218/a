.class Lcom/android/keyguard/KeyguardUpdateMonitor$16;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 2

    .line 3839
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$16;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 3842
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$16;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6602(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 3843
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$16;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    const v0, 0x3e99999a  # 0.3f

    const/16 v1, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->animateFODIcon(FI)I

    return-void
.end method
