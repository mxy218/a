.class Lcom/android/keyguard/KeyguardUpdateMonitor$11;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


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

    .line 1337
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2

    .line 1363
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3

    .line 1358
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 1341
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3

    .line 1353
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .registers 3

    const-string v0, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 1346
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1347
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1348
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
