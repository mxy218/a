.class Lcom/android/keyguard/KeyguardUpdateMonitor$10;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
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

    .line 1251
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2

    .line 1331
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 6

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onAuthenticationError"

    .line 1310
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7d

    .line 1316
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5002(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 1317
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v1

    add-int/2addr v1, v2

    rem-int/2addr v1, v0

    if-nez v1, :cond_49

    .line 1318
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4108(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    .line 1320
    :cond_49
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 1321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->closeHBM()V

    .line 1323
    :cond_5a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->detachWindow()V

    .line 1324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->attachFakeWindow()V

    .line 1325
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    :cond_7d
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onAuthenticationFailed"

    .line 1256
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4108(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    .line 1258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1259
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRebootFingerprint()V

    return-void

    .line 1263
    :cond_22
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const/4 v0, 0x0

    const-string v1, "persist.sys.meizu.fingerprint"

    .line 1266
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1268
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectAODFingerprintUnlockInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3

    .line 1301
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 4

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onAuthenticationSucceeded"

    .line 1275
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 1276
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1279
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRebootFingerprint()V

    .line 1280
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1281
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void

    .line 1284
    :cond_2d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4602(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 1286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4700(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 1289
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4800(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    const-string p1, "persist.sys.meizu.fingerprint"

    .line 1290
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 1291
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p1

    if-nez p1, :cond_63

    .line 1292
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectAODFingerprintUnlockInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 1295
    :cond_63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
