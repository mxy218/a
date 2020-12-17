.class Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$500(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$500(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$500(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$500(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V

    return-void
.end method
