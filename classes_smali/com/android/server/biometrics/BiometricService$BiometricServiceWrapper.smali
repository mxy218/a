.class final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;
.super Landroid/hardware/biometrics/IBiometricService$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BiometricServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V
    .registers 3

    .line 621
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 639
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 640
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 643
    if-eqz p8, :cond_13

    .line 644
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v3}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 648
    :cond_13
    const-string v3, "BiometricService"

    if-ne p4, v2, :cond_1d

    .line 650
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService;->access$1700(Lcom/android/server/biometrics/BiometricService;)V

    goto :goto_3e

    .line 653
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is requesting authentication of userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 658
    :goto_3e
    if-eqz p1, :cond_c6

    if-eqz p5, :cond_c6

    if-eqz p6, :cond_c6

    if-nez p7, :cond_48

    goto/16 :goto_c6

    .line 663
    :cond_48
    nop

    .line 664
    const/4 v3, 0x0

    const-string v4, "from_confirm_device_credential"

    invoke-virtual {p7, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 665
    if-eqz v4, :cond_57

    .line 666
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 671
    :cond_57
    nop

    .line 672
    const-string/jumbo v4, "use_default_title"

    invoke-virtual {p7, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 673
    if-eqz v3, :cond_83

    .line 674
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v3}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 676
    const-string/jumbo v3, "title"

    invoke-virtual {p7, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 677
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 678
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10400fc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 677
    invoke-virtual {p7, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 686
    :cond_83
    const-string v3, "allow_device_credential"

    invoke-virtual {p7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 687
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;

    invoke-direct {p2, p0, p5, p4, p7}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/hardware/biometrics/IBiometricServiceReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    return-void

    .line 715
    :cond_9a
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 716
    iput-object p1, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 717
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 718
    iput p4, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 719
    iput-object p5, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 720
    iput-object p6, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 721
    iput-object p7, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 722
    iput v0, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 723
    iput v1, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 724
    iput v2, v3, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 725
    iput-object p8, v3, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 727
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 728
    return-void

    .line 659
    :cond_c6
    :goto_c6
    const-string p1, "Unable to authenticate, one or more null arguments"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method public canAuthenticate(Ljava/lang/String;I)I
    .registers 5

    .line 772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canAuthenticate: User="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Caller="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 772
    const-string v0, "BiometricService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    if-eq p2, p1, :cond_2e

    .line 776
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    goto :goto_33

    .line 778
    :cond_2e
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$1700(Lcom/android/server/biometrics/BiometricService;)V

    .line 781
    :goto_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 784
    :try_start_37
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1, p2}, Lcom/android/server/biometrics/BiometricService;->access$1800(Lcom/android/server/biometrics/BiometricService;I)Landroid/util/Pair;

    move-result-object p1

    .line 785
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_4a

    .line 787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    nop

    .line 789
    return p1

    .line 787
    :catchall_4a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1700(Lcom/android/server/biometrics/BiometricService;)V

    .line 764
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 765
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 766
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 767
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 768
    return-void
.end method

.method public hasEnrolledBiometrics(I)Z
    .registers 7

    .line 794
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 798
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    :try_start_b
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 799
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/BiometricService$Authenticator;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$Authenticator;->mAuthenticator:Landroid/hardware/biometrics/BiometricAuthenticator;

    invoke-interface {v4, p1}, Landroid/hardware/biometrics/BiometricAuthenticator;->hasEnrolledTemplates(I)Z

    move-result v4
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_35

    if-eqz v4, :cond_2d

    .line 800
    nop

    .line 804
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 800
    const/4 p1, 0x1

    return p1

    .line 798
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 804
    :cond_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 805
    nop

    .line 806
    return v2

    .line 804
    :catchall_35
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public synthetic lambda$authenticate$0$BiometricService$BiometricServiceWrapper(Landroid/hardware/biometrics/IBiometricServiceReceiver;ILandroid/os/Bundle;)V
    .registers 6

    .line 688
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 690
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-nez v1, :cond_30

    .line 692
    const/16 p2, 0xe

    :try_start_16
    iget-object p3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 694
    invoke-virtual {p3}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x10400fe

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 692
    invoke-interface {p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_26} :catch_27

    .line 698
    goto :goto_2f

    .line 696
    :catch_27
    move-exception p1

    .line 697
    const-string p2, "BiometricService"

    const-string p3, "Remote exception"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    :goto_2f
    return-void

    .line 701
    :cond_30
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1, p1}, Lcom/android/server/biometrics/BiometricService;->access$2202(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricServiceReceiver;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 703
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p1

    .line 706
    const-string p2, "android.app.extra.BIOMETRIC_PROMPT_BUNDLE"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 708
    const/high16 p2, 0x8080000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 711
    return-void
.end method

.method public onConfirmDeviceCredentialError(ILjava/lang/String;)V
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 741
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 742
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 743
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 744
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 745
    return-void
.end method

.method public onConfirmDeviceCredentialSuccess()V
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 734
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 735
    return-void
.end method

.method public onReadyForAuthentication(IZI)V
    .registers 5

    .line 624
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 626
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 627
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 628
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 629
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 630
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 631
    return-void
.end method

.method public registerCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 4

    .line 754
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 757
    return-void
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    :try_start_15
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 816
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledOnKeyguard()Z

    move-result v1

    .line 817
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 815
    invoke-interface {p1, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(Landroid/hardware/biometrics/BiometricSourceType;ZI)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_28} :catch_29

    .line 820
    goto :goto_31

    .line 818
    :catch_29
    move-exception p1

    .line 819
    const-string v0, "BiometricService"

    const-string v1, "Remote exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    :goto_31
    return-void
.end method

.method public resetLockout([B)V
    .registers 6

    .line 838
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 841
    :try_start_9
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2000(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 842
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2000(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V

    .line 844
    :cond_1a
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2100(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/face/IFaceService;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 845
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2100(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/face/IFaceService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/face/IFaceService;->resetLockout([B)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_2e
    .catchall {:try_start_9 .. :try_end_2b} :catchall_2c

    goto :goto_36

    .line 850
    :catchall_2c
    move-exception p1

    goto :goto_3b

    .line 847
    :catch_2e
    move-exception p1

    .line 848
    :try_start_2f
    const-string v2, "BiometricService"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2c

    .line 850
    :cond_36
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 851
    nop

    .line 852
    return-void

    .line 850
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setActiveUser(I)V
    .registers 6

    .line 825
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 826
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 828
    const/4 v2, 0x0

    :goto_a
    :try_start_a
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 829
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getAuthenticator()Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/biometrics/BiometricAuthenticator;->setActiveUser(I)V
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_2d

    .line 828
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 832
    :cond_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 833
    nop

    .line 834
    return-void

    .line 832
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
