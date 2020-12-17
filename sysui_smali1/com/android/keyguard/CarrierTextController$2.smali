.class Lcom/android/keyguard/CarrierTextController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierTextController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierTextController;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo()V
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefreshCarrierInfo(), mTelephonyCapable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    .line 104
    invoke-static {v1}, Lcom/android/keyguard/CarrierTextController;->access$100(Lcom/android/keyguard/CarrierTextController;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierTextController"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 6

    const-string p1, "CarrierTextController"

    if-ltz p2, :cond_59

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {v0}, Lcom/android/keyguard/CarrierTextController;->access$200(Lcom/android/keyguard/CarrierTextController;)I

    move-result v0

    if-lt p2, v0, :cond_d

    goto :goto_59

    .line 126
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {v1, p3}, Lcom/android/keyguard/CarrierTextController;->access$300(Lcom/android/keyguard/CarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1, p3}, Lcom/android/keyguard/CarrierTextController;->access$300(Lcom/android/keyguard/CarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    sget-object p3, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    if-ne p1, p3, :cond_40

    .line 128
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$400(Lcom/android/keyguard/CarrierTextController;)[Z

    move-result-object p1

    const/4 p3, 0x1

    aput-boolean p3, p1, p2

    .line 129
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    goto :goto_58

    .line 130
    :cond_40
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$400(Lcom/android/keyguard/CarrierTextController;)[Z

    move-result-object p1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_58

    .line 131
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$400(Lcom/android/keyguard/CarrierTextController;)[Z

    move-result-object p1

    const/4 p3, 0x0

    aput-boolean p3, p1, p2

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    :cond_58
    :goto_58
    return-void

    .line 121
    :cond_59
    :goto_59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimStateChanged() - slotId invalid: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mTelephonyCapable: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    .line 122
    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$100(Lcom/android/keyguard/CarrierTextController;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTelephonyCapable(Z)V
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTelephonyCapable() mTelephonyCapable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierTextController"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {v0, p1}, Lcom/android/keyguard/CarrierTextController;->access$102(Lcom/android/keyguard/CarrierTextController;Z)Z

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    return-void
.end method
