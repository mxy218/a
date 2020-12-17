.class final Lcom/android/systemui/assist/AssistHandleOffBehavior;
.super Ljava/lang/Object;
.source "AssistHandleOffBehavior.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .registers 3

    .line 36
    invoke-interface {p2}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    return-void
.end method
