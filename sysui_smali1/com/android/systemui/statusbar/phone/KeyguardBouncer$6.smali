.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;


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

    .line 893
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecurityLock()V
    .registers 1

    .line 896
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    return-void
.end method

.method public onSecurityUnlock()V
    .registers 1

    .line 901
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    return-void
.end method
