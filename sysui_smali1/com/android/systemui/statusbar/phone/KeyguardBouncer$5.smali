.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 2

    .line 886
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerSaveModeChanged(Z)V
    .registers 2

    .line 889
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    return-void
.end method
