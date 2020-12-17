.class Lcom/android/systemui/doze/DozeUi$2;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeUi;->pulseWhileDozing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeUi;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeUi;I)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi$2;->this$0:Lcom/android/systemui/doze/DozeUi;

    iput p2, p0, Lcom/android/systemui/doze/DozeUi$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi$2;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeUi;->access$200(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method public onPulseStarted()V
    .registers 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$2;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeUi;->access$200(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    .line 99
    iget p0, p0, Lcom/android/systemui/doze/DozeUi$2;->val$reason:I

    const/16 v1, 0x8

    if-ne p0, v1, :cond_f

    .line 100
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_11

    .line 101
    :cond_f
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 98
    :goto_11
    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
