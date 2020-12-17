.class Lcom/android/systemui/keyguard/KeyguardViewMediator$10;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUpAndStartActivityAfterKeyguardExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$gestureType:I


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .registers 3

    .line 2929
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->val$gestureType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->val$gestureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", GestureManager.GESTURE_ERROR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->val$gestureType:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;IZ)V

    return-void
.end method
