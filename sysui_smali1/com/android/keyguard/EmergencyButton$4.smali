.class Lcom/android/keyguard/EmergencyButton$4;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V
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

    .line 195
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButton;->access$200(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    return-void
.end method
