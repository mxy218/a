.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8iaDxlkHjmysoUP7KwjUaBzkBiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method public synthetic constructor <init>(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8iaDxlkHjmysoUP7KwjUaBzkBiQ;->f$0:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8iaDxlkHjmysoUP7KwjUaBzkBiQ;->f$0:Landroid/service/notification/ZenModeConfig$ZenRule;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$fireManualRuleChanged$4(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method
