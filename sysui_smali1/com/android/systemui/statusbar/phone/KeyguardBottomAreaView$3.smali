.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V
    .registers 3

    .line 524
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 537
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 538
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v1, 0x3

    .line 539
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 542
    :try_start_c
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 543
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 545
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    .line 546
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 547
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 542
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_41} :catch_42

    goto :goto_4c

    :catch_42
    move-exception v0

    const-string v1, "StatusBar/KeyguardBottomAreaView"

    const-string v2, "Unable to start camera activity"

    .line 549
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x60

    .line 551
    :goto_4c
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$600(I)Z

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
