.class Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;Lcom/android/systemui/statusbar/phone/RotationButtonController$1;)V
    .registers 3

    .line 410
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityRequestedOrientationChanged$0$RotationButtonController$TaskStackListenerImpl(ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    .line 436
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne p2, p1, :cond_a

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    :cond_a
    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .registers 4

    .line 433
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;

    .line 434
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$TaskStackListenerImpl$zCjhcFpUTQGdzdQEgIMUjTrjPZU;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$TaskStackListenerImpl$zCjhcFpUTQGdzdQEgIMUjTrjPZU;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;I)V

    .line 435
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .registers 2

    .line 426
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 2

    .line 421
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method
