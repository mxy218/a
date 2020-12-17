.class public Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarRemoteInputCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChallengeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 268
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p1

    if-eq p2, p1, :cond_31

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 271
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->onWorkChallengeChanged()V

    :cond_31
    return-void
.end method
