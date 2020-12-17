.class Lcom/android/systemui/keyguard/KeyguardViewMediator$1$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->onShowBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V
    .registers 2

    .line 601
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 604
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    return-void
.end method
