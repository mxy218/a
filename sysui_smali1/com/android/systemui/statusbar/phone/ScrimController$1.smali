.class Lcom/android/systemui/statusbar/phone/ScrimController$1;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$keyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .registers 3

    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$keyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$keyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$keyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 205
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    .line 204
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$100(Lcom/android/systemui/statusbar/phone/ScrimController;ZJ)V

    return-void
.end method
