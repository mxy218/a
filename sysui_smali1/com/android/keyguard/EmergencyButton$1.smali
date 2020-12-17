.class Lcom/android/keyguard/EmergencyButton$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .registers 3

    .line 83
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method
